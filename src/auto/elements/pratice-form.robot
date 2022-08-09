*** Settings ***
Documentation       Mapeamento dos elementos para realizar o cadastro


*** Variables ***
&{HOME}
...             TITLE=ToolsQA
...             MENU=//span[contains(.,'Practice Form')]
...             BTN_SUBMIT=submit

&{GENDER}
...             MALE=//label[contains(.,'Male')]
...             FEMALE=//label[contains(.,'Female')]
...             OTHER=//label[contains(.,'Other')]

&{HOBBIES}
...             SPORT=//label[contains(.,'Sports')]
...             READING=//label[contains(.,'Reading')]
...             MUSIC=//label[contains(.,'Music')]

&{FILE}
...             IMG=\\src\\auto\\image\\prime.jpg
&{USER}
...             hobbies-checkbox-1=hobbies-checkbox-1
...             firstName=firstName
...             lastName=lastName
...             userEmail=userEmail
...             userNumber=userNumber
...             dateOfBirthInput=dateOfBirthInput
...             currentAddress=currentAddress
...             subjectsInput=subjectsInput
...             state=state
...             city=city
...             submit=submit

${SUBMIT}
...             XPath=//button[@type='submit']

&{DATE}
...             DIA=14
...             MES=01
...             ANO=2000

${MODAL}        XPath=//*[@id="example-modal-sizes-title-lg"]
