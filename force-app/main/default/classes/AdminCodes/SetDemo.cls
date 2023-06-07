public class SetDemo {
    public static void citySet(){
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Baghdad');
        cities.add('Najaf');
        cities.add('Kerbala');
        cities.add('Tokyo');

        System.debug('cities set ' + cities);
    }

    public static void randomIntegerSet(){
        Set<Integer> intSet = new Set<integer>();
        intSet.add(15);
        intSet.add(10);
        intSet.add(21);
        intSet.add(10);
        System.debug(' int set ' + intSet);
    }

    public static void setFromList(){
        list<integer> l1 = new list<integer>{10,15,77,55,10,77,55};
        System.debug(l1);

        set<integer> s1 = new Set<integer>();
        s1.addAll(l1);
        System.debug(s1);
    }
}