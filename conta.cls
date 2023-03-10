//Acount
@RestResource(urlMapping='/Account/*')

global with sharing class IntegracaoEveAlimentos {

    @HttpPost
    global static String doPost(String name, String descrp, String cnpj, String email, String telefone, Date data, String setor, String estado) { //parametros serão o body no postman em JSON
        Account a = new Account();        
        a.Name = name;
        a.Description = descrp;
        a.CNPJ__c = cnpj;
        a.Email__c = email;
        a.Phone = telefone;
        a.DataFundacao__c = data;
        a.Industry = setor;
        a.BillingState = estado;

        insert a;

        return a.Id;
    }
}
