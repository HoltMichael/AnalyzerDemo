public class SimpleAccount {
    //used to serialize data passed back to aura client
    @AuraEnabled public String id { get; set; }
    @AuraEnabled public String name { get; set; }
    public String phone { get; set; }
    
    // Trivial constructor, for server-side Apex -> client-side JavaScript
    public SimpleAccount(String id, String name, String phone) {
        this.id = id;
        this.name = name;
        this.phone = phone;
    }
    
    // Default, no-arg constructor, for client-side -> server-side
    public SimpleAccount() {}
    
}