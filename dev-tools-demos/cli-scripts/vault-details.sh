#!/bin/zsh

# This script will loop through all vaults the currently-logged-in user has access to. 
# For each vault, it will provide the vault name, the number of items in the vault
# the last time the vault contents were updated, and list which users and groups have access
# to the vault along with their permissions. 

for vault in $(op vault list --group Owners --format=json | jq --raw-output '.[] .id')
do
        echo ""
        echo "**************Vault Details**************"
        op vault get $vault --format=json | jq -r '.|{name, items, updated_at}'
        echo ""
        echo "**************Users**************"
        op vault user list $vault
        echo ""
        echo "**************Groups**************"
        op vault group list $vault
        echo ""
        echo "*****************************************"
        echo ""
        echo ""
done