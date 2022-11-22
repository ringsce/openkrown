#pragma region
#include "cl_logo.hpp"
#pragma endregion

// main.c, build with gcc -o main main.c foo.o
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include <mach-o/getsect.h>

int main() {
    // finding the filename of the running binary is left as an exercise to the reader
    char *filename = "main";

    const struct section_64 *sect = getsectbyname("binary", "foo_bin");
    if (sect == NULL) {
        exit(1);
    }

    char *buffer = calloc(1, sect->size+1);
    int fd = open(filename, O_RDONLY);
    if (fd < 0) {
        exit(1);
    }
    lseek(fd, sect->offset, SEEK_SET);
    if (read(fd, buffer, sect->size) != sect->size) {
        close(fd);
        exit(1);
    }

    printf("%s", buffer);
}