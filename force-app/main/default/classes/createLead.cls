/**
 * @description       : 
 * @author            : Tuba Yakar
 * @group             : 
 * @last modified on  : 12-28-2022
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