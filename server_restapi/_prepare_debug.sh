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

cp ./source/.env ./debug/
cp -a ./source/* ./debug/

cd debug

npm install

npm start

cd ..