public with sharing class CaseInvocable {
    
    @InvocableMethod(label='Send Email and Save as Activity'
                    description='This Method sends an email and save same as activity'
                    category='My Case')
    public static void sendEmailAndSaveActivity(List<CaseRequest> requestInputs){
        List<Messaging.SingleEmailMessage> msgs = new List<Messaging.SingleEmailMessage>();
        for (caseRequest req : requestInputs){
            Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
            msg.setSubject('Case created: ' + req.caseNumber );
            msg.setPlainTextBody('Hello there, \n'
            + 'A case has been create for your query. our customer representatives are going to look at it shortly. \n\n'
            + 'Thank You, \n'
            +'Salesforce'
            );
            msg.setTargetObjectId(req.contactId);
            msg.setSaveAsActivity(true);
            msgs.add(msg);
        }
        //send message
        try{
            Messaging.sendEmail(msgs);
        } catch(Exception ex){
            // create log
            System.debug(ex.getMessage());
        }
    }    
    
    //wrapper input request
    public class CaseRequest{
        @InvocableVariable(label='Case Number' description='Case Number' required=true)
        public String caseNumber;
        @InvocableVariable(label='Contact Id' description='Contact Id' required=true)
        public Id contactid;
    }
}