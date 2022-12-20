/**
 * @description       : 
 * @author            : Tuba Yakar
 * @group             : 
 * @last modified on  : 12-21-2022
 * @last modified by  : Tuba Yakar
**/
@isTest
public class createAccountTest{

    
    @isTest
    public static void test1(){
        
        createAccount acc = new createAccount();
        
        acc.create('ab');
        
        Test.startTest();
        Account testAcc=[SELECT id, Name FROM Account];
        Test.stopTest();
        
        system.assertEquals('ab',testAcc.Name);        
    }
    
   
    
    @isTest
    public static void test2(){
        
        createAccount acc = new createAccount();
        List<String> NameList = new List<String>();
        
        for(Integer i=1;i<=10;i++){
            NameList.add('acc no: '+i);
        }
        
        Test.startTest();

        acc.create(NameList);
        List<Account> multiAccTest = [SELECT id, Name FROM Account];
        
        Test.stopTest();
        
        
        Integer result = multiAccTest.size();
        system.assertEquals(10, result);
    }
       
    
}
