*** Settings ***

Library         SeleniumLibrary

*** Variables ***
${URL}          https://www.americanas.com.br
${BROWSER}      Chrome
${Produto1}     Smartphone Samsung Galaxy A70

*** Keywords ***
#SETUP E TEARDOW
Abrir navegador
    Open Browser       about:blank       ${BROWSER}
Fechar navegador
    Close Browser  
#Passo-a-passo
Acessar a página home do site  
        Go to               https://www.americanas.com.br
        Title Should be     Americanas - tudo, a toda hora, em qualquer lugar :)        

Digitar o nome do produto "${Produto1}" no campo pesquisa    
        Input text      id=h_search-input   ${Produto1} 

Clicar no botão Pesquisar
    Click Element   id=h_search-btn         