public with sharing class QSN_02 {
   //Answer A

   /*
   for (Opportunity opp : Trigger.new) {
Account acc = [
SELECT Id, Strategic__c
FROM Account
WHERE Id = :opp.AccountId
]

this is the first wrong aproch because inside the loop we use the select operation. so that each of the time call the database this bad approch

{if (totalAmount >= 5000000) {
acc.Strategic__c = true;
update acc;}

this is also another technical problem because we update data individually , this is bad practice nad can be govornor limit . we should store first the list of value then we can update the list at once


//Answer B

when we run this trigger so many data we face the 
   Salesforce governor limits because for calling one by one database update the salesforce Salesforce governor limits will end and the operation get error , for this we have to DML operation outside the loop.
   */


   // Answer C
   // below is the rewite code 

/*trigger OpportunityTrigger on Opportunity (after insert, after update) {
list<Opportunity> oppr =new list<Opportunity>();
    for (Opportunity opp : Trigger.new) {
   
    }
    
    Account acc = [
    SELECT Id, Strategic__c
    FROM Account
    WHERE Id IN (opp.AccountId)
    ];
    List<Opportunity> opportunities = [
    SELECT Id, Amount
    FROM Opportunity
    WHERE AccountId = :opp.AccountId
    ];
    Decimal totalAmount = 0;
    for (Opportunity item : opportunities) {
    if (item.Amount != null) {
    totalAmount += item.Amount;
    }
    }
    if (totalAmount >= 5000000) {
    acc.Strategic__c = true;
    
    }
    update acc;
    }
}
//Answer D 
we can define a service class that recevices all of the trigger.new value then using this value inside the class we implement the business logic.
If we keep all of the new updated opp.AccountId  in a list , the outside the loop we run the select quey for this list using the 'IN' operator 

and in the last update section we can store all of the object value in a list then we can update the list at once


*/


}