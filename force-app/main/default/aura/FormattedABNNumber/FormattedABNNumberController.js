({
	ABNChange : function(component, event, helper) {
        var ABN = component.get("v.ABN");
        
        if (ABN == null) {
            component.set("v.FormattedABN", "No ABN");
            return;
        }
        
        ABN = ABN.replace(/\s/g, "");
        
        if (ABN.length != 11) {
            component.set("v.FormattedABN", "Invalid ABN");
            return;
        }

        component.set("v.FormattedABN",
                      ABN.slice(0, 2) + ' ' +
                      ABN.slice(2, 5) + ' ' +
                      ABN.slice(5, 8) + ' ' +
                      ABN.slice(8, 11));
	}
})