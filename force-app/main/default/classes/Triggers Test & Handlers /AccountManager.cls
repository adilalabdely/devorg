@RestResource(urlMapping='/Account/*') 
global with sharing class AccountManager {

    //https://gmailcomdev-1f9-dev-ed.develop.my.salesforce.com/services/apexrest/Account/*
    //https://gmailcomdev-1f9-dev-ed.develop.my.salesforce.com/services/apexrest/Account/{accId}
    //https://gmailcomdev-1f9-dev-ed.develop.my.salesforce.com/services/apexrest/Account/0013x00002RhefKAAR

    @HttpGet
    global static Account getAccount() {
        //Grab the account id from the url, query for the same and return the data
        RestRequest request = RestContext.request;
        String endpoint = request.requestURI;
        Integer lastIndex = endpoint.lastIndexOf('/');
        String accId = endpoint.substring(lastIndex+1);
        if(accId.length() == 18 || accId.length() == 15) {
            Account acc = [SELECT Id, Name, Type, Industry, AnnualRevenue, Phone, Website FROM Account WHERE Id = :accId];
            return acc;
        }
        return null;
    }
    @HttpPost
    global static Id postAccount (String Name, String Type, String Industry, Integer AnnualRevenue, String Phone, String Website){
        Account acc = new Account();
        acc.Name = Name;
        acc.Type = Type;
        acc.Industry = industry;
        acc.AnnualRevenue = annualRevenue; 
        acc.Phone = phone;
        acc.Website = website;
        insert acc;
        return acc.Id;
    }

    @HttpDelete
    global static String deleteAccount(){
        RestRequest request = RestContext.request;
        String endPoint = request.requestURI;
        Integer lastIndex = endPoint.lastIndexOf('/');
        String accId = endPoint.substring(lastIndex+1);
        If(accId.length() == 18 || accId.length() == 15){
            Account acc = [SELECT Id FROM Account WHERE Id = :accId];
            try {
                delete acc;
                return 'Success';
            } catch (Exception ex){
                return 'Fail';
            }
        }
        return 'Fail';
    }
    @HttpPut
    global static Account putAccount(){
        // Grab the request body and upsert the same
        RestRequest request = RestContext.request;
        String jsonString = request.requestBody.toString();
        Account acc = (Account) JSON.deserialize(jsonString, Account.class);
        upsert acc; //insert if there is no id in the json, else updates
        return [SELECT Id, Name, Type, Industry, AnnualRevenue, Phone, Website FROM Account WHERE Id = :acc.Id LIMIT 1];
    }

    @HttpPatch
    global static Account patchAccount(){
        // Grab the request body and convert it in to account
        RestRequest request = RestContext.request;
        String jsonString = request.requestBody.toString();
        Map<String, Object> info = (map<String, Object>)JSON.deserializeUnTyped(jsonString);
        Account acc = new Account();
        for(String key : info.keySet()){
            acc.put(key, info.get(key));
        }
        update acc;
        return [SELECT Id, Name, Type, Industry, AnnualRevenue, Website FROM Account WHERE Id = :acc.Id LIMIT 1];
    }

}




/*
Summary of Integration:
API or Integration is communication between 2 systems via Internet.
1.) We the system calling external system for some information. This is called callout in Salesforce language.Here we are making call to external system to fetch, post, delete or update information in external system.
There are 2 types of callout
a.) Rest API Callout--> Here we have learnt those 4 steps of
	i.) Preparing http request
	ii.) Preparing internet
	iii.) Deserializing the response(here we have prepared wrapper class to help in deserialization)
b.) SOAP API Callout-->rarely used, because wsdl has to be generated everytime. payload is heavy
	i.) Getting WSDL from external system.
	ii.) IMporting it in Salesforce and generating sync and async classes.
	iii.) Preparing a class and method to call these classes generated out of WSDL to Apex.
2.) External System calling our system for some information. This is where we are preparing webservices. In point 1, external system is hosting a webservice. Here we are hosting a webservice. Hosting a webservice mean we are exposing a service on the web which can access our data. Data can be account or case object etc.
	a.) Here we will write a global class with urlmapping and methods like @HttpGet, @HttpPost, @HttpDelete and @HttpPut. Inside each of these methods,
	@HttpGet-->We will query the Salesforce information and give it back to external system
	@HttpPost-->We will create a record in Salesforce system
	@HttpDelete-->We will delete record in Salesforce system
	@HttpPut-->We will either insert or update a record in Salesforce system
Here we are using workbench and it is acting as an external system and hitting our webservice.
*/