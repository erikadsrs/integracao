@RestResource(urlMapping='/Pedido__c/*')

global with sharing class IntegracaoEveAlimentosPedidos {

    @HttpPost
    global static String postPedido(String numPedido, String accountId, String status, Integer valorPedido) { //parametros serão o body no postman em JSON // e os campos do Salesforce
        Pedido__c p = new Pedido__c();
        p.Name = numPedido;
        p.Cliente__c = accountId;
        p.Status__c = status;
        p.ValorPedido__c = valorPedido;

        insert p;

        return p.Id;
    }

}
