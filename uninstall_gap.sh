#!/bin/bash

SCRIPT_DIR=$(cd $(dirname ${0}); pwd)
CURRENT_SHELL=$(basename "${SHELL}")
case "${CURRENT_SHELL}" in
    bash)
        RC_FILE="${HOME}/.bashrc"
        ;;
    zsh)
        RC_FILE="${HOME}/.zshrc"
        ;;
    ksh)
        RC_FILE="${HOME}/.kshrc"
        ;;
    tcsh)
        RC_FILE="${HOME}/.tcshrc"
        ;;
    *)
        echo "Unsupported shell: ${CURRENT_SHELL}"
        return 1
        ;;
esac

if [ -f ${SCRIPT_DIR}/gap ]; then
    rm ${SCRIPT_DIR}/gap
fi

if grep -q "export PATH=\${PATH}:${SCRIPT_DIR}" "${RC_FILE}"; then
    sed -i '' "s|export PATH=\${PATH}:${SCRIPT_DIR}||" "${RC_FILE}"
fi

source ${RC_FILE}