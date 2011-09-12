#!/bin/sh
# usage ./log_to_file.sh some_log something file.log

echo [`date`] $@|tee -a ${!#}
