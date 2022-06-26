***Settings***
Library     SeleniumLibrary       
Variables   ../Resouces/LoginLocator.yaml
Variables   ../Resouces/RegisterLocator.yaml
Variables   ../Resouces/contactus.yaml
suite Setup      Open Browser        ${base_url}     ${base_type}
suite Teardown   Close Browser 


*** Variables ***
${base_url}     http://automationpractice.com/
${base_type}    gc

***Test Cases***
login user
    Click Element                       ${sign_in}   
    Input Text                          ${email_login}           fadhil@gmail.com
    Input Text                          ${password_login}        asdfasdf
    Click Element                       ${button_login}  
    Element Should Be Visible           ${verifikasi}   

contact us
    Click Element                       ${contact}
    Select From List By Index           ${cs}                    1
    Select From List By Index           ${order}                 1
    Input Text                          ${message}               Assalamualaikumm
    Click Element                       ${send}
    Element Should Be Visible           ${verifikasi3}
