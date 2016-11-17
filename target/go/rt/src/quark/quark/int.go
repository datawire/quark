package quark

func Int___eq__(a int, b int) bool { return a == b }
func Int___ne__(a int, b int) bool { return a != b }
func Int___add__(a int, b int) int { return a + b }
func Int___sub__(a int, b int) int { return a - b }
func Int___neg__(n int) int { return - n }
func Int___mul__(a int, b int) int { return a * b }
func Int___ge__(a int, b int) bool { return a >= b }
func Int___le__(a int, b int) bool { return a <= b }
func Int___gt__(a int, b int) bool { return a > b }
func Int___lt__(a int, b int) bool { return a < b }

func Int_asAny(a int) interface{} { return a }
