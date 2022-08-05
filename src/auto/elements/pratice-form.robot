*** Settings ***
Documentation       Mapeamento dos elementos para realizar o cadastro


*** Variables ***
${MALE}         //input[@value='Male']

${FEMALE}       id:gender-radio-2

${OTHER}        id:gender-radio-3

${FILE}         c:\\image\\picture.png

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
