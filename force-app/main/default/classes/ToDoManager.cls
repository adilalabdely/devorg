@RestResource(urlMapping = '/todo/*')
global with sharing class ToDoManager {

    @HttpGet 
    global static List<ToDo__c> getToDos(){
        List<ToDo__c> todos = [SELECT Name, ToDo_Id__c, completed__c, User_Id__c FROM ToDo__c];
        List<ToDoWrapper> wraps = ToDoHelper.convertToWrapper(todos);
        return todos;
    }
} 