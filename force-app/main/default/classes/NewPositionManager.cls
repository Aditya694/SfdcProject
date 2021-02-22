public class NewPositionManager implements PositionInterface{
public Id newPosition(String posname, String description) {
Position__c pos = new Position__c();
pos.name = posname;
pos.Job_Description__c = description;
insert pos;
return pos.Id;
}
public boolean modifyPositionDescription(Id recId, String newDescription) {
Position__c pos = new Position__c();
pos.id = recId;
pos.Job_Description__c = newDescription;
update pos;
return true;
}
public boolean modifyPositionStartDate(Id recId, Date newStart) {
Position__c pos = new Position__c();
pos.id = recId;
pos.Start_Date__c = newStart;
update pos;
return true;
}
public boolean modifyPositionPriority(Id recId, String newPriority){
Position__c pos = new Position__c();
pos.id = recId;
pos.Priority__c = newPriority;
update pos;
return true;
}
public boolean modifyPositionDepartment(Id recId, String newDepartment){
Position__c pos = new Position__c();
pos.id = recId;
pos.Department__c = newDepartment;
update pos;
return true;
}
}