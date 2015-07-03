#!/bin/sh

cd ts_new
#files=`find -maxdepth 1 -type f -not -name "*.js"`
files="app.ts"
#echo "tsc --out app.js $files"
tsc -m commonjs -t es5 --emitDecoratorMetadata $files
#tsc --out app.js -m commonjs -t es5 --emitDecoratorMetadata $files
cd - #> /dev/null
yes | mv ts_new/app.js zstack_dashboard/static_new/app.js
