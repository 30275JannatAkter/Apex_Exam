public with sharing class Q_05 {
    /*
    ANswer a
     weaknesses in the current error-handling implementation
     this error just handle the default error , its not handle the specific database eroror or logig eroor 
    
     // answer c

     when a dml operation execute we should handle the specific  DmlException  exception  that is show the specific error.
    
    */

    // answr b
   public static  class  sd{
    try {
insert leadsToInsert;
} catch (DmlException e) {
System.debug('Error' e.Message);
}
}

}