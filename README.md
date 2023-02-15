# GMSortBy

Easy Comparer Scripts for GameMaker Studio 2

## Overview

This library allows you to create comparer methods for [`array_sort`](https://manual.yoyogames.com/#t=GameMaker_Language%2FGML_Reference%2FVariable_Functions%2Farray_sort.htm) in an easy-to-read, semantic way.

## Supported GameMaker Versions

- LTS: 2022.0+
- Stable: 2022.1+
- Beta: 2022.100+

## Examples

### Sorting a 2D Array by Index

```gml
var array = [
	[4, "E"],
	[3, "A"],
	[2, "B"],
	[1, "C"],
	[5, "D"],
];

//Sort ascending by index 0
array_sort(array, sortby_index(0));
show_debug_message(array); //[[1, "C"], [2, "B"], [3, "A"], [4, "E"], [5, "D"]]

//Sort descending by index 1
array_sort(array, sortby_index(1, false));
show_debug_message(array); //[[4, "E"], [5, "D"], [1, "C"], [2, "B"], [3, "A"]]
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
