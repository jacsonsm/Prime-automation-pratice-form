*** Settings ***
Documentation       keywords referente aos testes ao menu Pratice Form

Resource            ../../config/package.robot
Resource            ../elements/pratice-form.robot


*** Keywords ***
Dado que esteja na tela automacao-pratice-form
    #Debug
    Title Should Be    ${HOME.TITLE}
    Wait Until Element Is Visible    ${HOME.MENU}

Quando realizar o preenchimento dos dados cadastrais
    ${NAME}=    FakerLibrary.First Name
    ${LAST_NAME}=    FakerLibrary.Last Name
    ${EMAIL}=    FakerLibrary.Email
    ${ADDRESS}=    FakerLibrary.Address

    Input Text    ${USER.firstName}    ${NAME}
    Input Text    ${USER.lastName}    ${LAST_NAME}
    Input Text    ${USER.userEmail}    ${EMAIL}
    #Click Button    ${MALE}
    Input Text    ${USER.userNumber}    7399999999
    #Input Text    ${USER.dateOfBirthInput}    08 Aug 2022
    Input Text    ${USER.subjectsInput}    Prime Control

    # Select From List By Value    ${USER.days}    ${DATE.DIA}
    # Select From List By Value    ${USER.months}    ${DATE.MES}
    # Select From List By Value    ${USER.years}    ${DATE.ANO}

    Input Text    ${USER.currentAddress}    ${ADDRESS}

    #Select From List By Value    ${USER.id_state}    10

E realizar upload de imagem
    Wait Until Element Is Visible    uploadPicture
    Choose File    uploadPicture    ${FILE}

# E Submeter cadastro
#    Click Button    ${USER.submit}

# Então conferir se o cadastro foi efetuado com sucesso
#    Wait Until Page Contains    ${}
#    Page Should Contain Element    ${}
