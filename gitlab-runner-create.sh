#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then echo "write two args  'bash gitlab-runner-create.sh url registration-token'" && exit 1
fi

for ((i=1;i<10;i++)); do
  gitlab-runner register  --non-interactive \
                          --url $1 \
                          --registration-token $2 \
                          --executor shell --name runner00$i;
done
