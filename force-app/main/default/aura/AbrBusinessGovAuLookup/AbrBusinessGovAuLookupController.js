({
	performLookup : function(component, event, helper) {
        var lookupType = component.get("v.lookupType");
        
        if (lookupType === "ABN") {
            helper.performABNLookup(component, event, helper, component.get("v.lookupABN"));          
        } else if (lookupType === "Name") {
            helper.performNameLookup(component, event, helper, component.get("v.lookupName"));           
        } else {
            component.set("v.lookupResult", null);
            component.set("v.lookupError", "Unexpected Lookup Type");
        }
	}
})