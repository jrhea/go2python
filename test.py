import point as p

print("let's see if we can work with go structs\n")
print("create a new struct:")
foo=p.createPoint(1,2,3)
print(foo.x,foo.y,foo.z)
print("scale the values by 10:")
p.scalePoint(foo,10)
print(foo.x,foo.y,foo.z)
p.c_scalePoint(foo,10)
print(foo.x,foo.y,foo.z)