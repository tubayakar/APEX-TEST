/**
 * @description       : 
 * @author            : Tuba Yakar
 * @group             : 
 * @last modified on  : 01-02-2023
 * @last modified by  : 
**/
public class LeadEditing {
    
    @future
    public static void toUpperName(Set<Id> multiID){
        
        List<Lead> multiLead = [SELECT Id, FirstName, LastName FROM Lead WHERE Id=:multiID];
        
        for(Lead singleLead:multiLead){
            singleLead.LastName = singleLead.LastName.toUpperCase();
            system.debug(singleLead);
        }
        
        update multiLead;   
    }
    
}
