#!/bin/bash
cd /mnt/wiki/serenade
git filter-branch -f --env-filter "GIT_AUTHOR_NAME='Sandy Maguire'; GIT_AUTHOR_EMAIL='sandy.g.maguire@gmail.com'; GIT_COMMITTER_NAME='Sandy Maguire'; GIT_COMMITTER_EMAIL='sandy.g.maguire@gmail.com';" HEAD
git push origin master
