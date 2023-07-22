@isTest
public with sharing class RestCalloutTest {
    @isTest
    private static void getAnimalsTest(){
        Test.startTest();
        //1. Set mock
        RestCalloutMock mock = new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the callout method
        HttpResponse response = RestCallouts.getAnimals();

        //3. Perform asserts
        Assert.areEqual(200, response.getStatusCode());
        Assert.areEqual ('OK', response.getStatus());
        Test.stopTest();
    }

    @isTest
    private static void getProductTest(){
        Test.startTest();
        //1. Set mock
        RestCalloutMock mock = new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the callout method
        HttpResponse response = RestCallouts.getProducts();

        //3. Perform asserts
        Assert.areEqual(200, response.getStatusCode());
        Assert.areEqual ('OK', response.getStatus());
        Test.stopTest();
    }
}