#!/bin/sh

# Copyright (c) 2023 Oracle and/or its affiliates.
#
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

if test "$1" = "8"
then
    echo "Building Oracle JDK 8 on Oracle Linux 8"
    docker build --file Dockerfile.ol8 --tag oracle/jdk:8-ol8 .
else
    echo "Building Oracle JDK 8 on Oracle Linux 7 slim"
    docker build --tag oracle/jdk:8-ol7 .
fi

