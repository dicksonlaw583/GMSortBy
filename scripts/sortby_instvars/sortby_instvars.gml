///@func sortby_instvars(varnames, [asc])
///@arg {Array<String>} varnames The instance variable names to sort by.
///@arg {Bool,Array<Bool>} [asc] OPTIONAL Sort in ascending (true) or descending (false) order, or a mix of orders.
///@return {Function}
///@desc Return a comparer method that looks at the given instance variables in instances a and b.

function sortby_instvars(varnames, asc=true) {
    var ds;
	if (is_array(asc)) {
		for (var i = array_length(asc)-1; i >= 0; --i) {
			ds[i] = asc[i]?1:-1;
		}
	} else {
		ds = array_create(array_length(varnames), asc?1:-1);
	}
    return method({V: varnames, D:ds}, function(a, b) {
		//Feather disable GM1041
	    var n = array_length(V);
        for (var i = 0; i < n; ++i) {
	        var v = V[i];
            var _a = variable_instance_get(a, v);
            var _b = variable_instance_get(b, v);
            if (_a != _b) return (_a < _b) ? -D[i] : D[i];
        }
        return 0;
    });
}