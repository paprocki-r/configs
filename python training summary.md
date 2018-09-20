#II. Language features

languages: imperative(python, c) and declarative(sql)

1. PYTHON
a) imperatywny
b) OOB (enkapsulacja, poolimorfizm, dziedziczenie, abstrakcja). 2 style OOB:
	- class based - java, c++
	- prototyping - JS

c) some functional programmign features(map, lambda, reduce)
d) reflective
	- object knows itself - it's type, methods and fields
e) aspect oriented programming 
	- you can change the function during runtime - with decoorators, wrappers, magic functions
a) typing discipline
- strong
- dynamic
- duck-typing
)dynamic name resolution (late binding)

2. PEP - python enhancements proposal
3. PIP 
4. Python files
a) py - for standard terminal interpreter
b) pyw - for GUI interpreter
c) pyd - DLL files - it's binding for firing up the machine code (i.e. lib written in C)
d) so - bytecode of python machine (so it doesn't have to interpret the code every time)

#III. Lexical ABC

Typically - How compilation works?
1. Lexical analysis - transforms words to tokens
2. Analiza skladniowa - budowanie drzewa AST
3. Analiza semantyczna - nadawanie znaczenia wezlom drzewa AST
4. ...

## Python lines
physical lines - noted by end of the line
logical lines - noted by brackets () [] {} - everything in brackets is one line

Simple instruction can be only in single logical line
a) either we have to surround it in brackets, or
	a = (4 + 
			3)

b) backslash \ and you can continue instruction next line
	a = 4 + \
		3


## In our module we have classes (underscore)aaa and bbb
If we import the module then (underscore)aaa will not and bbb will be imported
__*__ system defined

## Numeric literals
decimal 12321 321_123
hexadecimal int 0xDeadBeef
floating point 3.14 3. .12 12.12e_2 3.14_15 
binary 0b0100110101
imaginary 3.1415j 3_14.15e-2j

## literals - always strings
short string/bytes "short" ''
long string/bytes
string/byte prefixes 
	b" - it will give us the bytes. Warning: b"test" + "test2" will give syntax error, because we try to concatenate byte with utf (string)
		then we need to do 
			a) r"test".decode()+"test2" , or
			b) r"test"+"test2".encode()
	r" (don't interpret escapes - it will print new lines, cool for regexp printing)
	u" - it's for python 2 - unicode
	f" - i.e.
	a = 2
	f'abc{a}' ##print abc2
	## it's the same as print('abc{a}'.format(a=a))
escape sequences
	\N{WHITE SMILING FACE} ##will print emoji
implicit literal concatenation

#IV. Objects

1. All data represented by objects
2. Object types:
	a) mutable - they can change value 
	b) immutable - they can not change the value. If we try to change the value then in reality we create new object!!!

3. Objects are never explicitly destroyed, so we do it via close() in finally or in "with" statement (everything inside of "with" statement will be destroyed after "with" is done)
4. 
|kind	            	| types                          |
|-----------------------|:------------------------------:|
|unit types				| None, NotImplemented, Ellipsis |
|numbers.Number 		| bool, int, float, comples		 |
|immmutable sequences	| 	str, bytes, tuple, range	 |
|mutable sequences 		| list, bytearray			     |

	tuple = immutable list
	bytearray = mutable byte
|sets 		| set, frozenset			      		     |
|mappings	| dict							     		 |
|callables, modules, custom classes, class instances| ...|		

4. Sequence(mutable and immutable) operations: count, slice, index

`
#task 1
s = list(range(10))
print(s) #print 4 2 0
#solutions
print(s[4::-2])
print(s[4:-11:-2])
print(s[-6::-2])
`

`range(10000)[2:40:2] #possible`

5. Mutable sequence operations: append, pop, insert,extend, remove (element), reverse, copy, clear (=del s[:]), del

6. Iterable - every object that has function next()

6. Tuple - krotki
7. range
8. list 
	- constructions: 

	`	[]
		[exp1]
		list(range(10))
		list(b"test") #lista z bajtow 
		list(iterable)
		`

	`sorted(l) #global method, makes copy of the liste
	l.sort() #it sorts the original`
9. string
10. Old str%(args) vs new str.format(args)
'%s $s'%('one',2)
or
'{} {}'.format('one', 2)
11. byte (immutable) and bytearray (mutable)
12. sets and frozen sets
	- no order
	- set() - empty set
	- operations: union, intersection, copy, update,..
13. dict
	- {1: 1, 2: 2, 3: 3} #constructor of dict key:value
	- {} - empty dict
	- dict{zip(['a','b'],[1,2])} #a 1, b 2
	- operations: len, clear, copy, update, get, pop, values, items, keys
	`for x in d.keys()
		x`
		or
	`for i in iter(d)
		d`
	`for k in d.items():
		k #zwraca krotki
		`	
	`for k, v in d.items():
		k, v #rozpakowanie krotki
		`	

#V. 
1. Values
2. Operators
unary
arithmetic	`@ - does nothing, can be przeciazony
			/ - true div (float)
			// - floor(div) (int div - dzielenie calkowitoliczbowe)
			a**b - a^b`
binary bitwise << >> - shift left and right
	`-2 << 100 == -2 * 2 ** 100 #true`
comparison	`< > == is in`
bool	not and or
	`0 or 4 # 4
	0 and 4 # 0`
cond	`exp1 if exp2 else exp3 #exp2?exp1:exp3`
lambda		`lambda params:exp`
expression lists	exp, exp

#VI. Simple statement
## Operators
`i=0; x=[0,1]; i,x[i]=1,2 #0, 2
 a,b = b,a #switches values!
 a, *b, c = 1,2,3,4,5 #a=1, c=5, b=list(2,3,4)
- @ - augment assigment
- a@=b is similar to a=a@b
- a is evaluated once
- if possible (a is mutable), old object is modified (new object is not created)
- passing parameters to function - as argument we should pass only immutable. If we pass mutable then inside of function we can even remove values from outside of the function scope!
`
- assert expr1
python -O #optimization; all asserts are turned off

- pass, i.e.	
	while True: pass #infinite loop
	class Tst: pass #empty class
- del x # it doesn't destroy the object (Garbage Collector does that). We just remove the binding of tht name from the local or global scope
- return
- yield - for defining generator 
- raise
- break - breaks the loop
- continue - stops this iteration and goes to the next interation in the loop
`break and continue have to be inside of while loop`


- global
- nonlocal 

#VII. Compound statement
