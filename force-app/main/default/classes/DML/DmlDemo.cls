public class DmlDemo {
    public static void dmlInsert1() {
        //create new account record

        //1. create new instance of account(sObject)
        account acc = new account();

        //2. set field names
        acc.Name = 'Salesforce';

        //3. insert statement
        insert acc; //will CREATE  record in ORG.
        system.debug(acc);
    }

    //create new record for department custom object
    public static void dmlInsert2() {
        //create new instance.
        Department__c d = new Department__c();

        //set fields
        d.Name__c = 'Human Resource';
        d.Short_Code__c = 'HR';

        //insert statement
        insert d;
    }

    public static void dmlUpdate1() {
        account acc = new account();
        acc.name = 'Softinnovas';
        system.debug('before insert DML: ' + acc);
        insert acc;
        system.debug('after dml : ' + acc);

        //ID is mandatory if we want to update record
        acc.name = 'Softinnovas Inc.';
        update acc;//update statement.
    }

    //update existing record from the org.
    public static void dmlUpdate2() {
        //soql
        account acc = [select id, name from account order by CreatedDate desc limit 1];

        //update
        acc.Name = 'Salesforce Inc.';

        update acc;
    }
}