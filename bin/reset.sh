#!/usr/bin/env bash
git checkout mock.txt
git reset --hard $(git log --reverse --format=%H | head -1)
