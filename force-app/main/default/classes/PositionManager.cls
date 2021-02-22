public class PositionManager {
    public boolean createPosition(string posName, String jobDescription){
        Position__c pos = new Position__c(name = posName);
        pos.Job_Description__c = jobDescription;
        insert pos;
        return true;
    
    } 
    public boolean deletePosition(id recId){
        Position__c pos = new Position__c(id = recId);
           delete pos;
           return true;
        
    }
    public List<Job_Application__c> getAllJobApplications(Id recId){
     Position__c Position = [select name, (select name from Job_Applications__r) from Position__c where Id= :recId];
     return position.Job_Applications__r;   
    }
}