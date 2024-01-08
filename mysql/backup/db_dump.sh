#!/usr/bin/env bash

mysqldump --no-tablespaces -u test -ptest superstar > /backup/superstar_dump.sql
