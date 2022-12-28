/**
 * @description       : 
 * @author            : Tuba Yakar
 * @group             : 
 * @last modified on  : 12-23-2022
 * @last modified by  : Tuba Yakar
**/
@isTest
public class TestVerifyDate {

    static testMethod void testMethod1(){
        Date d = VerifyDate.CheckDates(system.today(),system.today()+1);
        Date d1 = VerifyDate.CheckDates(system.today(),system.today()+60);
    }
}
