public class ShoppingCart {
    string name;
    map<string, decimal> shopItems;
    public static decimal discount = 0.05;
    public decimal totalAmount;
    public ShoppingCart(){
        name ='';
        system.debug('Hello, we are glad you are here! What would you like to shop?');
    }
    public ShoppingCart(string name){
        this.name = name;
        system.debug('Hello,'+ name + ' we are glad you are here, what would you like to shop today?');
    }
    public string getName(){
        return name;
    }
    
    public void setName(string name){
        this.name = name;
    }
    public void addItem(string itemName){
        shopItems.put(itemName, 0.0);
    }
    public void addItems(string itemName, decimal price){
        shopItems.put(itemName, price);
    }
    public void addItems(map<string, decimal> itemsPrice){
        shopItems.putAll(itemsPrice);
    }
 
    public void removeItem(string itemName){
    if(shopItems.containsKey(itemName)){
        shopItems.remove(itemName);
        system.debug(itemName + ' was removed successfully!');
        }else {
        system.debug('No such item is added in cart, how can I remove it buddy?');
        }
    }
    public map<string, decimal> getShopItems(){
        return shopItems;
    }
    public decimal getTotalAmount(){
        
        totalAmount = 0.0;
        for (decimal eachPrice : shopItems.values()){
            totalAmount += eachPrice;
        } system.debug('Total Amount: ' + totalAmount);
        if (totalAmount >= 300){
            totalAmount = totalAmount - (totalAmount * discount);     
        } system.debug('Item Price after discount: ' + totalAmount);
        return totalAmount;
    }
    public void printSummary(){
        system.debug('You have added ' + shopItems.size() + ' items in your cart');
        for (string eachItem : shopItems.keySet()) {
            system.debug('Item: ' + eachItem + ', price: ' + shopItems.get(eachItem).setScale(2));
        }
        system.debug('Total value of the cart is: ' + getTotalAmount().setScale(2));
        if (totalAmount < 300){
            decimal forExtraDiscount = 300 - totalAmount;
            system.debug('Add more items worth ' + forExtraDiscount + ' to get more discount buddy!');
        }
    }
    public void clearCart(){
        shopItems.clear();
    }
}