#!/bin/sh

echo "This Shell Script will install dependencies for cocos2d-x"
echo "This Script will use 'sudo'"
echo -n "Are you continue? (y/n) "
read answer
if echo "$answer" | grep -iq "^y" ;then
    echo "It will take few minutes"
else
    exit
fi

DEPENDS='libX11-devel'
DEPENDS+=' libXmu-devel'
DEPENDS+=' mesa-libGLU-devel'
DEPENDS+=' gl2ps-devel'
DEPENDS+=' libXi-devel'
DEPENDS+=' libzip-devel'
DEPENDS+=' libpng12-devel'
DEPENDS+=' libcurl-devel'
DEPENDS+=' fontconfig-devel'
DEPENDS+=' sqlite-devel'
DEPENDS+=' glew-devel'
DEPENDS+=' openssl-devel'
DEPENDS+=' gtk3-devel'
DEPENDS+=' binutils'

sudo dnf install -y $DEPENDS
