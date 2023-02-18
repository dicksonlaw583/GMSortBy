///@func sortby_instvar(varname, [asc])
///@arg {String} varname The name of the instance variable to sort by.
///@arg {Bool} [asc] OPTIONAL Sort in ascending (true) or descending (false) order.
///@return {Function}
///@desc Return a comparer method that looks at the variable varname in instances a and b.
function sortby_instvar(varname, asc=true) {
    return method({v: varname, d:asc?1:-1}, function(a, b) {
		//Feather disable GM1041
        var _a = variable_instance_get(a, v);
        var _b = variable_instance_get(b, v);
        return (_a == _b) ? 0 : ((_a < _b) ? -d : d);
    });
}