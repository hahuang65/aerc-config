#!/bin/sh

if [ $(uname) == "Darwin" ]
then
  CONFIG_DIR="${HOME}/Library/Preferences/aerc"
elif [ $(uname) == "Linux" ]
then
  CONFIG_DIR="${HOME}/.config/aerc"
else
  echo "OS $OS isn't supported. Aborting."
  exit 1
fi

mkdir -p ${CONFIG_DIR}
ln -sf "${PWD}/accounts.conf" "${CONFIG_DIR}/accounts.conf"
ln -sf "${PWD}/aerc.conf" "${CONFIG_DIR}/aerc.conf"
ln -sf "${PWD}/binds.conf" "${CONFIG_DIR}/binds.conf"

chmod 600 ${CONFIG_DIR}/accounts.conf
