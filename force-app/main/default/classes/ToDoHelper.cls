public with sharing class ToDoHelper {
    
    public static ToDoWrapper convertToWrapper(ToDo__c todo) {
        ToDoWrapper wrap = new ToDoWrapper();
        wrap.id = Integer.valueOf(todo.ToDo_Id__c);
        wrap.completed = todo.Completed__c;
        wrap.todo = todo.Name;
        wrap.userId = Integer.valueOf(todo.User_Id__c);
        return wrap;
    }

    public static List<ToDoWrapper> convertToWrapper(List<ToDo__c> todos) {
        List<ToDoWrapper> wraps = new List<ToDoWrapper>();
        for(ToDo__c todo : todos) {
            wraps.add(convertToWrapper(todo));
        }
        return wraps;
    }
}