***Settings***
Library     SeleniumLibrary
Variables   ../Resouces/HomePageLocator.yaml
suite Setup      Open Browser        ${base_url}     ${base_type}
suite Teardown   Close Browser 


*** Variables ***
${base_url}     http://automationpractice.com/
${base_type}    gc

***Test Cases***
verifikasi diskon sale homepage
    Element Should Be Visible   ${gambar_sale}

verifikasi logo homepage
    Element Should Be Visible   ${logo}

verifikasi menubar homepage
    Element Should Be Visible   ${menu}

verifikasi menu item homepage
    Element Should Be Visible   ${item}

