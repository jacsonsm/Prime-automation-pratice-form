*** Settings ***
Documentation       Aqui estarão presentes todos os cenários de automação WEB

Resource            ../../src/config/package.robot

Test Setup          Abrir sessão
Test Teardown       Fechar sessão


*** Test Cases ***
Cenario: Acessar o site demoga.com automacao-pratice-form
    [Tags]    cenario1
    #Debug
    Dado que esteja na pagina automacao-pratice-form
    Quando realizo o preenchimento dos dados cadastrais
    E seleciono genero Male
    E realizo upload de imagem
    E Submeter cadastro
    Então o cadastro foi efetuado com sucesso
