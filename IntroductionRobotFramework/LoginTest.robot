*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
LogInTest
    [Documentation]    Ceci est un test de login/logout
    Open Browser    ${url}  ${navigateur}
    Maximize Browser Window  
    Input Text    id=txtUsername     &{loginDate}[username]                     #@{login}[0]   
    Input Password    id=txtPassword  &{loginDate}[password]                    #@{login}[1]  
    Click Button    id=btnLogin     
    Click Element    id=welcome  
    Wait Until Element Is Visible    link=Logout         
    Click Element    link=Logout  
    Log    Ceci est un test execute par %{username} dans %{os}     
    Log    Fin de test  
    
*** Variables ***
#Variables scalaires
${url}      https://opensource-demo.orangehrmlive.com/index.php/auth/login
${navigateur}    gc
#Variable liste
@{login}    Admin    admin123
#Variable dictionnaire
&{loginDate}    username=Admin    password=admin123