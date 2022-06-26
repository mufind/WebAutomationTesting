***Settings***
Library     SeleniumLibrary       
Variables   ../Resouces/LoginLocator.yaml
Variables   ../Resouces/RegisterLocator.yaml
Variables   ../Resouces/orderLocator.yaml
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

order 1 barang
    Click Element                       ${home}
    Click Element                       ${quick_view}
    Click Element                       ${add_to_cart}
    Click Element                       ${checkout}
    Click Element                       ${checkout2}
    Click Element                       ${checkout3}
    Click Element                       ${agree}
    Click Element                       ${checkout4}
    Click Element                       ${pay}
    Click Element                       ${confirm}
