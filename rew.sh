#!/bin/bash

git filter-branch --env-filter '

oldEmail="gear.kn10ht@gmail.com"
newName="tora"
newEmail="gear.kn19ht@gmail.com"

if [ "$GIT_COMMITTER_EMAIL" = "$oldEmail" ]; then
    export GIT_COMMITTER_NAME="$newName"
    export GIT_COMMITTER_EMAIL="$newEmail"
fi

if [ "$GIT_AUTHOR_EMAIL" = "$oldEmail" ]; then
    export GIT_AUTHOR_NAME="$newName"
    export GIT_AUTHOR_EMAIL="$newEmail"
fi

' --tag-name-filter cat -- --branches --tags
