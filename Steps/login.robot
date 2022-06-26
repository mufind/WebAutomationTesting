***Settings***
Library     SeleniumLibrary       
Variables   ../Resouces/LoginLocator.yaml
Variables   ../Resouces/RegisterLocator.yaml
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