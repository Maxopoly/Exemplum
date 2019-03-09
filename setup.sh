#!/bin/bash

author=TODO
pluginName=TODO
groupId=TODO


function replaceOccurences() {
	find src -type f -print0 | xargs -0 sed -i 's/$0/$1/g'
	sed -i 's/$0/$1/g' pom.xml
        sed -i 's/$0/$1/g' license.txt
}


replaceOccurences() "GROUP_ID_REPLACE_ME" "$groupId"
replaceOccurences() "AUTHOR_REPLACE_ME" "$author"
replaceOccurences() "PLUGIN_NAME_REPLACE_ME" "$pluginName"
