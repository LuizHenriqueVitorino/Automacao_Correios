*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

*** Keywords ***
Finaliza o teste
    Take Screenshot    name=../resources/screenshots/${TEST_NAME}
    Close Browser