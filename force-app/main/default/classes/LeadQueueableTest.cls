/**
 * @description       : 
 * @author            : Tuba Yakar
 * @group             : 
 * @last modified on  : 01-02-2023
 * @last modified by  : 
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
