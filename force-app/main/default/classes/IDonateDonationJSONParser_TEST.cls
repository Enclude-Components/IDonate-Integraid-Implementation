@IsTest
public class IDonateDonationJSONParser_TEST {
    @IsTest
    public static void parse() {
        // JSON string to test
        String jsonString = '{"id": 2915262, "amount": 48.78, "currency": "EUR", "donorFname": "Florian", "donorLname": "Stravock", "fundraiserTitle": "Florian’s Fundraising Page", "pageId": 11500000, "fundraiserTotal": "1152.81", "fundraiserCreatedOn": "2024-05-30", "fundraiserEndsOn": "2024-08-06"}';

        // Parse the JSON
        IDonateDonation donation = IDonateDonationJSONParser.parseDonation(jsonString);

        // Assertions
        System.assertEquals(2915262, donation.id, 'ID should match');
        System.assertEquals(48.78, donation.amount, 'Amount should match');
        System.assertEquals('EUR', donation.donationCurrency, 'Currency should match');
        System.assertEquals('Florian', donation.donorFname, 'Donor first name should match');
        System.assertEquals('Stravock', donation.donorLname, 'Donor last name should match');
        System.assertEquals('Florian’s Fundraising Page', donation.fundraiserTitle, 'Fundraiser title should match');
        System.assertEquals(11500000, donation.pageId, 'Page ID should match');
        System.assertEquals(1152.81, donation.fundraiserTotal, 'Fundraiser total should match');
        System.assertEquals(Date.valueOf('2024-05-30'), donation.fundraiserCreatedOn, 'Fundraiser created on should match');
        System.assertEquals(Date.valueOf('2024-08-06'), donation.fundraiserEndsOn, 'Fundraiser ends on should match');
    }
}