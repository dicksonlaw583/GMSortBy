///@func GMSortBy_TestArray(_array)
///@arg {Array} _array The array value to reset to upon calling reset()
///@desc A test class with a resettable array
function GMSortBy_TestArray(_array) constructor {
	template = _array;
	array = array_create(array_length(_array));
	array_copy(array, 0, _array, 0, array_length(_array));
	
	static reset = function() {
		var n = array_length(template);
		array = array_create(n);
		array_copy(array, 0, template, 0, n);
	};
}
