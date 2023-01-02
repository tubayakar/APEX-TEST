Map<Id,Lead> leadMap = New Map<Id,Lead>([SELECT Id, FirstName, LastName FROM Lead]);

LeadEditing.toUpperName(leadMap.keySet());