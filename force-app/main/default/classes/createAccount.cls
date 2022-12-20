/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-21-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class createAccount {
	
    public void create(String accName){
        
        Account singleAccount = new Account();
        singleAccount.Name=accName;
        
        insert singleAccount;
        
        
        system.debug(singleAccount.Name);
    }
    
    
    public void create(List<String> accNames){
        
    	List<Account> multiAcc = new List<Account>();
        
        for(String accName:accNames){
            
            Account singleAcc = new Account();
            singleAcc.Name=accName;
            multiAcc.add(singleAcc);
        }
        
        insert multiAcc;
        
    }
    
}

	