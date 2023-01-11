/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-29-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class CreateNewUser {
    
    public string name;
    public integer code;
    public boolean serviceRep;
    public boolean salesRep;
    public static integer salesList=0;
    public static integer serviceList=0;
    public date startDate;
    
    
    
    public string nameMethod(string firstName, string lastName){
        name = firstName + ' ' + lastName;
        return name;
        
    }
    
    public void checkTitleWithCode(integer code){
        
        if(Math.mod(code, 2)==0){
            salesRep=true;
            system.debug('salesRep: '+ salesRep);
            system.debug('This new user is a sales representative...');
            
            
            salesList+=1;
            system.debug('Sales List Number: '+salesList);
            
            
        }else if(Math.mod(code, 2)==1){
            serviceRep=true;
            system.debug('serviceRep: '+ serviceRep);
            system.debug('This new user is a service representative...');
            
            serviceList+=1;
            system.debug('Service List Number: '+serviceList);
        }

    }
    
    public void checkStartDate(date startDate){
        this.startDate=startDate;
        
        if(startDate==date.today()){
            system.debug('This user started today...');
        }else if(startDate<date.today()){
            system.debug('This user started in the past...');
        }else{
            system.debug('This user will start in the future...');
        }
    }
 
    
}
