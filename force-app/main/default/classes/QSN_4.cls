public with sharing class QSN_4 {
   /*
   answer A

    record-level access : record level access means how many record this user can see or this profile has how many access f record data to see 
    
    and object/field-level access: how many fields and object have access for this user , 

    Anser b
you would design the Apex class declaration using the 'with sharing'  kwywprd so that user can only access the permission data.
 
and when perform the DML operation I use he " with USER_Mode" so that the field level access applied

answer c


 CRUD and field-level security should be enforced when querying or updating the fields used 'with sharing'   keyword when class define 
 and when DML operation executes should use " with USER_Mode"

/answer d
 Identify the security risks this creates and describe how I would redesign the service securely : I would used the 
 database. ACCES level: USER_MODE

   
   */ 
}