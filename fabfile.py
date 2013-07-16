"""Fabric commands"""
from fabric.api import local

def prepare_update():
    local('./build_page')

def update():
    prepare_update()
    local('scp index.html fantomas@willbreak.it:/home/fantomas/djangos/baccalaureat/')
