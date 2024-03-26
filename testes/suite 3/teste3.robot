*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Dado que eu acesso o site dos correios
    Open Browser    https://www.correios.com.br/
    Close Browser 
*** Test Cases ***
Entrar no site
    Dado que eu acesso o site dos correios

