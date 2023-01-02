public class CreateRelatedObject { 
    
    public void createConRelatedAcc(string accName, string conFname, string conLname){
        Account acc = New Account();
        acc.Name = accName;
        
        insert acc;
        system.debug('New account called ' + acc.Name + ' is created succesfully...');
      
              
        Contact con = New Contact();
        con.Firstname = conFname;
        con.Lastname = conLname;
  
        con.AccountId = acc.Id;
        
        insert con;
        system.debug('New contact called ' +con.Firstname + ' ' + con.Lastname  + ' related account called ' + acc.Name + ' is created succesfully...');
     }
    
}