///@func sortby_key(key, [asc])
///@arg {String} key The key to sort by.
///@arg {Bool} [asc] OPTIONAL Sort in ascending (true) or descending (false) order.
///@return {Function}
///@desc Return a comparer method that looks at a[$ key] and b[$ key].

function sortby_key(key, asc=true){
	return method({k: key, d: asc?1:-1}, function(a, b) {
		var _a = a[$ k];
		var _b = b[$ k];
		return (_a == _b) ? 0 : ((_a < _b ? -d : d));
	});
}