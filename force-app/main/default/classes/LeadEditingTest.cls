/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 01-02-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class LeadEditingTest {
    
    @isTest
    public static void test(){
        Map<Id,Lead> leadMap = New Map<Id,Lead>([SELECT Id, LastName FROM Lead]);
        
        
        LeadEditing.toUpperName(leadMap.keySet());
    }
    
}