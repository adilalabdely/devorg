public class SoqlDemo4 {
    public static void aggregateQuery() {
        //group by query doesn't return sObject or list<sObject>
            //it returs List<aggregateResult>
            //first aggregate is count --expr0
            //second aggregate is sum --expr1
        List<aggregateResult> results = [select country__c, count(id), sum(salary__c) from employee__c group by country__c];
        //when we use aggregate functions in soql (count, sum, avg, max etc), we get the result in aggregateresult.

        for (aggregateResult ar : results) {
            system.debug(ar);
            system.debug('country name is ' + ar.get('country__c'));
            system.debug('number of record: ' + ar.get('expr0'));//expression0
            system.debug('sum of salary: ' + ar.get('expr1'));//expression1
        }
    }

    public static void queryExample22() {
        account acc = [select id, name from account limit 1];
        system.debug('acc name is ' + acc.get('name'));//this is dynamic
        system.debug('acc name is ' + acc.Name);//this is not dynamic

        //list<integer> listName;
        //listName.get(3)
        //listName[3]
    }
}