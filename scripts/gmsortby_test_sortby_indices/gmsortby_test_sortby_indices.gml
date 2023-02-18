///@func gmsortby_test_sortby_indices()
///@desc Test sortby_indices.

function gmsortby_test_sortby_indices(){
	var fixture = new GMSortBy_TestArray([
		[1, 1, 3],
		[1, 2, 5],
		[2, 1, 7],
		[2, 2, 9],
		[3, 1, 11],
		[3, 2, 13],
	]);
	
	fixture.reset();
	array_sort(fixture.array, sortby_indices([0, 1]));
	assert_equal(fixture.array, [
		[1, 1, 3],
		[1, 2, 5],
		[2, 1, 7],
		[2, 2, 9],
		[3, 1, 11],
		[3, 2, 13],
	], "sortby_indices([0, 1]) failed");

	fixture.reset();
	array_sort(fixture.array, sortby_indices([0, 1], true));
	assert_equal(fixture.array, [
		[1, 1, 3],
		[1, 2, 5],
		[2, 1, 7],
		[2, 2, 9],
		[3, 1, 11],
		[3, 2, 13],
	], "sortby_indices([0, 1], true) failed");

	fixture.reset();
	array_sort(fixture.array, sortby_indices([0, 1], false));
	assert_equal(fixture.array, [
		[3, 2, 13],
		[3, 1, 11],
		[2, 2, 9],
		[2, 1, 7],
		[1, 2, 5],
		[1, 1, 3],
	], "sortby_indices([0, 1], false) failed");

	fixture.reset();
	array_sort(fixture.array, sortby_indices([0, 1], [true, false]));
	assert_equal(fixture.array, [
		[1, 2, 5],
		[1, 1, 3],
		[2, 2, 9],
		[2, 1, 7],
		[3, 2, 13],
		[3, 1, 11],
	], "sortby_indices([0, 1], [true, false]) failed");
}