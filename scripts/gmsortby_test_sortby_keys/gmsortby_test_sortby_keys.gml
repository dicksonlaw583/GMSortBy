///@func gmsortby_test_sortby_keys()
///@desc Test sortby_keys.

function gmsortby_test_sortby_keys(){
	var fixture = new GMSortBy_TestArray([
		{a: 1, b: 1, c: 3},
		{a: 1, b: 2, c: 5},
		{a: 2, b: 1, c: 7},
		{a: 2, b: 2, c: 9},
		{a: 3, b: 1, c: 11},
		{a: 3, b: 2, c: 13},
	]);
	
	fixture.reset();
	array_sort(fixture.array, sortby_keys(["a", "b"]));
	assert_equal(fixture.array, [
		{a: 1, b: 1, c: 3},
		{a: 1, b: 2, c: 5},
		{a: 2, b: 1, c: 7},
		{a: 2, b: 2, c: 9},
		{a: 3, b: 1, c: 11},
		{a: 3, b: 2, c: 13},
	], "sortby_keys([\"a\", \"b\"]) failed");

	fixture.reset();
	array_sort(fixture.array, sortby_keys(["a", "b"], true));
	assert_equal(fixture.array, [
		{a: 1, b: 1, c: 3},
		{a: 1, b: 2, c: 5},
		{a: 2, b: 1, c: 7},
		{a: 2, b: 2, c: 9},
		{a: 3, b: 1, c: 11},
		{a: 3, b: 2, c: 13},
	], "sortby_keys([\"a\", \"b\"], true) failed");

	fixture.reset();
	array_sort(fixture.array, sortby_keys(["a", "b"], false));
	assert_equal(fixture.array, [
		{a: 3, b: 2, c: 13},
		{a: 3, b: 1, c: 11},
		{a: 2, b: 2, c: 9},
		{a: 2, b: 1, c: 7},
		{a: 1, b: 2, c: 5},
		{a: 1, b: 1, c: 3},
	], "sortby_keys([\"a\", \"b\"], false) failed");

	fixture.reset();
	array_sort(fixture.array, sortby_keys(["a", "b"], [true, false]));
	assert_equal(fixture.array, [
		{a: 1, b: 2, c: 5},
		{a: 1, b: 1, c: 3},
		{a: 2, b: 2, c: 9},
		{a: 2, b: 1, c: 7},
		{a: 3, b: 2, c: 13},
		{a: 3, b: 1, c: 11},
	], "sortby_keys([\"a\", \"b\"], [true, false]) failed");
}