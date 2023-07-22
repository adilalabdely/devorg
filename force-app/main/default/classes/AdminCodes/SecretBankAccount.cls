public class SecretBankAccount {
    string accountNumber;
    string accountName;
    decimal balanceAmount;
    public void createAccount(string accNum, string accName, decimal bal){
        accountNumber = accNum;
        accountName = accName;
        balanceAmount = bal;
        system.debug('Congratulations! The Account was created successfully!');
    }
    public void depositAmount(decimal amount){
        balanceAmount += amount;
        system.debug('Amount deposited success!');
        system.debug('Amount deposited: ' + amount.setScale(2));
        system.debug('Current balance: ' + balanceAmount.setScale(2));
    }
    public void withdrawAmount(decimal amount){
        if (balanceAmount < amount){
            system.debug('Insufficient Balance! Unable to withdraw!');
        } else {
            balanceAmount -= amount;
            system.debug('Withdrawal successfull!');
            system.debug('Amount withdrawn: ' + amount.setScale(2));
            system.debug('Current balance: ' + balanceAmount.setScale(2));
        }
    }
    public void accountDetails(){
        system.debug('Account Name: ' + accountName);
        system.debug('Account Number: ' + accountNumber);
        system.debug('Available Balance: ' + balanceAmount.setScale(2));
    }
}