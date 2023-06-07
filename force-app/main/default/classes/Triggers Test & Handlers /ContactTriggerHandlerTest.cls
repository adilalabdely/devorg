@isTest
public class ContactTriggerHandlerTest {
    @isTest
    public static void mainContactPersonTest() {
        // Create test data
        Account testAccount = new Account(Name = 'Test Account', Fax = '123456789');
        insert testAccount;
        Contact testContact1 = new Contact(AccountId = testAccount.Id, LastName = 'Test1', main_contact_person__c = false, Fax = '111111111');
        Contact testContact2 = new Contact(AccountId = testAccount.Id, LastName = 'Test2', main_contact_person__c = false, Fax = '222222222');
        Contact testContact3 = new Contact(AccountId = testAccount.Id, LastName = 'Test3', main_contact_person__c = true, Fax = '333333333');
        insert new List<Contact> {testContact1, testContact2, testContact3};
        // Call the trigger handler method
        Test.startTest();
        testContact2.main_contact_person__c = true;
        update testContact2;
        Test.stopTest();
        // Retrieve the updated account
        Account updatedAccount = [SELECT Id, Fax FROM Account WHERE Id = :testAccount.Id];
        // Verify the changes
        System.assertEquals('222222222', updatedAccount.Fax);
    }
}