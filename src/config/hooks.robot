*** Settings ***
Documentation       Arquivo de Setup e Teardown

Library             SeleniumLibrary


*** Keywords ***
Abrir sessão
    Open Browser    url:blank    ${CONFIG.BROWSER.NOME}
    Go To    ${CONFIG.BROWSER.URL}
    #Execute Javascript    document.body.style.zoom="75%"
    Maximize Browser Window
    #Set Selenium Timeout    ${CONFIG.TIMEOUT}

Fechar sessão
    Capture Page Screenshot
    Close Browser
