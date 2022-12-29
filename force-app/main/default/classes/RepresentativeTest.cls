/**
 * @description       : 
 * @author            : Tuba Yakar
 * @group             : 
 * @last modified on  : 12-29-2022
 * @last modified by  : Tuba Yakar
**/
@isTest
public class RepresentetiveTest {
    
    @isTest
    public static void nameTest1(){
        Representative.enterName('Tuba','Yakar');
    }
    
    @isTest
    public static void titleTest1(){
        Representative.enterTitleSection('Sales');
    }
    
    @isTest
    public static void incomeTest1(){
        Representative.calIncome(400,200);
    }
    
    @isTest
    public static void bestRepTest1(){
        Representative.isBestRep();
        }
    
    @isTest
    public static void bonusFeeTest1(){
        Representative.hasBonusFee();
    }

    
}
