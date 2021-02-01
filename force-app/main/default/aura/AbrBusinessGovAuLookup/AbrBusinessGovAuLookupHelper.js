({
	performABNLookup : function(component, event, helper, pABN) {
        component.set("v.isLoading", "true");
        var action = component.get("c.ABNLookup");
        action.setParams({ ABN: pABN, history: false });
        action.setCallback(this, function(response) {            
            component.set("v.isLoading", "false");
            var state = response.getState();
            
            if (state === "SUCCESS") {
                var rval = response.getReturnValue();
                console.log(JSON.stringify(rval.response));
                component.set("v.lookupResult", rval.response);
                component.set("v.lookupError", null);
            } else if (state === "INCOMPLETE") {
                component.set("v.lookupResult", null);
                component.set("v.lookupError", "Incomplete Web Service Response.");
            } else if (state === "ERROR") {
                component.set("v.lookupResult", null);
                component.set("v.lookupError", "Error while querying ABR Web Service.");
            } else {
                component.set("v.lookupResult", null);
                component.set("v.lookupError", "Unexpected Error.");
            }
        });
        
        $A.enqueueAction(action);		
	},
	performNameLookup : function(component, event, helper, name) {
        component.set("v.isLoading", "true");
        var action = component.get("c.NameLookup");
        action.setParams({ Name: name });
        action.setCallback(this, function(response) {
            component.set("v.isLoading", "false");            
            var state = response.getState();
            
            if (state === "SUCCESS") {
                var rval = response.getReturnValue();
                try {
                	component.set("v.lookupResult", rval.response);
	                component.set("v.lookupError", "");
                } catch(e) {
                    component.set("v.lookupResult", null);
                    component.set("v.lookupError", e.message);
                }
            } else if (state === "INCOMPLETE") {
                component.set("v.lookupResult", null);
                component.set("v.lookupError", "Incomplete Web Service Response.");
            } else if (state === "ERROR") {
                component.set("v.lookupResult", null);
                component.set("v.lookupError", "Error while querying ABR Web Service.");
            } else {
                component.set("v.lookupResult", null);
                component.set("v.lookupError", "Unexpected Error.");
            }
        });
        
        $A.enqueueAction(action);		
		
	},
})