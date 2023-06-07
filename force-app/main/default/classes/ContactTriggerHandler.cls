public class ContactTriggerHandler {
    public static void mainContactPerson(list<contact> newContacts, map<id, contact> oldContacts) {
        //set id

        map<id, string> accountIdsFax = new map <id, string>();
        //for loop
        for (contact updatedContacts : newContacts) {
            
            Contact oldContact = oldContacts.get(updatedContacts.id);
            //check if main person is checked

            if (updatedContacts.main_contact_person__c == true && updatedContacts.main_contact_person__c != oldContact.main_contact_person__c) {
                    
            accountIdsFax.put(updatedContacts.AccountId, updatedContacts.Fax);
            }
        }
        //fetch the records with main contact checked
        list<account> updatedContacts = [select id, name, fax from Account where id = :accountIdsFax.keySet()];

        //update account's fax field
        for (Account eachAcc : updatedContacts) {
            eachAcc.Fax = accountIdsFax.get(eachacc.id);
        }

        //update acc with contact fax fields
        update updatedContacts;
    }
}