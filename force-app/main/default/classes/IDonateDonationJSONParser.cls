public with sharing class IDonateDonationJSONParser {
    public static IDonateDonation parseDonation(String jsonString) {
        Map<String, Object> jsonMap = (Map<String, Object>) JSON.deserializeUntyped(jsonString);
        IDonateDonation donation = new IDonateDonation();
        donation.id = (Integer) jsonMap.get('id');
        donation.amount = (Decimal) jsonMap.get('amount');
        donation.donationCurrency = (String) jsonMap.get('currency'); // Map currency to donationCurrency
        donation.donorFname = (String) jsonMap.get('donorFname');
        donation.donorLname = (String) jsonMap.get('donorLname');
        donation.fundraiserTitle = (String) jsonMap.get('fundraiserTitle');
        donation.pageId = (Integer) jsonMap.get('pageId');
        donation.fundraiserTotal = Decimal.valueOf((String) jsonMap.get('fundraiserTotal'));
        donation.fundraiserCreatedOn = Date.valueOf((String) jsonMap.get('fundraiserCreatedOn'));
        donation.fundraiserEndsOn = Date.valueOf((String) jsonMap.get('fundraiserEndsOn'));
        return donation;
    }
}