/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-21-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class createLead {
	
    public void create(String fName,String lName){
        Lead singleLead = new Lead();
        singleLead.FirstName=fName;
        singleLead.LastName=lName;
        
        insert singleLead;
    }
}