# GMSortBy

Easy Comparer Scripts for GameMaker Studio 2

## Overview

This library allows you to create comparer methods for [`array_sort`](https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_sort.htm) in an easy-to-read, semantic way.

## Supported GameMaker Versions

- LTS: 2022.0+
- Stable: 2022.1+
- Beta: 2022.100+

## Download

Get the current asset package from [the releases page](https://github.com/dicksonlaw583/GMSortBy/releases). Simply extract all the scripts into your project.

## Examples

Here are some quick examples for common use cases. More examples for other functions are available in [the Wiki](https://github.com/dicksonlaw583/GMSortBy/wiki).

### Sorting a 2D Array by Column

```gml
var array = [
	[4, "E"],
	[3, "A"],
	[2, "B"],
	[1, "C"],
	[5, "D"],
];

//Sort ascending by column 0
array_sort(array, sortby_index(0));
show_debug_message(array); //[[1, "C"], [2, "B"], [3, "A"], [4, "E"], [5, "D"]]

//Sort descending by column 1
array_sort(array, sortby_index(1, false));
show_debug_message(array); //[[4, "E"], [5, "D"], [1, "C"], [2, "B"], [3, "A"]]
```

### Sorting a 2D Array by Multiple Columns

```gml
var array = [
	[1, 1, 3],
	[1, 2, 5],
	[2, 1, 7],
	[2, 2, 9],
	[3, 1, 11],
	[3, 2, 13],
];

//Sort descending by column 0, then column 1
array_sort(array, sortby_indices([0, 1], false));
show_debug_message(array); //[[3, 2, 13], [3, 1, 11], [2, 2, 9], [2, 1, 7], [1, 2, 5], [1, 1, 3]]

//Sort ascending by column 0, then descending by column 1
array_sort(array, sortby_indices([0, 1], [true, false]));
show_debug_message(array); //[[1, 2, 5], [1, 1, 3], [2, 2, 9], [2, 1, 7], [3, 2, 13], [3, 1, 11]]
```

### Sorting an Array of Structs by Key

```gml
var array = [
	{a: 4, b: "E"},
	{a: 3, b: "A"},
	{a: 2, b: "B"},
	{a: 1, b: "C"},
	{a: 5, b: "D"},
];

//Sort ascending by key "a"
array_sort(array, sortby_key("a"));
show_debug_message(array); //[{a: 1, b: "C"}, {a: 2, b: "B"}, {a: 3, b: "A"}, {a: 4, b: "E"}, {a: 5, b: "D"}]

//Sort descending by key "b"
array_sort(array, sortby_key("b", false));
show_debug_message(array); //[{a: 4, b: "E"}, {a: 5, b: "D"}, {a: 1, b: "C"}, {a: 2, b: "B"}, {a: 3, b: "A"}]
```

