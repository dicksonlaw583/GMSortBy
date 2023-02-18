///@func gmsortby_test_sortby_path()
///@desc Test sortby_path.

function gmsortby_test_sortby_path(){
	var fixture = new GMSortBy_TestArray([
		[{a: 4}, {b: "E"}],
		[{a: 3}, {b: "A"}],
		[{a: 2}, {b: "B"}],
		[{a: 1}, {b: "C"}],
		[{a: 5}, {b: "D"}],
	]);
	
	fixture.reset();
	array_sort(fixture.array, sortby_path([0, "a"]));
	assert_equal(fixture.array, [
		[{a: 1}, {b: "C"}],
		[{a: 2}, {b: "B"}],
		[{a: 3}, {b: "A"}],
		[{a: 4}, {b: "E"}],
		[{a: 5}, {b: "D"}],
	], "sortby_path([0, \"a\"]) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_path([0, "a"], true));
	assert_equal(fixture.array, [
		[{a: 1}, {b: "C"}],
		[{a: 2}, {b: "B"}],
		[{a: 3}, {b: "A"}],
		[{a: 4}, {b: "E"}],
		[{a: 5}, {b: "D"}],
	], "sortby_path([0, \"a\"], true) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_path([0, "a"], false));
	assert_equal(fixture.array, [
		[{a: 5}, {b: "D"}],
		[{a: 4}, {b: "E"}],
		[{a: 3}, {b: "A"}],
		[{a: 2}, {b: "B"}],
		[{a: 1}, {b: "C"}],
	], "sortby_path([0, \"a\"], false) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_path([1, "b"]));
	assert_equal(fixture.array, [
		[{a: 3}, {b: "A"}],
		[{a: 2}, {b: "B"}],
		[{a: 1}, {b: "C"}],
		[{a: 5}, {b: "D"}],
		[{a: 4}, {b: "E"}],
	], "sortby_path([1, \"b\"]) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_path([1, "b"], true));
	assert_equal(fixture.array, [
		[{a: 3}, {b: "A"}],
		[{a: 2}, {b: "B"}],
		[{a: 1}, {b: "C"}],
		[{a: 5}, {b: "D"}],
		[{a: 4}, {b: "E"}],
	], "sortby_path([1, \"b\"], true) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_path([1, "b"], false));
	assert_equal(fixture.array, [
		[{a: 4}, {b: "E"}],
		[{a: 5}, {b: "D"}],
		[{a: 1}, {b: "C"}],
		[{a: 2}, {b: "B"}],
		[{a: 3}, {b: "A"}],
	], "sortby_path([1, \"b\"], false) failed");
}