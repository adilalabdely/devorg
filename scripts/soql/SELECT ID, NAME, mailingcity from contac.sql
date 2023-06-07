// using where as a filter 
SELECT ID, NAME, mailingcity from contact where mailingcity = 'PARIS' 

SELECT ID, NAME, mailingcity from contact where name like '%a%'

SELECT ID, NAME, firstName, mailingcity from contact where firstname like 't_m'

SELECT ID, NAME, PROJECT_NAME__C FROM SALESFORCE_PROJECT__C where Project_name__c like '%p%'

select id, name, phone, mailingcity from contact where mailingcity !=null
select id, name, phone, mailingcity from contact where mailingcity !=''

select id, name, phone, website, numberofemployees from account where numberofemployees >100
select id, name, phone, website, numberofemployees from account where numberofemployees <>120
select id, name, phone, website, numberofemployees from account where numberofemployees !=120

select id, name, phone, website, numberofemployees from account where website != null and numberofemployees >500
select id, name, phone, website, numberofemployees from account where website != null or numberofemployees >500

select id, name, phone, mailingcity from contact where mailingcity in ('Paris' , 'dc' ,'ny')

select id, name, phone, createddate from account where name != '' order by createddate desc limit 10

select id, name, accountid, closeDate, amount from opportunity where closeDate = tomorrow

select id, name, subject__c, status__c, salesforce_project__c, salesforce_project__r.project_name__c, salesforce_project__r.status__c  from salesforce_ticket__c

select id, name, amount, closedate, account.annualrevenue, account.website from opportunity

select id, name, (select name, amount from opportunities where amount != null), (select name, email from contacts) from account

select count(id), count(shippingcity), industry, sum(annualrevenue) from account group by industry

select sum(salary__c), avg(salary__c), country__c from employee__c group by country__c

select sum(salary__c), avg(salary__c), department__r.name__c from employee__c group by department__r.name__c

select sum(salary__c), avg(salary__c), department__r.name__c from employee__c group by department__r.name__c having avg(salary__c) > 900000

select name, count(id) from account group by name having count(id)>1

select country__c, count(id) from employee__c group by country__c having count(id)>3