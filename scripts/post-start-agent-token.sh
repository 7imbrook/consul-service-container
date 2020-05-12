#!/bin/sh

set +e

until consul info 
do 
    sleep 5;
done

consul acl set-agent-token default $(cat $CONSUL_HTTP_TOKEN_FILE)