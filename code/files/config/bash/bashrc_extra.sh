SCRIPT_DIR=~/.config/bash/bashrc.d

if [ -d ${SCRIPT_DIR} ]; then
    for script in $(find ${SCRIPT_DIR} -name "[0-9][0-9]-*[^~]" | sort)
    do
        [ -f ${scirpt} ] && source ${script}
    done
fi
