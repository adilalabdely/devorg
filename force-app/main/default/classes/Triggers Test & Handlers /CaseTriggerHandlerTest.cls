@isTest
public class CaseTriggerHandlerTest {
    @isTest
    public static void checkDescTest() {
        list<case> caseList = new list<case>();
        for (Integer i = 1; i <= 50; i++) {
            case childCase = new case();

        childCase.Subject = 'Test Subject';
        if (i <= 30) {
            childCase.Description = 'Contains password';
        } else if (i <= 50){
            childCase.Description = 'hello';
        }
        caseList.add(childCase); 
        }

        insert caseList;
        list<case> childCases = [select id, subject, priority, description from case where ParentId != null];
        Assert.areEqual(30, childCases.size());
    }
}