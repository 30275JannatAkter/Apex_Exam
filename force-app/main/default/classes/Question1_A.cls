public with sharing class Question1_A {

       /*public List<List<SObject>> apexService(string id){

        List<List<SObject>> AllAccounts =[select Id, Name (Select Id, Name, Email, Phone from contact), (SELECT Id, Name, StageName, Amount, CloseDate from Opportunities)
        FROM Account
        WHERE Id = :Id
        With USER_MODE;]
       }*/

//Answer A
    public List<List<SObject>> apexService(string id){
        return [find :id in all fields returning Account(Id, Name),Contact(Id, Name, Email, Phone),Opportunities(Id, Name, StageName, Amount, CloseDate) with USER_MODE];

    }
//Answer B
    public void TextBaseSearch(){
        
        List<List<SObject> > AllSearchResult = [find 'ABC' in all fields returning Account( Name),Contact( Name) with USER_MODE];
        List<Account> Acc = (List<Account>)AllSearchResult[0];
        List<Contact> Con = (List<Contact>)AllSearchResult[1];
    }

    //This SOSL querry  mechanism is suitable for this requirement  because we can search by teaxt with all the require object , this query returns both Account and Contact records with the name 'ABC'.When we don't know in which object contain the string then the SOSL query is best for text base search

// Answer C
/*
when we use "with sharing" in class declaration we define the record level acess because because using this keyword we define this operation can access only those data that have permission of this user , user can not access other's data. 

and In database query when we addd "With user_Mode" this defines the field level access, so user can operation only those fields that have access permission of this specific user.
*/

// 

//Answer D

/*
when we have to search for muliple userId
we list the account Id then we can process the Batch apex 
we would not DML operation inside the for loop 
*/
}

