DML_Assign1.insertRecords();
DML_Assign1.updateRecords();

delete [select id, name from account where createddate = yesterday];