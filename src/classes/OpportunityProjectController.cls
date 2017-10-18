public with sharing class OpportunityProjectController {
 
    public static void executeTrigger(boolean isinsert, boolean isafter, list<opportunity> opplstold, list<opportunity> opplstnew, map<id, opportunity> oppmapold, map<id, opportunity> oppmapnew){
    	if (isinsert){
    		
    		InsertProjects(oppmapnew.keyset());
    	}
    }
    
    @future
    private static void InsertProjects(set<ID> OptyIDs){
    	Project__c[] projects = new list<Project__c>();
    	
		Opportunity[] newOptys = new list<Opportunity>([SELECT Name FROM Opportunity where ID IN : OptyIDs]);
		
		for (Opportunity opty : newOptys){
			projects.add(new Project__c(Name = opty.name, Opportunity__c = opty.id));		
		}
		
		if (projects.size() > 0)
			insert projects;
    	
    	
    }
}