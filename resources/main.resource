*** Settings ***
###    Librarys    ###
Library    SeleniumLibrary
Library    ScreenCapLibrary

###    PAGES    ###
Resource    pages/home.resource
Resource    pages/cep.resource

###    GERAL    ###
Resource    data/geral.resource
Resource    data/base.resource

###    SHARED    ###
Resource    shared/setup_teardown.resource