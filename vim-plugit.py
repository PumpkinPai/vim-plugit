#!/usr/bin/python3

###############################################################################
# Run this in a directory to create an empty vim plugin with
# filenames that match user input on first run.
# This file and its cohorts will delete itself after running.
###############################################################################

import os

pluginName = input('Enter the NAME of the plugin you wish to create:')
print('Enter the FILETYPE of the plugin you wish to create.')
pluginType = input('(for example- py):')

curDir = os.getcwd()
# os.rename('PLUGIN_NAME', pluginName)

for root, dirs, files in os.walk('PLUGIN_NAME'):
    for name in files:
        # todo- need to set currentFile with path
        currentFile = os.path.join(root, name)
        print(os.path.join(root, name))
        vimFile = open(currentFile, 'r')
        vimTxt = vimFile.read()
        vimFile.close
        # replace keyword 'PLUGIN_TYPE' with user-supplied value
        vimTxt = vimTxt.replace('PLUGIN_TYPE', pluginType)
        print(vimTxt)
        '''
        vimFile = open(currentFile, 'w')
        vimFile.write(vimTxt)
        vimFile.close'''

        # os.rename(name, pluginType + '.vim')
        print(name + ' renamed to: ' + pluginType + '.vim')

# todo- cleanup (delete this, README.md, LICENSE, and .git folder)
