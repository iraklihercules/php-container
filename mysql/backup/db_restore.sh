#!/usr/bin/env bash

mysql -u test -ptest -h localhost superstar < /backup/superstar_dump.sql
