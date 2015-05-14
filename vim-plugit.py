#!/usr/bin/python3

###############################################################################
# Run this in a directory to create an empty vim plugin with
# filenames that match user input on first run.
# This file and its cohorts will delete itself after running.
###############################################################################

import os

# VARIABLES
directories = ['ftplugin', 'ftdetect', 'indent', 'syntax']

pluginName = input('Enter the NAME of the plugin you wish to create:')
print('Enter the FILETYPE of the plugin you wish to create.')
pluginType = input('(for example- py):')

curDir = os.getcwd()
# os.rename('PLUGIN_NAME', pluginName)

for root, dirs, files in os.walk('PLUGIN_NAME'):
    for name in files:
        print(name)
    for name in dirs:
        print(name)
