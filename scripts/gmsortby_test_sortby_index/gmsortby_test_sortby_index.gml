///@func gmsortby_test_sortby_index()
///@desc Test sortby_index.

function gmsortby_test_sortby_index(){
	var fixture = new GMSortBy_TestArray([
		[4, "E"],
		[3, "A"],
		[2, "B"],
		[1, "C"],
		[5, "D"],
	]);
	
	fixture.reset();
	array_sort(fixture.array, sortby_index(0));
	assert_equal(fixture.array, [
		[1, "C"],
		[2, "B"],
		[3, "A"],
		[4, "E"],
		[5, "D"],
	], "sortby_index(0) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_index(0, true));
	assert_equal(fixture.array, [
		[1, "C"],
		[2, "B"],
		[3, "A"],
		[4, "E"],
		[5, "D"],
	], "sortby_index(0, true) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_index(0, false));
	assert_equal(fixture.array, [
		[5, "D"],
		[4, "E"],
		[3, "A"],
		[2, "B"],
		[1, "C"],
	], "sortby_index(0, false) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_index(1));
	assert_equal(fixture.array, [
		[3, "A"],
		[2, "B"],
		[1, "C"],
		[5, "D"],
		[4, "E"],
	], "sortby_index(1) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_index(1, true));
	assert_equal(fixture.array, [
		[3, "A"],
		[2, "B"],
		[1, "C"],
		[5, "D"],
		[4, "E"],
	], "sortby_index(1, true) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_index(1, false));
	assert_equal(fixture.array, [
		[4, "E"],
		[5, "D"],
		[1, "C"],
		[2, "B"],
		[3, "A"],
	], "sortby_index(1, false) failed");
}