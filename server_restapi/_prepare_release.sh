#!/usr/bin/env bash


# #############################################################################
#
# setup the enviroment

NPM_PACKAGES="${HOME}/.npm-packages"
prefix=${HOME}/.npm-packages
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
unset MANPATH
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# #############################################################################
#
# prepare module

echo preparing server_restapi,

mkdir -p ./release/

cp ./source/.env ./release/
cp -a ./source/* ./release/

mkdir -p ./release/common/

cp ../common/source/* ./release/common/

cd release

npm install

cd ..