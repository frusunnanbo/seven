fib := method(n,
    if(n == 0, 1,
	a := 0
	b := 1
    	for(i, 1, n, 1, next := a + b; a = b; b = next)))