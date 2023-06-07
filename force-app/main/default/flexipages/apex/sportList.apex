list<string> sportsList = new list<string>{'Golf', 'Cricket', 'Baseball', 'Hockey', 'Rugby'};
if (sportsList.isEmpty()){
    system.debug('LIST IS EMPTYYYY');
} else {
    system.debug('LIST IS NOT EMPTY!');
sportsList.add('Football');
sportsList.add('Basketball');
sportsList.add('Tennis');
sportsList.add('Volleyball');
list<string> ballSports = new list<string>();
list<string> noBallSports = new List<String>();
for (string eachSport : sportsList) {
if (eachSport.contains('ball')){
    system.debug(eachSport + ' is played with ball!');
    ballSports.add(eachSport);
} else {
    system.debug(eachSport + ' is not played with ball, cmooooooon!');
    noBallSports.add(eachSport);
}   
}
system.debug('Sports played with Ball: ' + ballSports + ', size of the list: ' + ballSports.size());
system.debug('Sports that are NOT played with Ball: ' + noBallSports + ', size of the list: ' + noBallSports.size());
system.debug('My favorite sport index: ' + sportsList.indexOf('Football'));
sportsList.remove(sportsList.indexOf('Golf'));
system.debug('List of updated list of sports: ' + sportsList + ', the size of the list now: ' + sportsList.size());
}
set<string> operatingSystem = new set<string>{'Windows', 'macOS'};
operatingSystem.add('Linux');
operatingSystem.add('Android');
operatingSystem.add('iOS');
operatingSystem.add('Chrome OS');
operatingSystem.add('FreeBSD');
operatingSystem.add('Ubuntu');
operatingSystem.add('Debian');
operatingSystem.add('Fedora');
system.debug('the size of the set: ' + operatingSystem.size());
string finallist  ='';
for (string eachOS : operatingSystem){
    finallist += eachOS + ' & ' ;
}