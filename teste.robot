*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary
Test Teardown    Finaliza o teste


*** Variables ***
${COOKIE}    //a[@id='btnCookie']
${Browser}    Chrome

${CEP_XPATH}               //span[.='Busca CEP ou Endereço']

${INPUT_ENDERECO_XPATH}    //input[@id='endereco']
${BUTTON_PESQUISAR_XPATH}  btn_pesquisar

&{RESULTADOS_PESQUISA_XPATH}    
...    logradouro=//tbody/tr/td[@data-th='Logradouro/Nome']
...    bairro=//tbody/tr/td[@data-th='Bairro/Distrito]
...    localidade=//tbody/tr/td[@data-th='Localidade/UF']
...    cep=//tbody/tr/td[@data-th='CEP']

&{CEPs}    
...    maracanau=61939-140
...    benfica=60040-531
...    fatima=60410-426
...    maranguape=61940-750

*** Keywords ***
Dado que eu acesso o site dos correios
    Open Browser    url=https://www.correios.com.br/    browser=${Browser}

E clique no botão BUSCA CEP OU Endereço
    Click Element    ${COOKIE}
    Scroll Element Into View    ${CEP_XPATH}
    Click Element    ${CEP_XPATH}

Quando eu escrever o endereço ${endereco}    
    Input Text    locator=${INPUT_ENDERECO_XPATH}    text=${CEPs.maracanau}

E clicar em pesquisar
    Click Button    ${BUTTON_PESQUISAR_XPATH}

Então o sistema deve apresentar o CEP da pesquisa
    Wait Until Element Is Visible    locator=${RESULTADOS_PESQUISA_XPATH.logradouro}
    Element Text Should Be    
    ...    locator=${RESULTADOS_PESQUISA_XPATH.logradouro}    
    ...    expected=Avenida Parque Central

Finaliza o teste
    Take Screenshot    name=../screenshots/screenshot
    Close Browser


    

*** Test Cases ***
Entrar no site
    Dado que eu acesso o site dos correios
    E clique no botão BUSCA CEP OU Endereço
    Quando eu escrever o endereço alves do rego
    E clicar em pesquisar
    Então o sistema deve apresentar o CEP da pesquisa

