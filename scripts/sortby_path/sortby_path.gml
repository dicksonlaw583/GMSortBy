///@func sortby_path(path, [asc])
///@arg {Array} path The path to visit entries by
///@arg {Bool} [asc] OPTIONAL Sort in ascending (true) or descending (false) order.
///@return {Function}
///@desc Return a comparer method that looks at the value of a and b after dereferencing the given path. Examples:
///
///- [0]: Look at a[0] and b[0].
///
///- ["foo"]: Look at a.foo and b.foo
///
///- [0, "foo"]: Look at a[0].foo and b[0].foo

function sortby_path(path, asc=true) {
    return method({p: path, d:asc?1:-1}, function(a, b) {
		//Feather disable GM1041
        var _a = a;
        var _b = b;
        var pn = array_length(p);
        for (var i = 0; i < pn; ++i) {
            var pc = p[i];
            if (is_string(pc)) {
                _a = _a[$ pc];
                _b = _b[$ pc];
            } else if (is_numeric(pc)) {
                _a = _a[pc];
                _b = _b[pc];
            }
        }
        return (_a == _b) ? 0 : ((_a < _b) ? -d : d);
    });
}