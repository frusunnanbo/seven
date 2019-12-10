Builder := Object clone
Builder indent := 0
Builder forward := method(
	writeln(" " repeated(indent), "<", call message name, ">")
	self indent = self indent + 2
	call message arguments foreach(
	     arg,
	     content := self doMessage(arg);
	     if(content type == "Sequence", writeln(" " repeated(indent), content)))
	self indent = self indent - 2
	writeln(" " repeated(indent), "</", call message name, ">"))

Builder div(ul(
		li("Io"),
		li("Lua"),
		li("JavaScript")
		))
		