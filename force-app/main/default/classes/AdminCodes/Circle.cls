public class Circle {
    Decimal redius;
    string color;

    public Circle(){
    }
    public Circle(Decimal redius) {
        this.redius=redius;
      }
      public Circle(Decimal redius,String color) {
          this(redius);
          this.color=color;
          System.debug( 'circle color '+ color);
        }
      public Decimal getRedius() {
          return this.redius;
      }
      public void setRedius(Decimal redius) {
          this.redius = redius;
      }
      public String getColor() {
          return this.color;
      }
      public void setColor(String color) {
          this.color = color;
      }
          public   decimal calculateArea(){
           return math.pi*redius*redius;
          }
          public   decimal calculateCircumference(){
              return math.pi*2*redius;
            }
}