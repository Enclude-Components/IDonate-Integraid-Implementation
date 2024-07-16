public with sharing class IDonateDonation {
    public Integer id { get; set; }
    public Decimal amount { get; set; }
    public String donationCurrency { get; set; } // JSON property "currency" is a reserved key word
    public String donorFname { get; set; }
    public String donorLname { get; set; }
    public String fundraiserTitle { get; set; }
    public Integer pageId { get; set; }
    public Decimal fundraiserTotal { get; set; }
    public Date fundraiserCreatedOn { get; set; }
    public Date fundraiserEndsOn { get; set; }
}