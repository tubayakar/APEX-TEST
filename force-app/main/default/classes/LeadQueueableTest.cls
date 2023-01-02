/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 01-02-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class LeadQueueableTest {
    
    @isTest
    public static void test(){
        
        Lead testLead = New Lead();
        testLead.FirstName = 'Tuba';
        testLead.LastName = 'Yakar'; 
        testLead.Company = 'Triforcia';

        Id LeadJobId = System.enqueueJob(New LeadQueueable(testLead));
        
    }

}