# IDonate-Integraid-Implementation

An implementation of the Integraid package, configured to receive and process DonorImport donation requests.

<a href="https://github.com/Enclude-Components/IDonate-Integraid-Implementation/releases/latest">
  <img alt="Install Latest Release"
       src="https://img.shields.io/badge/Install%20Latest%20Release-238636?style=for-the-badge&logoColor=white&logo=DocuSign">
</a>

## Contents
- Apex Classes
    - GetIDonateDonationBodyInvocable
    - IDonateDonation
    - IDonateDonationJSONParser
- Custom Metadata
    - Endpoint
        - IDonate Donation
- Flows
    - Process IDonate Integraid Request

## Sample Donation Request
```json
{
    "id": 2915262,
    "amount": 48.78,
    "currency": "EUR",
    "donorFname": "Bill",
    "donorLname": "Testington",
    "fundraiserTitle": "Bill’s Fundraising Page",
    "pageId": 11500000,
    "fundraiserTotal": "1152.81",
    "fundraiserCreatedOn": "2024-05-30",
    "fundraiserEndsOn": "2024-08-06"
}
```

## Development
To work on this project in a scratch org [Set up CumulusCI](https://cumulusci.readthedocs.io/en/latest/tutorial.html) (if you haven't already)

### Create a Feature Branch and Dev Scratch Org
1. Create a feature branch called `feature/my_feature_name` [More info on CCI Branch Naming Convention](https://cumulusci.readthedocs.io/en/latest/cumulusci-flow.html)
2. From the created branch, run `cci flow run dev_org --org dev` to deploy this project to a scratch org.
3. Run `cci org browser dev` to open the org in your browser.

### Make and Capture a Declarative Change
[More Info on CCI Development](https://cumulusci.readthedocs.io/en/stable/dev.html#develop-a-project)
1. Make a declarative change in the scratch org (ex. Create a custom field)
2. Run `cci flow run list_changes --org dev` to list all changes
3. ***Carefuly inspect the listed metadata to ensure it belongs in the package***. This is easier if you make small changes and list/retrieve them often.
4. Run `cci flow run retrieve_changes --org dev -o exclude "Profile:,Settings:"` to retrieve changed metadata, excluding any unwanted metadata types
5. If you have unwanted metadata types in your scratch org's change history (metadata that you never intend to retrieve, such as profiles,) you can reset them by running `cci flow run list_changes --org dev --snapshot true`.

### Make a Pull Request to the Main branch
1. Commit any changes to your current feature branch. You should do this often.
2. Create a pull request to Main and assign a reviewer

## Release

### Beta
After the pull request is reviewed, ***but before it's merged to main***, a beta version should be released to ensure the feature branch will successfully build. [More Info on Releasing Unlocked Packaged in CCI](https://cumulusci.readthedocs.io/en/stable/unlocked-package.html)

1. Release a Beta Version
```bash
cci flow run release_unlocked_beta --org dev
```

2. Test Deploy the Beta Version
```bash
cci flow run ci_beta --org beta
```

### Production
3. Merge the feature branch to main

4. Promote to a Production Version. ***This promotes the latest beta version by default***
```bash
cci flow run release_unlocked_production --org release
```
