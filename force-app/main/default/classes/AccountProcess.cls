public class AccountProcess {
    
    public static void createMethod(string Name, string Phone){
        Account acc = new Account();
        acc.Name = Name;
        acc.Phone = Phone;
        
        insert acc;
        
        system.debug('New Account called '+ acc.Name +' has been created...');
    }
    
    public static void updateMethod(string Site, string Industry){
        List<Account> accList = [SELECT Id, Name FROM Account];
        
        for(Account singleAcc : accList){
            singleAcc.Site = Site;
            singleAcc.Industry = Industry; 
        }
        update accList;
        
        system.debug('Accounts have been updated...');
    } 
    
    public static void updateRelatedMethod(string Industry, string Phone){
        List<Account> accList = [SELECT Id, Name, Industry FROM Account];
        
        for(Account singleAcc : accList){
            
            if(singleAcc.Industry==Industry){
                singleAcc.Phone = Phone;
                system.debug('The phone number of accounts with industry - ' + Industry + ' - banking has been updated...');
            }else{
                system.debug('It\'s not an account with - ' + Industry + ' - Industry');
            }
            
        }
        update accList;
      
    }
    
    public static void deleteMethod(string x){
        List<Account> accList = [SELECT Id,Name FROM Account WHERE Name=:x];
        delete accList;
        
        system.debug('Accounts named  '+ x +' have been deleted...');
    }
    
    
    
}
