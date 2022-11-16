import zipfile

try:
    with zipfile.ZipFile("krown.mpq") as archive:
        archive.printdir()
except zipfile.BadZipFile as error:
     print(error)

try:
    with zipfile.ZipFile("bad_krown.mpq) as archive:
        archive.printdir()
except zipfile.BadZipFile as error:
    print(error)