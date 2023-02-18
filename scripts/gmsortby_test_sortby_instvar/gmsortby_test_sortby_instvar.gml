///@func gmsortby_test_sortby_instvar()
///@desc Test sortby_instvar.

function gmsortby_test_sortby_instvar(){
	var inst4E = instance_create_depth(0, 0, 0, __obj_gmsortby_test__, {
		number: 4,
		letter: "E",
	});
	var inst3A = instance_create_depth(0, 0, 0, __obj_gmsortby_test__, {
		number: 3,
		letter: "A",
	});
	var inst2B = instance_create_depth(0, 0, 0, __obj_gmsortby_test__, {
		number: 2,
		letter: "B",
	});
	var inst1C = instance_create_depth(0, 0, 0, __obj_gmsortby_test__, {
		number: 1,
		letter: "C",
	});
	var inst5D = instance_create_depth(0, 0, 0, __obj_gmsortby_test__, {
		number: 5,
		letter: "D",
	});
	var fixture = new GMSortBy_TestArray([
		inst4E,
		inst3A,
		inst2B,
		inst1C,
		inst5D,
	]);
	
	fixture.reset();
	array_sort(fixture.array, sortby_instvar("number"));
	assert_equal(fixture.array, [
		inst1C,
		inst2B,
		inst3A,
		inst4E,
		inst5D,
	], "sortby_instvar(\"number\") failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_instvar("number", true));
	assert_equal(fixture.array, [
		inst1C,
		inst2B,
		inst3A,
		inst4E,
		inst5D,
	], "sortby_instvar(\"number\", true) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_instvar("number", false));
	assert_equal(fixture.array, [
		inst5D,
		inst4E,
		inst3A,
		inst2B,
		inst1C,
	], "sortby_instvar(\"number\", false) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_instvar("letter"));
	assert_equal(fixture.array, [
		inst3A,
		inst2B,
		inst1C,
		inst5D,
		inst4E,
	], "sortby_instvar(\"letter\") failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_instvar("letter", true));
	assert_equal(fixture.array, [
		inst3A,
		inst2B,
		inst1C,
		inst5D,
		inst4E,
	], "sortby_instvar(\"letter\", true) failed");
	
	fixture.reset();
	array_sort(fixture.array, sortby_instvar("letter", false));
	assert_equal(fixture.array, [
		inst4E,
		inst5D,
		inst1C,
		inst2B,
		inst3A,
	], "sortby_instvar(\"letter\", false) failed");

	instance_destroy(__obj_gmsortby_test__);
}