/**
 * @description       : 
 * @author            : Tuba Yakar
 * @group             : 
 * @last modified on  : 01-02-2023
 * @last modified by  : 
**/

public class LeadQueueable implements Queueable{
    
    private Lead singleLead;
    
    
    
    public LeadQueueable(Lead singleLead){
        this.singleLead = singleLead;
        
    }
    
    public void execute(QueueableContext context){
        system.debug('Queueable Apex is working...');
        
        insert singleLead;
        system.debug('New Lead is created...Info:  '+singleLead);
    }
    
    
    
}


/*

-------------ANONYMOUS WINDOW-------------

Lead testLead = New Lead();
testLead.FirstName = 'Tuba';
testLead.LastName = 'Yakar';
testLead.Company = 'Triforcia';

Id LeadJobId = System.enqueueJob(New LeadQueueable(testLead));

*/
