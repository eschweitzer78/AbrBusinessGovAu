public class AbrBusinessGovAuMock_NameResponse_OK implements WebServiceMock {
    public void doInvoke(Object stub, Object request, Map<String, Object> response, String endpoint, String soapAction,
                         String requestName, String responseNS, String responseName, String responseType) {

        abrBusinessGovAuAbrxmlsearch.ABRSearchByNameResponse_element responseElt = new abrBusinessGovAuAbrxmlsearch.ABRSearchByNameResponse_element();

        abrBusinessGovAuAbrxmlsearch.ExternalRequestNameSearch nameSearchRequest = new abrBusinessGovAuAbrxmlsearch.ExternalRequestNameSearch();
        nameSearchRequest.authenticationGUID = '12345678-9abc-def0-1234-56789abcdef0';
        nameSearchRequest.name = 'SFDC Australia';
        nameSearchRequest.filters = new abrBusinessGovAuAbrxmlsearch.ExternalRequestFilters();
        nameSearchRequest.filters.nameType = new abrBusinessGovAuAbrxmlsearch.ExternalRequestFilterNameType();
        nameSearchRequest.filters.nameType.tradingName = 'N';
        nameSearchRequest.filters.nameType.legalName = 'N';

        nameSearchRequest.filters.postcode = null;

        nameSearchRequest.filters.stateCode = new abrBusinessGovAuAbrxmlsearch.ExternalRequestFilterStateCode();
        nameSearchRequest.filters.stateCode.QLD = 'N';
        nameSearchRequest.filters.stateCode.NT = 'N';
        nameSearchRequest.filters.stateCode.SA = 'N';
        nameSearchRequest.filters.stateCode.WA = 'N';
        nameSearchRequest.filters.stateCode.VIC = 'N';
        nameSearchRequest.filters.stateCode.ACT = 'N';
        nameSearchRequest.filters.stateCode.TAS = 'N';
        nameSearchRequest.filters.stateCode.NSw = 'N';

        abrBusinessGovAuAbrxmlsearch.ExternalRequest payloadRq = new abrBusinessGovAuAbrxmlsearch.ExternalRequest();
        payloadRq.nameSearchRequest = nameSearchRequest;

        abrBusinessGovAuAbrxmlsearch.Response payloadRs = new abrBusinessGovAuAbrxmlsearch.Response();
        payloadRs.usageStatement = null;
        payloadRs.dateRegisterLastUpdated = Date.valueOf('0001-01-01');
        DateTime dt = (DateTime) JSON.deserialize('"2021-02-01T05:41:32.186Z"', DateTime.class);
        payloadRs.dateTimeRetrieved = DateTime.newInstance(dt.getTime());
        payloadRs.businessEntity = null;
        payloadRs.exception_x = null;
        payloadRs.abnList = null;

        payloadRs.searchResultsList = new abrBusinessGovAuAbrxmlsearch.ResponseSearchResultsList();
        payloadRs.searchResultsList.numberOfRecords = 2;
        payloadRs.searchResultsList.searchResultsRecord = new List<abrBusinessGovAuAbrxmlsearch.SearchResultsRecord>();

            abrBusinessGovAuAbrxmlsearch.SearchResultsRecord record = new abrBusinessGovAuAbrxmlsearch.SearchResultsRecord();
            record.ABN = new List<abrBusinessGovAuAbrxmlsearch.IdentifierSummary>();
                abrBusinessGovAuAbrxmlsearch.IdentifierSummary abn = new abrBusinessGovAuAbrxmlsearch.IdentifierSummary();
                abn.identifierValue = '91109182989';
                abn.identifierStatus = 'Active';
            record.ABN.add(abn);

            record.mainName = new abrBusinessGovAuAbrxmlsearch.OrganisationSimpleName();
            record.mainName.organisationName = 'SFDC Australia Pty Limited';
            record.mainName.score = 100;
            record.mainName.isCurrentIndicator = 'Y';

            record.mainBusinessPhysicalAddress = new List<abrBusinessGovAuAbrxmlsearch.AddressSimple>();
                abrBusinessGovAuAbrxmlsearch.AddressSimple addr = new abrBusinessGovAuAbrxmlsearch.AddressSimple();
                addr.stateCode = 'NSW';
                addr.postcode = '2000';
                addr.isCurrentIndicator = 'Y';

        payloadRs.searchResultsList.searchResultsRecord.add(record);

            record = new abrBusinessGovAuAbrxmlsearch.SearchResultsRecord();
            record.ABN = new List<abrBusinessGovAuAbrxmlsearch.IdentifierSummary>();
                abn = new abrBusinessGovAuAbrxmlsearch.IdentifierSummary();
                abn.identifierValue = '16078929585';
                abn.identifierStatus = 'Cancelled';
            record.ABN.add(abn);

            record.mainName = new abrBusinessGovAuAbrxmlsearch.OrganisationSimpleName();
            record.mainName.organisationName = 'S.H.A. FOODEX AUSTRALIA PTY LIMITED';
            record.mainName.score = 86;
            record.mainName.isCurrentIndicator = 'N';

            record.mainBusinessPhysicalAddress = new List<abrBusinessGovAuAbrxmlsearch.AddressSimple>();
                addr = new abrBusinessGovAuAbrxmlsearch.AddressSimple();
                addr.stateCode = 'NSW';
                addr.postcode = '2028';
                addr.isCurrentIndicator = 'Y';

        payloadRs.searchResultsList.searchResultsRecord.add(record);

        abrBusinessGovAuAbrxmlsearch.Payload payload = new abrBusinessGovAuAbrxmlsearch.Payload();
        payload.request = payloadRq;
        payload.response = payloadRs;

        responseElt.ABRPayloadSearchResults = payload;

        response.put('response_x', responseElt);
    }
}