///@func sortby_index(index, [asc])
///@arg {Real} index The index position to sort by.
///@arg {Bool} [asc] OPTIONAL Sort in ascending (true) or descending (false) order.
///@return {Function}
///@desc Return a comparer method that looks at a[index] and b[index].

function sortby_index(index, asc=true){
	return method({i: index, d: asc?1:-1}, function(a, b) {
		var _a = a[i];
		var _b = b[i];
		return (_a == _b) ? 0 : ((_a < _b ? -d : d));
	});
}