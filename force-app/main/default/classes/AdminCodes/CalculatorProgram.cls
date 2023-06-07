public class CalculatorProgram {
    public void calc(){
        calculator c = new Calculator();
        Integer sum1 = c.add(10, 15);
        System.debug('sum1 is'+ sum1);

        System.debug('10, 15, 95 ==>' + c.add(10, 15, 95));
    }
}