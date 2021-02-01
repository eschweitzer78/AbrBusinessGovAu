@isTest
private class AbrBusinessGovAuTest {
    @isTest static void LookupSalesforceABNwithHistoryOK() {
        Test.setMock(WebServiceMock.class, new AbrBusinessGovAuMock_ABNResponse_OK());
        
        AbrBusinessGovAuAbrXMLSearch.Payload pl = AbrBusinessGovAuCallout.ABNLookup('91109182989', true);
        
        System.assertEquals(null, pl.response.exception_x, 'There should be no exception_x in response');
        System.assertNotEquals(null, pl.response.businessEntity, 'There should be a businessEntity in response');
        System.assertEquals('109182989', pl.response?.businessEntity?.ASICNumber, 'There should be the right businessEntity ASICNumber in response');
        System.assertEquals(4, pl.response?.businessEntity?.mainBusinessPhysicalAddress.size(), 'There should be the 4 addresses for businessEntity in response');    
    }

    @isTest static void LookupSalesforceABNwithHistory_WrongABN_NOK() {
        Test.setMock(WebServiceMock.class, new AbrBusinessGovAuMock_ABNResponse_KO());
        
        AbrBusinessGovAuAbrXMLSearch.Payload pl = AbrBusinessGovAuCallout.ABNLookup('SFDC Australia', true);

        System.assertNotEquals(null, pl.response.exception_x, 'There should be an exception_x in response');
        System.assertEquals('WEBSERVICES', pl.response.exception_x?.exceptionCode, 'There should be a WEBSERVICES code in the response exception');
        System.assertEquals(null, pl.response.businessEntity, 'There should be no businessEntity in response');
    }

    @isTest static void LookupSalesforceByName() {
        Test.setMock(WebServiceMock.class, new AbrBusinessGovAuMock_NameResponse_OK());
        
        AbrBusinessGovAuAbrXMLSearch.Payload pl = AbrBusinessGovAuCallout.NameLookup('SFDC Australia');

        System.assertEquals(null, pl.response.exception_x, 'There should be no exception_x in response');
        System.assertEquals(null, pl.response.businessEntity, 'There should be no businessEntity in response');
        System.assertNotEquals(null, pl.response.searchResultsList, 'There should be a searchResultsList in response');
        System.assertEquals(2, pl.response.searchResultsList?.numberOfRecords, 'There should be 2 records in the searchResultList');
    }
}