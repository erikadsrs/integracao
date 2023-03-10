@RestResource(urlMapping='/ItemPedidoPersonalizado__c/*')

global with sharing class IntegracaoEveAlimentosItemdoPedido {

    @HttpPost
    global static String doItemPedido(String pedido, String produto, Integer quantidade, Integer valorUnico, Integer valorFinal) { //parametros serão o body no postman em JSON
        ItemPedidoPersonalizado__c itemP = new ItemPedidoPersonalizado__c();        
        itemP.Pedido__c = pedido;
        itemP.Produto__c = produto;
        itemP.Quantidade__c = quantidade;
        itemP.ValorUnitario__c = valorUnico;
        itemP.ValorTotal__c = valorFinal;


        insert itemP;

        return itemP.Id;
    }
}
