*** Settings ***
Documentation       keywords referente aos testes ao menu Pratice Form

Resource            ../../config/package.robot
Resource            ../elements/pratice-form.robot


*** Keywords ***
Dado que estou na pagina automacao-pratice-form
    #Debug
    Title Should Be    ${HOME.TITLE}
    Wait Until Element Is Visible    ${HOME.MENU}

Quando realizo o preenchimento dos dados cadastrais
    ${NAME}=    FakerLibrary.First Name
    Input Text    ${USER.firstName}    ${NAME}

    ${LAST_NAME}=    FakerLibrary.Last Name
    Input Text    ${USER.lastName}    ${LAST_NAME}

    ${EMAIL}=    FakerLibrary.Email
    Input Text    ${USER.userEmail}    ${EMAIL}

    Click Element    ${GENDER.MALE}

    Input Text    ${USER.userNumber}    7399999999

E informo a data de aniversário
    Click Element    ${USER.dateOfBirthInput}
    Click Element    xpath://div[@id="dateOfBirth"]//option[@value="${DATE.ANO}"]
#    Click Element    xpath://div[@id="dateOfBirth"]//option[text()="${DATE.MES}"]
#    Click Element    xpath://div[@class="react-datepicker__day react-datepicker__day--0${DATE.DIA}"]
    Press Keys    ${USER.dateOfBirthInput}    RETURN

    Input Text    ${USER.subjectsInput}    Accounting
    Press Keys    ${USER.subjectsInput}    RETURN

E marco as opções de hobbies
    Click Element    ${HOBBIES.SPORT}
    Click Element    ${HOBBIES.READING}
    Click Element    ${HOBBIES.MUSIC}

    Element Should Be Enabled    ${HOBBIES.SPORT}
    Element Should Be Enabled    ${HOBBIES.READING}
    Element Should Be Enabled    ${HOBBIES.MUSIC}

E realizo upload de imagem
    Wait Until Element Is Visible    uploadPicture
    Choose File    uploadPicture    ${EXECDIR}${FILE.IMG}
    Sleep    2

E preencho o endereço
    ${ADDRESS}=    FakerLibrary.Address
    Input Text    ${USER.currentAddress}    ${ADDRESS}

E seleciono o Estado
    Execute Javascript    window.scrollTo(0,1600)
    Click Element    ${USER.state}
    Click Element    xpath://div[@id="stateCity-wrapper"]//div[text()="NCR"]

E seleciono a Cidade
    Click Element    ${USER.city}
    Click Element    xpath://div[@id="stateCity-wrapper"]//div[text()="Delhi"]

E submeto o cadastro
    Sleep    2
    Execute Javascript    document.body.style.zoom="90%"
    Execute Javascript    window.scrollTo(0,1600)
    Page Should Contain Element    ${SUBMIT}
    #Click Element    ${SUBMIT}
    Execute Javascript    document.querySelector("button[id='submit']").click();

Então o cadastro é efetuado com sucesso
    Sleep    2
    Capture Page Screenshot
    Page Should Contain Element    ${MODAL}
    Execute Javascript    document.querySelector("button[id='closeLargeModal']").click();
    Sleep    1
