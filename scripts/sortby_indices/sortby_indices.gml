///@func sortby_indices(indices, [asc])
///@arg {Array<Real>} indices The index positions to sort by.
///@arg {Bool,Array<Bool>} [asc] OPTIONAL Sort in ascending (true) or descending (false) order, or a mix of orders.
///@return {Function}
///@desc Return a comparer method that looks at the given indices in arrays a and b.

function sortby_indices(indices, asc=true) {
    var ds;
	if (is_array(asc)) {
		for (var i = array_length(indices)-1; i >= 0; --i) {
			ds[i] = asc[i]?1:-1;
		}
	} else {
		ds = array_create(array_length(indices), asc?1:-1);
	}
    return method({I: indices, D: ds}, function(a, b) {
		//Feather disable GM1041
	    var n = array_length(I);
        for (var i = 0; i < n; ++i) {
	        var Ii = I[i];
            var _a = a[Ii];
            var _b = b[Ii];
            if (_a != _b) return (_a < _b) ? -D[i] : D[i];
        }
        return 0;
    });
}