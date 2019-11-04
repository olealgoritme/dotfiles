#!/bin/bash

# -a append -f file -R recursive 
ctags-exuberant -a -f java_jdk_src.tags --language-force=java -R /usr/lib/jvm/openjdk-11/lib/
