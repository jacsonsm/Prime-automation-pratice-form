*** Settings ***
Documentation       Arquivo de mapeamento de Arquivos e Bibliotecas

Library             SeleniumLibrary
Library             DebugLibrary
Library             FakerLibrary    locale=pt_BR
### hooks: Onde esta o setup e o teardown
Resource            hooks.robot
Variables           hooks.yaml
Resource            ../auto/keywords/kws_automation.robot
Resource            ../auto/elements/home.robot
Resource            ../auto/elements/pratice-form.robot
