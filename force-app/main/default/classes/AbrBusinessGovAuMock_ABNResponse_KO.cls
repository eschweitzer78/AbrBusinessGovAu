public class AbrBusinessGovAuMock_ABNResponse_KO implements WebServiceMock {
    public void doInvoke(Object stub, Object request, Map<String, Object> response, String endpoint, String soapAction,
                         String requestName, String responseNS, String responseName, String responseType) {

        abrBusinessGovAuAbrxmlsearch.ABRSearchByABNResponse_element responseElt = new abrBusinessGovAuAbrxmlsearch.ABRSearchByABNResponse_element();

        abrBusinessGovAuAbrxmlsearch.ExternalRequestIdentifierSearch identifierSearchRequest = new abrBusinessGovAuAbrxmlsearch.ExternalRequestIdentifierSearch();
        identifierSearchRequest.identifierValue = 'SFDC Australia';
        identifierSearchRequest.identifierType = 'ABN';
        identifierSearchRequest.history = 'Y';
        identifierSearchRequest.authenticationGUID = '12345678-9abc-def0-1234-56789abcdef0';

        abrBusinessGovAuAbrxmlsearch.ExternalRequest payloadRq = new abrBusinessGovAuAbrxmlsearch.ExternalRequest();
        payloadRq.identifierSearchRequest = identifierSearchRequest;

        abrBusinessGovAuAbrxmlsearch.Response payloadRs = new abrBusinessGovAuAbrxmlsearch.Response();
        payloadRs.usageStatement = null;
        payloadRs.dateRegisterLastUpdated = Date.valueOf('0001-01-01');
        DateTime dt = (DateTime) JSON.deserialize('"2021-02-01T05:41:32.186Z"', DateTime.class);
        payloadRs.dateTimeRetrieved = DateTime.newInstance(dt.getTime());
        payloadRs.businessEntity = null;

        abrBusinessGovAuAbrxmlsearch.ResponseExceptionT ex = new abrBusinessGovAuAbrxmlsearch.ResponseExceptionT();
        ex.exceptionCode = 'WEBSERVICES';
        ex.exceptionDescription = 'Search text is not a valid ABN or ACN';

        payloadRs.exception_x = ex;
        payloadRs.abnList = null;
        payloadRs.searchResultsList = null;

        abrBusinessGovAuAbrxmlsearch.Payload payload = new abrBusinessGovAuAbrxmlsearch.Payload();
        payload.request = payloadRq;
        payload.response = payloadRs;

        responseElt.ABRPayloadSearchResults = payload;

        response.put('response_x', responseElt);
    }
}