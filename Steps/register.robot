***Settings***
Library     SeleniumLibrary       
Variables   ../Resouces/RegisterLocator.yaml
suite Setup      Open Browser        ${base_url}     ${base_type}
suite Teardown   Close Browser 


*** Variables ***
${base_url}     http://automationpractice.com/
${base_type}    gc

***Test Cases***
Registrasi user
    Click Element                           ${sign_in}      
    Input Text                              ${create_acc}           fadhil@gmail.com
    Click Element                           ${button_create}
    Element Should Be Visible               //h1[@class="page-heading"]
    sleep                                   2
    Click Element                           ${title}
    sleep                                   2
    Input Text                              ${first_name}           fadhil
    Input Text                              ${last_name}            indirwan
    Input Text                              ${password}             asdfasdf
    Select From List By Index               ${date1}                1
    sleep                                   2
    Select From List By Index               ${date2}                1
    sleep                                   2
    Select From List By Index               ${date3}                1
    sleep                                   2
    Input Text                              ${address}              ohia
    Input Text                              ${city}                 las vegas
    Select From List By Index               ${state}                1
    sleep                                   2
    Input Text                              ${postcode}             00000
    Input Text                              ${mobile_phone}         091232123
    Input Text                              ${address2}             new york
    sleep                                   2
    Click Element                           ${button_register} 
    sleep                                   5     





