public  class DML_Assign1 {
    public static void insertRecords(){
        list<account> new20Accounts = new List<Account>();
        for (Integer i = 0; i < 20; i++) {
            account newAcc = new account();
            newAcc.name = 'test account created ' + i;
            new20Accounts.add(newAcc);            
        }
        insert new20Accounts; 
    }

    public static void updateRecords(){
        list<account> latest20Accounts = [select id, name from account where createddate = today];
        for (account eachAccount : latest20Accounts) {
            eachAccount.name = eachAccount.name + 'updated';            
        }
        update latest20Accounts; 
    }
    
}