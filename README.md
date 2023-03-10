# integracao
Estudos para Rest API

Integrações podem Integrar Salesforce + Salesforce / Salesforce + SAP / Salesforce + COrreios, Receita Federal,Serasa etc 
Estamos usando o Excel como SImulação dos dados de Outro SIstema


A Empresa  tem um banco de dados (nesse caso é o excel antigo e gigante), com uma carga imensa de cliente,conta, de pedidos e itens de pedido 

Daí preciso INSERIR esses dados no Salesforce da Empresa (para isso vou abrir um portal para a minha org gerar token (chave pra abrir a org)
(autenticaçaõ / autorização / segurançca com o salesforce),para ela receber os dados em JSON)
Preciso preparar minha org pra receber esses dados (modelagem compativel)


PARTE SALESFORCE
Para isso 
Modelar objetos OK 
Criar Connected App V2 OK
Pegar client secret e client id V2 OK 
Gera a chave de segurança (token) V2 OK


PARTE POSTMAN 
Postman > pasta > 1° TOKEN 
Postman > pasta > 2° BODY > granttype, client id, client secret, username, password 
(Aqui na vida real, ia entrar outra equipe, com outro sistema etc)
Postman vai SIMULAR A ENTRADA NA MINHA ORG


PARTE APEX
Criar a Classe de Int Pegar exemplo de integração INbound (int do tipo entrada) (https://www.infallibletechie.com/2017/08/simple-inbound-rest-api-using-apex-in.html)
Criar JSON (pode ser um txt)(de acordo com a modelagem) (simples de tudo) + Aplicar no Postman 

Nisso já funcionou 

-----------------------------------------------------------------------------------------------

INFORMAÇÕES
Chave do cliente

Segredo do Cliente 

Chave de Segurança da ORG 

username 


senha


INTEGRAÇÃO
----------------------------------------------------------------------------------------------------------



LINKS MUITO UTEIS
DOCUMENTAÇÃO POSTMAN https://community.postman.com/t/pm-response-json-response-as-object/10417
ROTEIRO https://www.infallibletechie.com/2017/08/simple-inbound-rest-api-using-apex-in.html
INNER CLASS E LIST PARA JSON https://salesforce.stackexchange.com/questions/15259/apex-rest-web-service-unexpected-parameter-encountered-during-deserialization
LIST PARA JSON https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_rest_methods.htm
LIST PARA JSON MESMO https://blog.deadlypenguin.com/2016/11/29/list-objects-apex-rest/
JSON GERAL https://www.youtube.com/watch?v=BWPUSXzSWA8
INNER CLASS PARA POST https://blog.deadlypenguin.com/2016/11/29/list-objects-apex-rest/
INNER CLASS PARA WE SERVICE OURO https://www.youtube.com/watch?v=7wTtq6MoH2o
BIBLIOTECA LWC https://developer.salesforce.com/docs/component-library/documentation/en/lwc/create_components_html
@WIRE https://developer.salesforce.com/docs/component-library/documentation/en/lwc/lwc.data_wire_service
IMPORT LWC, WIRE E TEMPLATE (link sagrado) HTML https://jayakrishnasfdc.wordpress.com/2020/12/05/conditional-rendering-in-lwc/

DATA MAP


org > Connected App
org > Key Manage
org > App Manager
org > Classic


---------------------------------------------------------

EXEMPLO DATAMAP E JSON

JSON ACCOUNT MONTADO EXEMPLO
{
        "name" : "Casa do João - Pães",
        "descrp" : "Casa Lúdica e Padaria",
        "cnpj" : "82731088000186",
        "email" : "casajp@provedor.com",
        "telefone" : "(21)35354747",
        "data" : "2018-12-25",
        "setor" : "Padaria",
        "estado" : "RS"
}




DATA MAP
//TYPE // CAMPO //PARAMETRO //PARAMETRO // VALOR 
String / Name / name / name / Ana Lucia Pontes
String / Description / descrpt / descrpt / CEO de uma startup do tipo Padaria de Auto Atendimento 
String / CNPJ__c / cnpj / cnpj / 91417192000191
String / Email__c / email / email / analupontes@provedor.com
String / Phone / telefone / telefone / 2193760909
Date / DataFundacao__c / data / data /  2006-10-20;
String / Industry / setor / setor / Padaria
