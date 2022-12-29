/**
 * @description       : 
 * @author            : Tuba Yakar
 * @group             : 
 * @last modified on  : 12-29-2022
 * @last modified by  : Tuba Yakar
**/
public class Representative {
    
    public static string firsName;
    public static string lastName;
    public static string fullName;
    public static string titleSection;
    public static integer hours;
    public static integer incomePerHour;
    private static integer income;
    private static integer totalIncome=0;
    private static boolean bestRep;
    private static boolean bonusFee;
    
    
    public static void enterTitleSection(string titleSection){
        titleSection = titleSection;
        system.debug('Title: ' + titleSection + ' ' + 'Representative');
        
    }
    
    public static void enterName(string firstName, string lastName){
        fullName = firstName + ' ' + lastName;
        system.debug('Representative Name: ' + fullName);
    }
    
    public static void calIncome(integer hours, integer incomePerHour){
        
        income = hours*incomePerHour;
        system.debug('Income: '+ income);
        totalIncome+=income;
        system.debug('Total Income: '+ totalIncome);
        
    }
        
    public static void isBestRep(){
        if(totalIncome>=100000){
            bestRep=true;
            system.debug('This representative is the best representative...');
        }else{
            bestRep=false;
            system.debug('This representative is not the best representative...');
        }
    }
    
    public static void hasBonusFee(){
        if(bestRep==true){
            bonusFee=true;
            system.debug('This representative has bonus fee...');
        }else{
            bonusFee=false;
            system.debug('This representative doesn\'t have bonus fee...');
        }
    }
    

}
