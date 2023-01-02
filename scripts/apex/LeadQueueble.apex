Lead testLead = New Lead();
testLead.FirstName = 'Tuba';
testLead.LastName = 'Yakar';
testLead.Company = 'Triforcia';

Id LeadJobId = System.enqueueJob(New LeadQueueable(testLead));