#!/bin/sh

mvn javadoc:aggregate
cp -rf target/site/apidocs/* ../javalite.github.io/activejdbc/
cd ../javalite.github.io/activejdbc/
git add .
git commit -m "update JavaDoc"
git push origin master
