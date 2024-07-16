@IsTest
public class GetIDonateDonationBodyInvocable_TEST {
    @IsTest
    public static void testGetIDonateDonationBody() {
        // Prepare test data
        String validJson = '{"id": 2915262, "amount": 48.78, "currency": "EUR", "donorFname": "Florian", "donorLname": "Stravock", "fundraiserTitle": "Florian’s Fundraising Page", "pageId": 11500000, "fundraiserTotal": "1152.81", "fundraiserCreatedOn": "2024-05-30", "fundraiserEndsOn": "2024-08-06"}';
        String invalidJson = '{"id": "invalid"}'; // Invalid JSON for testing error handling
        
        List<String> bodies = new List<String> { validJson, invalidJson };

        // Call the invocable method
        List<GetIDonateDonationBodyInvocable.Result> results = GetIDonateDonationBodyInvocable.getIDonateDonationBody(bodies);

        // Assertions
        System.assertEquals(2, results.size(), 'There should be two results');

        // Validate the first result (valid JSON)
        GetIDonateDonationBodyInvocable.Result validResult = results[0];
        System.assertNotEquals(null, validResult.donation, 'Donation should not be null for valid JSON');
        System.assertEquals(2915262, validResult.donation.id, 'ID should match for valid JSON');
        System.assertEquals(48.78, validResult.donation.amount, 'Amount should match for valid JSON');
        System.assertEquals('EUR', validResult.donation.donationCurrency, 'Currency should match for valid JSON');
        System.assertEquals('Florian', validResult.donation.donorFname, 'Donor first name should match for valid JSON');
        System.assertEquals('Stravock', validResult.donation.donorLname, 'Donor last name should match for valid JSON');
        System.assertEquals('Florian’s Fundraising Page', validResult.donation.fundraiserTitle, 'Fundraiser title should match for valid JSON');
        System.assertEquals(11500000, validResult.donation.pageId, 'Page ID should match for valid JSON');
        System.assertEquals(1152.81, validResult.donation.fundraiserTotal, 'Fundraiser total should match for valid JSON');
        System.assertEquals(Date.valueOf('2024-05-30'), validResult.donation.fundraiserCreatedOn, 'Fundraiser created on should match for valid JSON');
        System.assertEquals(Date.valueOf('2024-08-06'), validResult.donation.fundraiserEndsOn, 'Fundraiser ends on should match for valid JSON');

        // Validate the second result (invalid JSON)
        GetIDonateDonationBodyInvocable.Result invalidResult = results[1];
        System.assertEquals(null, invalidResult.donation, 'Donation should be null for invalid JSON');
    }
}