*** Settings ***
Documentation       Mapeamento dos elementos para realizar o cadastro


*** Variables ***
&{GENDER}
...             MALE=//label[contains(.,'Male')]
...             FEMALE=//label[contains(.,'Female')]
...             OTHER=//label[contains(.,'Other')]

&{HOBBIES}
...             SPORT=//label[contains(.,'Sports')]
...             READING=//label[contains(.,'Reading')]
...             MUSIC=//label[contains(.,'Music')]

&{FILE}
...             IMG=c:\\image\\picture.png
&{USER}
...             hobbies-checkbox-1=hobbies-checkbox-1
...             firstName=firstName
...             lastName=lastName
...             userEmail=userEmail
...             userNumber=userNumber
...             dateOfBirthInput=dateOfBirthInput
...             currentAddress=currentAddress
...             subjectsInput=subjectsInput
...             submit=submit

&{DATE}
...             DIA=14
...             MES=01
...             ANO=2000
