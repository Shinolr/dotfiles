#!/usr/bin/python3

import platform

def __lldb_init_module(debugger, dict):
    if platform.machine() == 'arm64':
        debugger.HandleCommand("command script import /opt/homebrew/opt/chisel/libexec/fbchisellldb.py")
    else:
        debugger.HandleCommand("command script import /usr/local/opt/chisel/libexec/fbchisellldb.py")
