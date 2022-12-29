CreateNewUser u1 = new CreateNewUser();
system.debug('New User Name: '+u1.nameMethod('Tuba', 'Yakar'));
u1.checkTitleWithCode(12);
u1.checkStartDate(Date.parse('12/15/21'));


CreateNewUser u2 = new CreateNewUser();
system.debug('New User Name: '+u2.nameMethod('Andy', 'Cooper'));
u2.checkTitleWithCode(13);
u2.checkStartDate(Date.parse('12/29/22'));


CreateNewUser u3 = new CreateNewUser();
system.debug('New User Name: '+u3.nameMethod('Emily', 'Blunt'));
u3.checkTitleWithCode(14);
u3.checkStartDate(Date.parse('1/15/23'));