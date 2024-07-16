public with sharing class GetIDonateDonationBodyInvocable {
    @InvocableMethod(
        label='Get IDonate Donation Body'
        description='Takes in the IntegraidRequest body from an IDonate Donation request and converts it to an IDonate Donation for processing'
        category='Integraid'
        iconName='slds:standard:data_mapping'
    )
    public static Result[] getIDonateDonationBody(String[] bodies) {
        Result[] results = new List<Result>();
        for (String body : bodies) {
            results.add(
                new Result(body)
            );
        }
        return results;
    }
    public class Result {
        @InvocableVariable(
          label='IDonate Donation'
          description='Parsed IDonate Donation request body, or null if body could not be parsed'
        )
        public IDonateDonation donation;
        public Result(String jsonBody) {
            try {
                donation = IDonateDonationJSONParser.parseDonation(jsonBody);
            } catch(Exception e) {
                donation = null;
            }
        }
      }
}