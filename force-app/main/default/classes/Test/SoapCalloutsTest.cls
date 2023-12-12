@isTest
public with sharing class SoapCalloutsTest {
    
    @isTest
    private static void getParksByCountryTest(){
        Test.startTest();
        //1. Set mock
        ParkServiceMock mock = new ParkServiceMock();
        Test.setMock(WebServiceMock.class, mock);

        //2. Call the methode
        List<String> parks = SoapCallouts.getParksByCountry('Iraq');

        //3. Perform Asserts
        Assert.areEqual(3, parks.size());
        Test.stopTest();
    }
    @isTest
    private Static void addTest(){
        Test.startTest();
    
        //1. Set mock
        CalculatorAddMock mock = new CalculatorAddMock();
        Test.setMock(WebServiceMock.class, mock);

        //2. Call the methode
        Double result = SoapCallouts.add(105, 95);

        //3. Perform Asserts
        Assert.areEqual(200, result);
        Test.stopTest();
    }
}