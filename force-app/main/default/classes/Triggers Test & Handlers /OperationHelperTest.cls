@isTest
public with sharing class OperationHelperTest {
    @isTest
    public static void largestOutOfTwoNumbersTest() {

        OperationHelper OperationHelper = new OperationHelper();

        Assert.areEqual(2, OperationHelper.largestOutOfTwoNumbers(2, 1.2)); 
        Assert.areEqual(2, OperationHelper.largestOutOfTwoNumbers(1, 2));
    }
    @isTest
    public static void smallestOutOfThreeNumbersTest() {

        OperationHelper OperationHelper = new OperationHelper();

        Assert.areEqual(1.2, OperationHelper.smallestOutOfThreeNumbers(1.2, 2.4, 3.6));
    }
    @isTest
    public static void sumOfPositiveIntegerTest() {

        OperationHelper OperationHelper = new OperationHelper();

        Assert.areEqual(null, OperationHelper.sumOfPositiveInteger(-1));
        Assert.areEqual(3, operationHelper.sumOfPositiveInteger(2));

        //EXTRA Assert methods (always good to use as much as possible)
        Assert.isInstanceOfType(OperationHelper.sumOfPositiveInteger(2), Integer.class);
        Assert.areNotEqual(2.2, OperationHelper.sumOfPositiveInteger(2));
        Assert.isNotNull(OperationHelper.sumOfPositiveInteger(0)); 
    }
}