#!/bin/bash
curdir=`pwd`
openflexo_dir=`dirname "$0"`
cd "$openflexo_dir";

java -classpath $openflexo_dir/lib/*:$openflexo_dir/deps/*  @main.class@