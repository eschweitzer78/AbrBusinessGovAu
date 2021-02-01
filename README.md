# AbrBusinessGovAuLookup

A minimalist Apex/Aura project to perform loookus on the Business Registry of the Australian Government. Bring your own Authentication GUID.

## What is included?

- A set of APEX classes to perform the lookup
- An APEX test class
- A set of Aura widgets to graphically trigger a lookup
- A Lighning App page with the Aura widgets
- A Custom Metadata Type to set up your Authentication GUID
- A Remote Site Setting to authorize access to the abr.business.gov.au site

## Deploy package

You can of course clone this repo and deploy using `sfdx` or Visual Studio.
Alternatively, deploy from here:

<a href="https://githubsfdeploy.herokuapp.com?owner=eschweitzer78&repo=AbrBusinessGovAuLookup&ref=main">
  <img src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/src/main/webapp/resources/img/deploy.png" alt="Deploy to Salesforce" />
</a>

## Configure Your Authentication GUID

Check the details, including usage terms, on the [Business Registry website](https://abr.business.gov.au/Tools/WebServices), accept the web services agreement and get your GUID, which will be sent to you by email.

Once received, in the Salesforce setup, manage records for the "AbrBusinessGovAu Setting" custom metadate type (Setup > Custom Code > Custom Metadata Types).

On the management screen, create a new record. Make sure your select the *Authentication GUID* type, and enter your GUID as the value. The GUID has a format like `1234567898-abcd-1234-abcd-123456789ab`. 

## Activate the ABR Lookup page

In Setup, navigate to the Lightning App Builder and locate the `ABR_Lookup` app page. Edit it in order to activate it.

## Test It

Use the application waffle in the upper right corner of the screen to navigate to the `ABR Lookup` application. Enter either an ABN or a partial company name, and hit the `Lookup` button.

## What's next

Our future plans include:
- Extending the APEX class for more operations and more filters,
- Enabling for use from a Flow
- Rewriting the Aura widgets in LWC
