public class AbrBusinessGovAuMock_ABNResponse_OK implements WebServiceMock {
    public void doInvoke(Object stub, Object request, Map<String, Object> response, String endpoint, String soapAction,
                         String requestName, String responseNS, String responseName, String responseType) {

        abrBusinessGovAuAbrxmlsearch.ABRSearchByABNResponse_element responseElt = new abrBusinessGovAuAbrxmlsearch.ABRSearchByABNResponse_element();

        abrBusinessGovAuAbrxmlsearch.ExternalRequestIdentifierSearch identifierSearchRequest = new abrBusinessGovAuAbrxmlsearch.ExternalRequestIdentifierSearch();
        identifierSearchRequest.identifierValue = '91109182989';
        identifierSearchRequest.identifierType = 'ABN';
        identifierSearchRequest.history = 'Y';
        identifierSearchRequest.authenticationGUID = '12345678-9abc-def0-1234-56789abcdef0';

        abrBusinessGovAuAbrxmlsearch.ExternalRequest payloadRq = new abrBusinessGovAuAbrxmlsearch.ExternalRequest();
        payloadRq.identifierSearchRequest = identifierSearchRequest;

        abrBusinessGovAuAbrxmlsearch.Response payloadRs = new abrBusinessGovAuAbrxmlsearch.Response();
        payloadRs.usageStatement = 'The Registrar of the ABR monitors the quality of the information available on this website and ' +
            'updates the information regularly. However, neither the Registrar of the ABR nor the Commonwealth guarantee that the ' +
            'information available through this service (including search results) is accurate, up to date, complete or accept any ' +
            'liability arising from the use of or reliance upon this site.';
        payloadRs.dateRegisterLastUpdated = Date.valueOf('2021-02-01');
        DateTime dt = (DateTime) JSON.deserialize('"2021-02-01T05:41:32.186Z"', DateTime.class);
        payloadRs.dateTimeRetrieved = DateTime.newInstance(dt.getTime());

        abrBusinessGovAuAbrxmlsearch.ResponseBusinessEntity businessEntity = new abrBusinessGovAuAbrxmlsearch.ResponseBusinessEntity();
        businessEntity.recordLastUpdatedDate = Date.valueOf('2014-03-07');

        businessEntity.ABN = new List<abrBusinessGovAuAbrxmlsearch.Identifier>(); 
            abrBusinessGovAuAbrxmlsearch.Identifier identifier = new abrBusinessGovAuAbrxmlsearch.Identifier();
            identifier.replacedFrom = (Date) JSON.deserialize('"0000-12-30"', Date.class);
            identifier.isCurrentIndicator = 'Y';
            identifier.identifierValue = '91109182989';
        businessEntity.ABN.add(identifier);

        businessEntity.entityStatus = new List<abrBusinessGovAuAbrxmlsearch.EntityStatus>();
            abrBusinessGovAuAbrxmlsearch.EntityStatus entityStatus = new abrBusinessGovAuAbrxmlsearch.EntityStatus();
            entityStatus.entityStatusCode = 'Active';
            entityStatus.effectiveTo = (Date) JSON.deserialize('"0000-12-30"', Date.class);
            entityStatus.effectiveFrom = Date.valueOf('2004-06-15');
        businessEntity.entityStatus.add(entityStatus);

        businessEntity.ASICNumber = '109182989';

            abrBusinessGovAuAbrxmlsearch.EntityType entityType = new abrBusinessGovAuAbrxmlsearch.EntityType();
            entityType.entityTypeCode = 'PRV';
            entityType.entityDescription = 'Australian Private Company';
        businessEntity.entityType = entityType;

        businessEntity.goodsAndServicesTax = new List<abrBusinessGovAuAbrxmlsearch.GoodsAndServicesTax>();
            abrBusinessGovAuAbrxmlsearch.GoodsAndServicesTax goodsAndServicesTax = new abrBusinessGovAuAbrxmlsearch.GoodsAndServicesTax();
            goodsAndServicesTax.effectiveTo = (Date) JSON.deserialize('"0000-12-30"', Date.class);
            goodsAndServicesTax.effectiveFrom = Date.valueOf('2004-06-15');
        businessEntity.goodsAndServicesTax.add(goodsAndServicesTax);

        businessEntity.dgrEndorsement = null;
        businessEntity.legalName = null;

        abrBusinessGovAuAbrxmlsearch.OrganisationName mainName = new abrBusinessGovAuAbrxmlsearch.OrganisationName();
            mainName.organisationName = 'SFDC Australia Pty Limited';
            mainName.effectiveFrom = Date.valueOf('2004-06-15');
        businessEntity.mainName = mainName;

        businessEntity.mainTradingName = null;
        businessEntity.otherTradingName = null;
        businessEntity.mainBusinessPhysicalAddress = new List<abrBusinessGovAuAbrxmlsearch.AddressDetails>();
            abrBusinessGovAuAbrxmlsearch.AddressDetails addr = new abrBusinessGovAuAbrxmlsearch.AddressDetails();
            addr.stateCode = 'NSW';
            addr.postcode = '2000';
            addr.effectiveTo = (Date) JSON.deserialize('"0000-12-30"', Date.class);
            addr.effectiveFrom = Date.valueOf('2014-01-18');
        businessEntity.mainBusinessPhysicalAddress.add(addr);
            addr = new abrBusinessGovAuAbrxmlsearch.AddressDetails();
            addr.stateCode = 'NSW';
            addr.postcode = '2000';
            addr.effectiveTo = Date.valueOf('2014-01-18');
            addr.effectiveFrom = Date.valueOf('2007-06-01');
        businessEntity.mainBusinessPhysicalAddress.add(addr);
            addr = new abrBusinessGovAuAbrxmlsearch.AddressDetails();
            addr.stateCode = 'NSW';
            addr.postcode = '2000';
            addr.effectiveTo = Date.valueOf('2007-06-01');
            addr.effectiveFrom = Date.valueOf('2005-07-22');
        businessEntity.mainBusinessPhysicalAddress.add(addr);
            addr = new abrBusinessGovAuAbrxmlsearch.AddressDetails();
            addr.stateCode = 'NSW';
            addr.postcode = '1223';
            addr.effectiveTo = Date.valueOf('2005-07-22');
            addr.effectiveFrom = Date.valueOf('2004-06-15');
        businessEntity.mainBusinessPhysicalAddress.add(addr);

        businessEntity.dgrFund = null;

        payloadRs.businessEntity = businessEntity;
        payloadRs.exception_x = null;
        payloadRs.abnList = null;
        payloadRs.searchResultsList = null;

        abrBusinessGovAuAbrxmlsearch.Payload payload = new abrBusinessGovAuAbrxmlsearch.Payload();
        payload.request = payloadRq;
        payload.response = payloadRs;

        responseElt.ABRPayloadSearchResults = payload;

        response.put('response_x', responseElt);
    }
}