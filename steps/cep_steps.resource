*** Settings ***
Resource    ../resources/main.resource

*** Keywords ***
Dado que eu acesso o site dos correios
    Open Browser    url=${geral.url}    browser=${geral.browser}

E clique no botão BUSCA CEP OU Endereço
    Click Element    ${home.cookie}
    Scroll Element Into View    ${home.cep}
    Click Element    ${home.cep}

Quando eu escrever o CEP ${cep_number}
    Input Text    locator=${cep.endereco_input}    text=${cep_number}

E clicar em pesquisar
    Click Button    ${cep.pesquisar_btn}

Então o sistema deve apresentar o endereço ${endereco}
    Wait Until Element Is Visible    locator=${cep.logradouro}
    Element Text Should Be    
    ...    locator=${cep.logradouro}    
    ...    expected=${endereco}