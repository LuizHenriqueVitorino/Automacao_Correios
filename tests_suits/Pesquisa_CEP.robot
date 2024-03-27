*** Settings ***
Resource    ../steps/cep_steps.resource
Test Teardown    Finaliza o teste

*** Test Cases ***
TC01 - Pesquisar CEP de Maracanaú
    Dado que eu acesso o site dos correios
    E clique no botão BUSCA CEP OU Endereço
    Quando eu escrever o CEP ${CEPs.maracanau}
    E clicar em pesquisar
    Então o sistema deve apresentar o endereço Avenida Parque Central

TC02 - Pesquisar CEP de Benfica
    Dado que eu acesso o site dos correios
    E clique no botão BUSCA CEP OU Endereço
    Quando eu escrever o CEP ${CEPs.benfica}
    E clicar em pesquisar
    Então o sistema deve apresentar o endereço Avenida 13 de Maio - até 1989 - lado ímpar

TC03 - Pesquisar CEP de Fátima
    Dado que eu acesso o site dos correios
    E clique no botão BUSCA CEP OU Endereço
    Quando eu escrever o CEP ${CEPs.fatima}
    E clicar em pesquisar
    Então o sistema deve apresentar o endereço Rua Jorge Dumar - até 1549/1550

TC04 - Pesquisar CEP de Maranguape
    Dado que eu acesso o site dos correios
    E clique no botão BUSCA CEP OU Endereço
    Quando eu escrever o CEP ${CEPs.maranguape}
    E clicar em pesquisar
    Então o sistema deve apresentar o endereço Rua Benedito Prata - de 2 ao fim - lado par
