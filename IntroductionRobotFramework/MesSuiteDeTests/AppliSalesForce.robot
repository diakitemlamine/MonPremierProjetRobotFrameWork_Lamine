*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${PAGE_WEB}     https://login.salesforce.com
${NAVIGATEUR}    chrome
${USER_NAME}    diakitemlamine-cwkg@force.com
${PSWD}    Diakis2275    

*** Test cases ***
Open Browser
    Open Browser    ${PAGE_WEB}    ${NAVIGATEUR}
Input Username
    Input Text    id=username    ${USER_NAME}
    Input Text    id=password    ${PSWD}   
Cliquer bouton Login
    Click Button    id=Login
Fermer le navigateur
    Close Browser