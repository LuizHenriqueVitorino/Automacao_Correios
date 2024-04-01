*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

*** Keywords ***
Finaliza o teste
    Capture Page Screenshot    filename=../resources/screenshots/${TEST_NAME}.png
    Close Browser