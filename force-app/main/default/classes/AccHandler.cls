public class AccountHandler {
    
    
    public static void addStudenttoCohort(String CohortName,List<Contact> multiContact ){
        
        Account singleAccount = New Account();
        
        singleAccount.Name=CohortName; 
        
        insert singleAccount;
        
        
        for(Contact loopcontact:multiContact){
            loopcontact.AccountId=singleAccount.id;
        }
        
        upsert multiContact;
 
    }
    

    public static void createUpperCase(List<Account> multiAcc){ // bulkification
        
        for(Account acc:multiAcc){
            acc.name=acc.name.toUpperCase();
        }
        
        insert multiAcc;  
        
    }

}