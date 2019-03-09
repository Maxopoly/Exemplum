#!/bin/bash

#Author name to use in plugin.yml and for github link
author=Maxopoly
#Plugin name
pluginName=SuperNewPlugin
#Full group id, separated with dots, for example: com.github.maxopoly
groupId=com.github.kingdada
#Don't touch this
mainPluginClass="$pluginName"
mainPluginClass+="Plugin"

function replaceOccurences() {
	echo sed -i "s/$1/$2/g" pom.xml
	find src -type f -print0 | xargs -0 sed -i "s/$1/$2/g"
	sed -i "s/$1/$2/g" pom.xml
        sed -i "s/$1/$2/g" license.txt
}


replaceOccurences "GROUP_ID_REPLACE_ME" "$groupId"
replaceOccurences "AUTHOR_REPLACE_ME" "$author"
replaceOccurences "PLUGIN_NAME_REPLACE_ME" "$pluginName"
replaceOccurences "MAIN_PLUGIN_CLASS" "$mainPluginClass"

path=`echo "$groupId" | tr "." "/"`

mkdir -p -v "src/main/java/$path"

mv "src/main/java/MAIN_PLUGIN_CLASS.java" "src/main/java/$path/$mainPluginClass.java"

rm README.md
