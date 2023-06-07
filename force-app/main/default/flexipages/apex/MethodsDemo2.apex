MethodDemo2 m3 = new MethodDemo2();
boolean b1 = m3.nameContainsA('Vicky');
System.debug('Vicky contains a?' + b1);



MethodDemo2 m2 = new MethodDemo2();
String returnMsg = m2.returnMessage('Jenny ');
system.debug(returnMsg);

//m2.returnMessage('Forrest') // this is valid. We are not storing the retirn value.
System.debug(m2.returnMessage('Forrest '));
//a = b+c
// system.debug(a)
// system.debug(b+c)