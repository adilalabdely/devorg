public class MethodDemoClass {
    public void practice1(){
        // methode 1
        decimal d1 = 45.987654;
        decimal d2 = d1.setScale(3);

        System.debug(d2);

        //methode 2
        System.debug(d1.setScale(2));

        string s1 = '33.2564';
        decimal s1Dec = decimal.valueOf(s1);

        System.debug(s1+99);
        System.debug(s1Dec+99);
    }
}