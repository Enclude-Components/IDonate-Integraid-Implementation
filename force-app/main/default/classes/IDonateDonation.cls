public with sharing class IDonateDonation {
    @AuraEnabled
    public Integer id { get; set; }
    @AuraEnabled
    public Decimal amount { get; set; }
    @AuraEnabled
    public String donationCurrency { get; set; } // JSON property "currency" is a reserved key word
    @AuraEnabled
    public String donorFname { get; set; }
    @AuraEnabled
    public String donorLname { get; set; }
    @AuraEnabled
    public String fundraiserTitle { get; set; }
    @AuraEnabled
    public Integer pageId { get; set; }
    @AuraEnabled
    public Decimal fundraiserTotal { get; set; }
    @AuraEnabled
    public Date fundraiserCreatedOn { get; set; }
    @AuraEnabled
    public Date fundraiserEndsOn { get; set; }
}