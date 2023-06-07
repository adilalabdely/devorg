trigger contactTrigger1 on contact (before insert, after insert) {
    if(trigger.isAfter && trigger.isInsert){
        for (contact eachCon : trigger.new) {
            if (eachCon.AccountId != null) {
                system.debug(eachCon.FirstName + ' '+ eachcon.lastname  + ' contact created WITH Account');
            }else{
                system.debug(eachCon.FirstName +  ' '+ eachcon.lastname  +' contact created WITHOUT Account');
            }
        }
    }
}