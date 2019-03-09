#!/bin/bash

author=Maxopoly
pluginName=SuperNewPlugin
groupId=com.github.kingdada
mainPluginClass="$groupId.$pluginNamePlugin"

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
