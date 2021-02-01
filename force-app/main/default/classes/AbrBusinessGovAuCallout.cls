/*
 *  AbrBusinessGovAuCallout
 *  =======================
 * 
 *  abr.business.gov.au is the web-site of the Australian Government's Australian Business Register.
 *  It offers an ABN Lookup functionality - i.e. providing publicly available information supplied by
 *  businesses when they register for an Australian Business Number (ABN).
 * 
 *  Practically, it enables to verify that an alleged Australian Business is indeed registered
 *  by providing validation of its ABN or its' ACN (Australian Company Number).
 * 
 *  Author: Emmanuel Schweitzer
 *  Version: 1.0
 *  Date: 19 Dec 2019
 * 
 *  adjusted on 28 Jan 2021 - credentials stored as custom metadata
 */

global class AbrBusinessGovAuCallout {
    // Note that this GUID (which is the equivalent of an API Key) to access abr.business.gov.au Web Services
    // is not provided and should be requested as per:
    // http://abr.business.gov.au/RegisterAgreement.aspx
    // Please read those T&Cs and request your own GUID.
    // Configure it as a Custom Metadata entry (AbrBusinessGovAu_Setting type) with the Setting Type being 'Authentication GUID'.

    private static String GUID;
    
    public static void InitGUID() {
        if (GUID == null) {
            List<AbrBusinessGovAu_Setting__mdt> settingsList = [
                SELECT Id, Setting_Value__c
                FROM AbrBusinessGovAu_Setting__mdt
                WHERE Setting_Type__c = 'Authentication GUID'
                LIMIT 1
            ];
            
            if (settingsList != null && !settingsList.isEmpty()) {
                GUID = settingsList.get(0).Setting_Value__c;
            }
        }
    }
    
    public static String GetGUID() {
        InitGUID();       
        return GUID;
    }
    
    @AuraEnabled    
    public static AbrBusinessGovAuAbrXMLSearch.Payload ABNLookup(String ABN, boolean history) {
        String correctedABN = ABN.deleteWhitespace();
        abrBusinessGovAuAbrXMLSearch.AbrXMLSearchSoap ws = new AbrBusinessGovAuAbrXMLSearch.ABRXMLSearchSoap();        
        return ws.ABRSearchByABN(correctedABN, history ? 'Y' : 'N', GetGUID());
    }
    
    @AuraEnabled
    public static AbrBusinessGovAuAbrXMLSearch.Payload NameLookup(String Name) {
        abrBusinessGovAuAbrXMLSearch.ExternalRequestNameSearch ns = new AbrBusinessGovAuAbrXMLSearch.ExternalRequestNameSearch();
        ns.name = Name;
        ns.filters = new AbrBusinessGovAuAbrXMLSearch.ExternalRequestFilters(); //Filter();
        ns.authenticationGUID = GetGUID();
        abrBusinessGovAuAbrXMLSearch.AbrXMLSearchSoap ws = new AbrBusinessGovAuAbrXMLSearch.ABRXMLSearchSoap();        
        return ws.ABRSearchByName(ns, GetGUID());
    }
}