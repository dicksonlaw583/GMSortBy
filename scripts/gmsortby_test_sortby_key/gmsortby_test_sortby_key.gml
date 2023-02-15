///@func gmsortby_test_sortby_key()
///@desc Test sortby_key.

function gmsortby_test_sortby_key(){
	var fixture = new GMSortBy_TestArray([
		{a: 4, b: "e"},
		{a: 3, b: "a"},
		{a: 2, b: "b"},
		{a: 1, b: "c"},
		{a: 5, b: "d"},
	]);
	
	fixture.reset();
	array_sort(fixture.array, sortby_key("a"));
	assert_equal(fixture.array, [
		{a: 1, b: "c"},
		{a: 2, b: "b"},
		{a: 3, b: "a"},
		{a: 4, b: "e"},
		{a: 5, b: "d"},
	], "sortby_key(\"a\") failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_key("a", true));
	assert_equal(fixture.array, [
		{a: 1, b: "c"},
		{a: 2, b: "b"},
		{a: 3, b: "a"},
		{a: 4, b: "e"},
		{a: 5, b: "d"},
	], "sortby_key(\"a\", true) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_key("a", false));
	assert_equal(fixture.array, [
		{a: 5, b: "d"},
		{a: 4, b: "e"},
		{a: 3, b: "a"},
		{a: 2, b: "b"},
		{a: 1, b: "c"},
	], "sortby_key(\"a\", false) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_key("b"));
	assert_equal(fixture.array, [
		{a: 3, b: "a"},
		{a: 2, b: "b"},
		{a: 1, b: "c"},
		{a: 5, b: "d"},
		{a: 4, b: "e"},
	], "sortby_key(\"b\") failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_key("b", true));
	assert_equal(fixture.array, [
		{a: 3, b: "a"},
		{a: 2, b: "b"},
		{a: 1, b: "c"},
		{a: 5, b: "d"},
		{a: 4, b: "e"},
	], "sortby_key(\"b\", true) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_key("b", false));
	assert_equal(fixture.array, [
		{a: 4, b: "e"},
		{a: 5, b: "d"},
		{a: 1, b: "c"},
		{a: 2, b: "b"},
		{a: 3, b: "a"},
	], "sortby_key(\"b\", false) failed");
}