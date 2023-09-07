public with sharing class AccountHandler {

    //class level constants
    private static final string STAGE_PROSPECT = 'Prospecting';
    private static final string TYPE_NEW_CUSTOMER = 'New customer';

    public static void afterInsert(List<Account> newAccounts){
        List<contact> contacts = new List<contact>();
        List<Opportunity> opps = new List<Opportunity>();

        //iterate over the new accounts and create a contact & opp
        for(Account Acc : newAccounts){

            //create a contact record
            Contact con = new Contact();
            con.LastName = Acc.Name;
            con.Phone = Acc.Phone;
            con.AccountId = Acc.Id;
            Contacts.add(con);

            //create an opportunity record
            Opportunity opp = new Opportunity();
            opp.Name = Acc.Name;
            opp.StageName = STAGE_PROSPECT;
            opp.Type = TYPE_NEW_CUSTOMER;
            opp.Amount = acc.AnnualRevenue;
            opp.CloseDate = Date.Today().addDays(7);
            opp.AccountId = acc.Id;
            opps.add(opp);
        }

        //insert contacts;
        if(!contacts.isEmpty()){
            try{
                insert contacts;
            } catch(Exception ex){
                //create a log
            }
        }
        //insert opps;
        if(!opps.isEmpty()){
            try {
                insert opps;
            } catch(Exception ex){
                //create a log
            }
        }
    }
}