#include "zipper.h"

bool zipper_add_file(zipFile zfile, const char *filename)
{
    FILE          *f;
    unsigned char  buf[BUF_SIZE];
    int            ret;
    size_t         red;
    size_t         flen;

    if (zfile == NULL || filename == NULL)
        return false;

    f = fopen(filename, "r");
    if (f == NULL)
        return false;

    fseek(f, 0, SEEK_END);
    flen = ftell(f);
    rewind(f);

    ret = zipOpenNewFileInZip64(zfile, filename, NULL, NULL, 0, NULL, 0, NULL,
            Z_DEFLATED, Z_DEFAULT_COMPRESSION, (flen > 0xffffffff)?1:0);
    if (ret != ZIP_OK) {
        fclose(f);
        return false;
    }

    while ((red = fread(buf, sizeof(*buf), sizeof(buf), f)) > 0) {
        ret = zipWriteInFileInZip(zfile, buf, red);
        if (ret != ZIP_OK) {
            fclose(f);
            zipCloseFileInZip(zfile);
            return false;
        }
    }

    zipCloseFileInZip(zfile);
    return true;
}

bool zipper_add_buf(zipFile zfile, const char *zfilename, const unsigned char *buf, size_t buflen)
{
    int ret;

    if (zfile == NULL || buf == NULL || buflen == 0)
        return false;

    ret = zipOpenNewFileInZip64(zfile, zfilename, NULL, NULL, 0, NULL, 0, NULL,
            Z_DEFLATED, Z_DEFAULT_COMPRESSION, (buflen > 0xffffffff)?1:0);
    if (ret != ZIP_OK)
        return false;

    ret = zipWriteInFileInZip(zfile, buf, buflen);
    zipCloseFileInZip(zfile);
    return ret==ZIP_OK?true:false;
}
bool zipper_add_dir(zipFile zfile, const char *dirname)
{
    char   *temp;
    size_t  len;
    int     ret;

    if (zfile == NULL || dirname == NULL || *dirname == '\0')
        return false;

    len  = strlen(dirname);
    temp = calloc(1, len+2);
    memcpy(temp, dirname, len+2);
    if (temp[len-1] != '/') {
        temp[len] = '/';
        temp[len+1] = '\0';
    } else {
        temp[len] = '\0';
    }

    ret = zipOpenNewFileInZip64(zfile, temp, NULL, NULL, 0, NULL, 0, NULL, 0, 0, 0);
    if (ret != ZIP_OK)
        return false;
    free(temp);
    zipCloseFileInZip(zfile);
    return ret==ZIP_OK?true:false;
}