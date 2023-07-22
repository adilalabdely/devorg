//json format for
{
    "Name" : "Universal Containers",
    "Type" : "New Customer",
    "Industry" : "Education",
    "AnnualRevenue" : 2000000
}

//UC1: Convert an account record into JSON format
Account acc = [SELECT Id, Name, Type, Industry, AnnualRevenue FROM Account WHERE Type != null AND Industry != null LIMIT 1];
System.debug(acc);
String jsonString = JSON.serialize(acc);
System.debug(jsonString);

//UC2: Convert 5 account records into JSON format
List<Account> acc = [SELECT Id, Name, Type, Industry, AnnualRevenue FROM Account WHERE Type != null AND Industry != null LIMIT 5];
System.debug(acc);
String jsonString = JSON.serialize(acc);
System.debug(jsonString);

//UC3: Convert contact record into JSON format (FirstName, LastName, Email, Title, Department)
Contact cont = [SELECT Id, FirstName, LastName, Email, Title, Department FROM Contact LIMIT 1];
System.debug(cont);
String jsonString3 = JSON.serialize(cont);
System.debug(jsonString3);

//UC4: Convert 5 contacts records into JSON format
List<Contact> cont = [SELECT FirstName, LastName, Email, Title, Department FROM Contact WHERE Department != null LIMIT 5];
String jsonString4 = JSON.serialize(cont);
System.debug(jsonString4);