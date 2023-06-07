ShoppingCart c1 = new ShoppingCart();
c1.setName('Adil');
c1.addItem('Airpods');
c1.addItems('Brain', 99.99);
c1.addItems(new map<string, decimal> {'Pants' => 19.99, 'Shoes' => 9.99});
system.debug(c1.getShopItems());
system.debug('Total value: '+ c1.getTotalAmount().setScale(2));
c1.printSummary();
c1.clearCart();