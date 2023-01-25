/**
 * @description       : 
 * @author            : Tuba Yakar
 * @group             : 
 * @last modified on  : 01-15-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/

@isTest
public class AccountHandlerTest {   
    
    @isTest
    public static void addStudenttoCohort1(){
        // Preapare Data
        
        List<Contact> multiContact = New List<Contact>();
        
        for(Integer num=1;num<=200;num++){
            Contact singleContact= New Contact();
            singleContact.FirstName='TEST ' + num;
            singleContact.LastName='STUDENT '+num;
            
            multiContact.add(singleContact);            
        }
        
        AccountHandler.addStudenttoCohort('TEST COHORT',multiContact);
        
        
        // Test and Evaluate
        
        List<Contact> actual = [SELECT Id, Name, accountid, Account.Name FROM Contact];
        
        System.assertEquals(200, actual.size());
        
    }
    
    @isTest
    public static void createtest1(){   // BULK TEST
        List<Account> multiAcc = New List<Account>();
        
        for(Integer x=1;x<=200;x++){
            
            Account singleAcc = New Account();
            
            singleAcc.Name='TEST Acc '+ x;
            multiAcc.add(singleAcc);
            
        }
        AccountHandler.createUpperCase(multiAcc);
        
        List<Account> testAcc = [SELECT id, Name FROM Account];
        
        
        System.assertEquals(200, testAcc.size());
        
    }
    
    @isTest
    public static void createtest2(){   // SINGLE TEST
        List<Account> multiAcc = New List<Account>();
        Account singleAcc = New Account();
        
        singleAcc.Name='TEST Acc 1';
        multiAcc.add(singleAcc);
        
        
        
        AccountHandler.createUpperCase(multiAcc);
        
        List<Account> testAcc = [SELECT id, Name FROM Account];
        
        
        System.assertEquals(1, testAcc.size());
        
    }
    
}



