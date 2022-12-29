/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-29-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class CreateNewUserTest {
    
    @isTest
    public static void nameTest1(){
        CreateNewUser u = new CreateNewUser();
        string result = u.nameMethod('Tuba','Yakar');
        system.assertEquals('Tuba Yakar',result);
    }
    
    @isTest
    public static void checkTitleWithCodeTest1(){
        CreateNewUser u = new CreateNewUser();
        u.checkTitleWithCode(12);
        u.checkTitleWithCode(13);
    }
    
}