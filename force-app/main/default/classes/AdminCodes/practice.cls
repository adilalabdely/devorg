public class practice {
    public void calculateAgeInMonths(){
        Date todayDate = date.today();
        Date AdilBirthDate = date.newInstance(1982, 06, 01);
        //monthesBetween 

        Integer myAgeInMonths = AdilBirthDate.monthsBetween (todayDate);

        System.debug(myAgeInMonths);
    }
    public void calculateAgeInDays(){
        Date todayDate = date.today();
        Date AdilBirthDate = date.newInstance(1982, 06, 01);
        //daysBetween

        Integer myAgeInDays = AdilBirthDate.daysBetween(todayDate);

        System.debug('Adil age in days is ' + myAgeInDays);
    }
    public void getSubscriptionEndDate(){
        Date todayDate = date.today();
        date endDate = todayDate.addDays(1000);
        System.debug(endDate);
    }
}