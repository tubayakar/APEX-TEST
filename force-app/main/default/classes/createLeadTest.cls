/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-21-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class createLeadTest {

    @isTest
    public static void test1(){
        createLead l = new createLead();
        l.create('Tuba','Yakar');
        
        Test.startTest();
        Lead testLead = [SELECT Id, FirstName, LastName FROM Lead];
        Test.stopTest();
        
        system.assertEquals('Tuba', testLead.FirstName);
        system.assertEquals('Yakar',testLead.LastName);
    }
}