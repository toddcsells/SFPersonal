trigger OpportunityMain on Opportunity (after update, after insert) {
    OpportunityProjectController.executeTrigger(trigger.isinsert, trigger.isafter, trigger.old, trigger.new, trigger.oldmap, trigger.newmap);
    
}