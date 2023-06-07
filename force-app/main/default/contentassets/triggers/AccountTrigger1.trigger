trigger AccountTrigger1 on Account ( before insert, after insert, before update, after update) {

    if (Trigger.isBefore) {
        for (Account newAcc : Trigger.new) {
            //boolean flag to maintain if we want to update description field
            boolean updaAccFields = false;
            //check insert
            if (Trigger.isInsert && newAcc.active__c == 'Yes') {
                //update description field
                //set new field value
                //newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
                updaAccFields = true;
            }

            //check if update
            if(Trigger.isUpdate){
                //if active field is changed, and active field new value is 'yes'
                    //old acc active field != new acc active field AND new acc active field == yes
                if(newAcc.Active__c != Trigger.oldMap.get(newAcc.id).Active__c
                && newAcc.Active__c == 'Yes'){
                    //newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
                    updaAccFields = true;
                }
            }

            if(updaAccFields){
                newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
                // newAcc.Rating = 'Warm';
                // newAcc.AnnualRevenue = 600000;
                // newAcc.BillingCountry = 'USA';
                // newAcc.CustomerPriority__c = 'High';
            }
        }
    }
}