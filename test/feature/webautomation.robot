*** Settings ***
Documentation       Aqui estarão presentes todos os cenários de automação WEB

Resource            ../../src/config/package.robot

Test Setup          Abrir sessão
Test Teardown       Fechar sessão


*** Test Cases ***
Cenario: Acessar o site demoga.com automacao-pratice-form
    [Tags]    cenario1
    #Debug
    Dado que esteja na tela automacao-pratice-form
    Quando realizar o preenchimento dos dados cadastrais
    E realizar upload de imagem
    #E Submeter cadastro
    # Então conferir se o cadastro foi efetuado com sucesso
