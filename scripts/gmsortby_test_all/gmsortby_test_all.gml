///@func gmsortby_test_all()
///@return {Bool}
///@desc Test the GMSortBy utility functions.

function gmsortby_test_all() {
	global.__test_fails__ = 0;
	var timeA, timeB;
	timeA = current_time;
	
	/* v Tests here v */
	gmsortby_test_sortby_index();
	gmsortby_test_sortby_key();
	gmsortby_test_sortby_path();
	/* ^ Tests here ^ */
	
	timeB = current_time;
	show_debug_message("GMSortBy tests done in " + string(timeB-timeA) + "ms.");
	return global.__test_fails__ == 0;
}
