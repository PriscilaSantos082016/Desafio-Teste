*** Settings ***
Resource            ../Resource/resource.robot
Test Setup          Abrir navegador
#Test Teardown       Fechar navegador

#SETUP roda antes da suite ou de um teste
#TEARDOW roda keyword depois de uma suite ou teste

*** Variables ***
${URL}          https://www.americanas.com.br
${BROWSER}      Chrome

*** Test Case ***
#Buscar três produtos em um site de compras da sua escolha
Caso de teste 01: Pesquisar produto 1
    Acessar a página home do site 
    Digitar o nome do produto "Smartphone Samsung Galaxy A70" no campo pesquisa
    Clicar no botão Pesquisar 

Caso de teste 02: Pesquisar produto 2
    Acessar a página home do site  
    Digitar o nome do produto "Smartphone Motorola One Vision" no campo pesquisa
    Clicar no botão Pesquisar 

Caso de teste 03: Pesquisar produto 3
    Acessar a página home do site 
    Digitar o nome do produto "Smartphone Xiaomi Redmi Note 7" no campo pesquisa
    Clicar no botão Pesquisar 



*** Keywords *** 
