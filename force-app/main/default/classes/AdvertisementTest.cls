/**
 * @description       : 
 * @author            : Tuba Yakar
 * @group             : 
 * @last modified on  : 12-28-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public class AdvertisementTest {

    @isTest
    public static void enterNoTest1(){
        Advertisement a = new Advertisement();
        a.enterNo(1);
    }
    
    @isTest
    public static void enterNameTest1(){
        Advertisement a = new Advertisement();
        a.enterName('A0001');
    }
    
    @isTest
    public static void enterCodeTest1(){
        Advertisement a = new Advertisement();
        a.enterCode('XA000ZXT');
    }
    
    @isTest
    public static void enterAmountTest1(){
        Advertisement a = new Advertisement();
        a.enterAmount(9500);
    }
    
   @isTest
    public static void enterOwnerTest1(){
        Advertisement a = new Advertisement();
        a.enterOwner('Tuba Yakar');
    }
    
    @isTest
    public static void enterNewAdTest1(){
        Advertisement a = new Advertisement();
        a.enterNewAd();
    }
    
    @isTest
    public static void checkInfoTest1(){
        Advertisement a = new Advertisement();
        a.checkInfo();
    }
    
    
}