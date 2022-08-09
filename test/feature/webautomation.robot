*** Settings ***
Documentation       Aqui estão presentes os cenários de automação. \n
...                 Preenchimento do Formulario de Cadasatro de Estudantes.

Resource            ../../src/config/package.robot

Test Setup          Abrir sessão
Test Teardown       Fechar sessão


*** Test Cases ***
Cenario: Automação formulario de cadastro demoga.com\automacao-pratice-form
    [Tags]    cenario1
    #Debug
    Dado que estou na pagina automacao-pratice-form

    Quando realizo o preenchimento dos dados cadastrais

    E informo a data de aniversário

    E marco as opções de hobbies

    E realizo upload de imagem

    E preencho o endereço

    E seleciono o Estado

    E seleciono a Cidade

    E submeto o cadastro

    Então o cadastro é efetuado com sucesso
