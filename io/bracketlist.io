squareBrackets := method(
     r := list()
     call message arguments foreach(arg,
     	  r push(arg)
	  )
     r
)

myList := doString("[ \"hej\", \"hupp\" ]")
