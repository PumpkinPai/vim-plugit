#!/usr/bin/python3

###############################################################################
# Run this in a directory to create an empty vim plugin with
# filenames that match user input on first run.
# This file and its cohorts will delete itself after running.
###############################################################################

import os
import time

pluginType = ''
pluginName = input('Enter the NAME of the plugin you wish to create:')
print('Enter the FILETYPE of the plugin you wish to create.')
print('Note: must begin with a letter')
# vim functions need to start with uppercase letter
while pluginType == '' or pluginType[0].isnumeric():
    pluginType = input('(for example- py):').lower()
    plugTypeFunction = pluginType[0].upper() + pluginType[1:-1]

curDir = os.getcwd()

for root, dirs, files in os.walk('PLUGIN_NAME'):
    for name in files:
        if name.endswith('.vim'):
            # todo- need to set currentFile with path
            currentFile = os.path.join(root, name)
            fullPath = curDir + '/' + currentFile
            print(os.path.join(root, name))
            vimFile = open(currentFile, 'r')
            vimTxt = vimFile.read()
            vimFile.close
            # replace keyword 'PLUGIN_TYPE' with user-supplied value
            vimTxt = vimTxt.replace('PLUGIN_TYPE', pluginType)
            vimTxt = vimTxt.replace('PLUG_TYPE_FUNCTION', plugTypeFunction)
            # print(vimTxt)
            time.sleep(0.5)
            '''
            vimFile = open(currentFile, 'w')
            vimFile.write(vimTxt)
            vimFile.close'''

            # os.rename(fullPath, pluginType + '.vim')
            # print(name + ' renamed to: ' + pluginType + '.vim')
            time.sleep(0.5)

# os.rename('PLUGIN_NAME', pluginName)

# todo- cleanup (delete this, README.md, LICENSE, and .git folder)
