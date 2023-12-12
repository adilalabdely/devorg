public with sharing class EcommerceProductWrapper {
  public Integer total;
  public Integer skip;
  public list <ProductWrapper> products;
  
  public class ProductWrapper{
        public Integer Id;
        public String title;
        public String description;
        public Integer price;
        public Decimal discountPercentage;
        public Decimal rating;
        public Integer stock;
        public String brand;
        public String category;
        public String thumbnail;

    }
}