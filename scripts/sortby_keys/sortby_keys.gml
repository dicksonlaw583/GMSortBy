///@func sortby_keys(keys, [asc])
///@arg {Array<String>} keys The keys to sort by.
///@arg {Bool,Array<Bool>} [asc] OPTIONAL Sort in ascending (true) or descending (false) order, or a mix of orders.
///@return {Function}
///@desc Return a comparer method that looks at the given keys in structs a and b.

function sortby_keys(keys, asc=true) {
    var ds;
	if (is_array(asc)) {
		for (var i = array_length(asc)-1; i >= 0; --i) {
			ds[i] = asc[i]?1:-1;
		}
	} else {
		ds = array_create(array_length(keys), asc?1:-1);
	}
    return method({K: keys, D:ds}, function(a, b) {
		//Feather disable GM1041
	    var n = array_length(K);
        for (var i = 0; i < n; ++i) {
	        var k = K[i];
            var _a = a[$ k];
            var _b = b[$ k];
            if (_a != _b) return (_a < _b) ? -D[i] : D[i];
        }
        return 0;
    });
}