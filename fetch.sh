#!/bin/bash 
set -e

cd libs && wget https://www.lua.org/ftp/lua-5.4.4.tar.gz

tar xvf lua-5.4.4.tar.gz && rm -rf lua-5.4.4.tar.gz
