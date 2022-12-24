/**
 * @description       : 
 * @author            : Tuba Yakar
 * @group             : 
 * @last modified on  : 12-23-2022
 * @last modified by  : Tuba Yakar
**/
public class RandomContactFactory {
	
    public static List<Contact> generateRandomContacts(Integer numctn, string lastname){
        List<Contact> contacts = new List<Contact>();
        for(Integer i=0;i<numctn;i++){
            Contact ctn = new Contact(FirstName = 'Test' +i, LastName = lastname);
            contacts.add(ctn);
           
        }
        return contacts;
    }
}
