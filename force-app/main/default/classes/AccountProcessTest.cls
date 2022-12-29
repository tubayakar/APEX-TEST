/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-29-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class AccountProcessTest {
    
    @isTest
    public static void createMethodTest1(){
        AccountProcess.createMethod('YAKAR LLC','(212) 842-5500');
    }
    
    @isTest
    public static void updateMethodTest1(){
        AccountProcess.updateMethod('www.triforcia.com','Banking');
    }
    
    @isTest
    public static void updateRelatedMethodTest1(){
        AccountProcess.updateRelatedMethod('Media','(212) 477-5500');
    }  
    
    @isTest
    public static void deleteMethodTest1(){
        AccountProcess.deleteMethod('YAKAR LLC');
    }
    
}