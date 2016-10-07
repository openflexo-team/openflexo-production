#!/bin/bash
curdir=`pwd`
openflexo_dir=`dirname "$0"`
cd "$openflexo_dir";

java @vm.arg0@ @vm.arg1@ @vm.arg2@ @vm.arg3@ @vm.arg4@ -classpath $openflexo_dir/lib/*:$openflexo_dir/deps/*  @main.class@ @program.args@