/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-23-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class TestRestrictContactByName {
    
    @isTest
    static void restrictContactByName_Test()
    {
        
        Contact con = new Contact(LastName='INVALIDNAME');
        
        Test.startTest();
        Database.SaveResult result = Database.insert(con,false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        
    }
    
}