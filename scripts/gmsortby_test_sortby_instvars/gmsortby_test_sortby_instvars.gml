///@func gmsortby_test_sortby_instvars()
///@desc Test sortby_instvars.

function gmsortby_test_sortby_instvars(){
	var inst113 = instance_create_depth(0, 0, 0, __obj_gmsortby_test__, {
		a: 1,
		b: 1,
		c: 3,
	});
	var inst125 = instance_create_depth(0, 0, 0, __obj_gmsortby_test__, {
		a: 1,
		b: 2,
		c: 5,
	});
	var inst217 = instance_create_depth(0, 0, 0, __obj_gmsortby_test__, {
		a: 2,
		b: 1,
		c: 7,
	});
	var inst229 = instance_create_depth(0, 0, 0, __obj_gmsortby_test__, {
		a: 2,
		b: 2,
		c: 9,
	});
	var inst3111 = instance_create_depth(0, 0, 0, __obj_gmsortby_test__, {
		a: 3,
		b: 1,
		c: 11,
	});
	var inst3213 = instance_create_depth(0, 0, 0, __obj_gmsortby_test__, {
		a: 3,
		b: 2,
		c: 13,
	});

	var fixture = new GMSortBy_TestArray([
		inst113,
		inst125,
		inst217,
		inst229,
		inst3111,
		inst3213,
	]);
	
	fixture.reset();
	array_sort(fixture.array, sortby_instvars(["a", "b"]));
	assert_equal(fixture.array, [
		inst113,
		inst125,
		inst217,
		inst229,
		inst3111,
		inst3213,
	], "sortby_instvars([\"a\", \"b\"]) failed");

	fixture.reset();
	array_sort(fixture.array, sortby_instvars(["a", "b"], true));
	assert_equal(fixture.array, [
		inst113,
		inst125,
		inst217,
		inst229,
		inst3111,
		inst3213,
	], "sortby_instvars([\"a\", \"b\"], true) failed");

	fixture.reset();
	array_sort(fixture.array, sortby_instvars(["a", "b"], false));
	assert_equal(fixture.array, [
		inst3213,
		inst3111,
		inst229,
		inst217,
		inst125,
		inst113,
	], "sortby_instvars([\"a\", \"b\"], false) failed");

	fixture.reset();
	array_sort(fixture.array, sortby_instvars(["a", "b"], [true, false]));
	assert_equal(fixture.array, [
		inst125,
		inst113,
		inst229,
		inst217,
		inst3213,
		inst3111,
	], "sortby_instvars([\"a\", \"b\"], [true, false]) failed");

	instance_destroy(__obj_gmsortby_test__);
}