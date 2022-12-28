/**
 * @description       : 
 * @author            : Tuba Yakar
 * @group             : 
 * @last modified on  : 12-28-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public class Advertisement {
    
    
    public integer no;
    public string name;
    private string code;
    public integer amount;
    public static integer totalAmount=0;
    private string owner;
    private boolean status=false;
    private boolean mustDelete;
    
    
    
    public void enterNo(integer no){
        this.no = no;
        system.debug('Advertisement No: '+no);
    }
    
    public void enterName(string name){
        this.name = name;
        system.debug('Advertisement Name: '+name);
    } 
    
    public void enterCode(string code){
        this.code = code;
        system.debug('Advertisement Code: '+code);
    }
    
    public void enterAmount(integer amount){
        this.amount = amount;
        system.debug('Advertisement Amount: '+amount);
        totalAmount+=amount;
        system.debug('Advertisement Total Amount: '+totalAmount);
    }
    
    public void enterOwner(string owner){
        this.owner = owner;
        system.debug('Advertisement Owner: '+owner);
    }
    
    public void enterNewAd(){
        status = true;
        system.debug('Advertise status is entered as new advertisement...');
    }

    public void checkInfo(){
        if(status==false){
            system.debug('This advertisement is old...');
            this.mustDelete=true;
            system.debug('This Advertisement should be delete...');
        }else{
            system.debug('This advertisement is new...');
        }
    }
    
  
    
    
    
}