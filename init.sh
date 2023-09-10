#!/bin/bash

EMAIL=''

while getopts e: OPTION
do
    case "${OPTION}" in
        e)
            EMAIL="${OPTARG}"
            ;;
        ?)
            ;;
    esac
done

if [[ "${OPTION}" = '' ]]
then
    echo 'Please input an email as identifier.'
    exit 1
fi

# Generate this SSH key.
ssh-keygen -t ed25519 -C "${EMAIL}"

# Start the SSH agent.
eval "$(ssh-agent -s)"

# Add the newly generated key to the SSH Agent.
ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub

exit 0
