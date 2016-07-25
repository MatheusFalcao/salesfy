README FILE

API Routes

--------------------------------------------------------------------------------------------------------------------------------------------
Para resgatar os produtos cadastrados pelo Usuário siga com a seguinte Rota 

GET  >> https://webapp-cloned-matheusfalcao.c9users.io/api/v01/API_KEY/produtos.json

--------------------------------------------------------------------------------------------------------------------------------------------
Para Efetuar uma Venda basta seguir a seguinte rota

POST >> https://webapp-cloned-matheusfalcao.c9users.io/api/v01/venda/API_KEY

Formato para Post (JSON)

{
    "data" : "01/05/2016",  //Data a da Venda
    "forma_de_pagamento" : "Cartão de Crédito", //Foma de Pagamento
    "itens" : [{"produto_id" : 1,"qtde" : 3},{"produto_id" : 2,"qtde" : 5}]  //Array com os produtos da venda
}

--------------------------------------------------------------------------------------------------------------------------------------------
Observação

Alterar "API_KEY" pela chave do usuário , ela fica na página incial do dashboard