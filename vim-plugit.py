#!/usr/bin/python3

###############################################################################
# Run this in a directory to create an empty vim plugin with
# filenames that match user input on first run.
# This file and its cohorts will delete itself after running.
###############################################################################

import os

# VARIABLES
directories = ['ftplugin', 'ftdetect', 'indent', 'syntax']
files = ['ftplugin.vim', 'ftdetect.vim', 'indent.vim', 'syntax.vim']


