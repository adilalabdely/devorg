public class MapDemoAgain {
    public static void printMap1() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');
        map1.put(1055, 'Monica');

        system.debug('student map => ' + map1);

        //WE Can get corresponding value from ONE key. Use .get(key)
            //We CANNOT get KEY from VALUE
        integer rollNo = 1011;
        string s11 = map1.get(rollNo);
        system.debug(rollNo + ' studnet name is ' + s11);


        integer rollNo2 = 1055;
        //check if rollNo2 is present in map and print value if present, else print NOT PRESENT
            //containsKey -> returns true or false
        if (map1.containsKey(rollNo2)) {
            system.debug(rollNo2 + ' student name is ' + map1.get(rollNo2));
        } else {
            system.debug('Not present in map');
        }
    }

    public static void printMap2() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');//
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');//Amar will be update instead of Alex. NO ALEX in map. 
        map1.put(1055, 'Monica');

        system.debug('map1 => ' + map1);

        //how to get all key?
        //keySet() method -> set<key-datatype>
        set<integer> allKeys = map1.keySet();
        system.debug('all roll numbers are ' + allKeys);
        system.debug('number of roll numbers are ' + allKeys.size());

        //we want to get all student names.
        //values() method -> list<value-datatype>
        list<string> allValues = map1.values();
        system.debug('all student names are ' + allValues);


    }

    public static void printMap3() {
        map<integer, string> map1 = new map<integer, string>();
        map1.put(1011, 'Alex');//
        map1.put(1022, 'Brian');
        map1.put(1033, 'Monica');
        map1.put(1011, 'Amar');//Amar will be update instead of Alex. NO ALEX in map. 
        map1.put(1055, 'Monica');

        //putAll -> 
        map<integer, string> map2 = new map<integer, string>();
        map2.putAll(map1);
        system.debug(map2);
    }
}