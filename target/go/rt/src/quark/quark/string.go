package quark

import "unicode/utf8"

func String___add__(a string, b string) string { return a + b }
func String___eq__(a string, b string) bool { return a == b }
func String_size(a string) int { return utf8.RuneCountInString(a) }
func String_substring(a string, start int, end int) string {
	s := 0
	e := len(a)
	for i, _ := range a {
		if start == 0 {
			s = i
		}
		if end == 0 {
			e = i
		}
		start -= 1
		end -= 1
	}
	return a[s:e]
}
