# HOME
"Hello World!"
5 + 5
plot(1:10)
# INTRO
print("Hello World!")
for (x in 1:10) {
  print(x)
}

name = "John"
age = 40

name   # output "John"
age    # output 40

# Data Types
# numeric
x = 10.5
class(x)

# integer
x = 1000L
class(x)

# complex
x = 9i + 3
class(x)

# character/string
x = "R is exciting"
class(x)

# logical/boolean
x = TRUE
class(x)

# Math
10 + 5
10 - 5
max(5, 10, 15)

min(5, 10, 15)

sqrt(16)
abs(-4.7)
ceiling(1.4)

floor(1.4)

# Strings
str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."

str # print the value of str

str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."

cat(str) # preserves line breaks

# Boolean
10 > 9    # TRUE because 10 is greater than 9
10 == 9   # FALSE because 10 is not equal to 9
10 < 9    # FALSE because 10 is greater than 9

a = 10
b = 9

a > b

a = 200
b = 33

if (b > a) {
  print ("b is greater than a")
} else {
  print("b is not greater than a")
}

# Operator
# R Comparison Operators
5 == 5 # TRUE because 5 is equal to 5
5 == 3 # FALSE because 5 is not equal to 3
5 != 3 # returns TRUE because 5 is not equal to 3
5 > 3 # returns TRUE because 5 is greater than 3
5 < 3 # returns FALSE because 5 is not less than 3
5 >= 3 # returns TRUE because 5 is greater than, or equal, to 3
5 <= 3 # returns FALSE because 5 is neither less than or equal to 3

x = 1:10
x
5 %in% x

# Conditions and If Statements
a = 33
b = 200

if (b > a) {
  print("b is greater than a")
}

a = 33
b = 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print ("a and b are equal")
}

a = 200
b = 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
}

if (b > a) {
  print("b is greater than a")
} else {
  print("b is not greater than a")
}

#While loops
i = 1
while (i < 6) {
  print(i)
  i = i + 1
}
print(i)

i = 1
while (i < 6) {
  print(i)
  i <- i + 1
  if (i == 4) {
    break
  }
}
print(i)

i = 0
while (i < 6) {
  i = i + 1
  if (i == 3) {
    next
  }
  print(i)
}

print(i)

# For Loop
for (x in 1:10) {
  print(x)
}

fruits = list("apple", "banana", "cherry", "orange")

for (x in fruits) {
  print(x)
}

dice = c(1, 2, 3, 4, 5, 6)

for (x in dice) {
  print(x)
}

for (x in fruits) {
  if (x == "cherry") {
    break
  }
  print(x)
}

for (x in fruits) {
  if (x == "banana") {
    next
  }
  print(x)
}

adj = list("red", "big", "tasty")

fruits = list("apple", "banana", "cherry")
for (x in adj) {
  for (y in fruits) {
    print(paste(x, y))
  }
}

# Functions
my_function = function() {
  print("Hello World!")
}

my_function() # call the function named my_function

my_function1 = function(fname) {
  paste(fname, "Griffin")
}

my_function1("Peter")
my_function1("Lois")
my_function1("Stewie") 

my_function2 = function(fname, lname) {
  paste(fname, lname)
}

my_function2("Peter", "Griffin") 


# my_function2("Peter") - ERROR This function expects 2 arguments, and gets 1 argument

my_function3 = function(country = "Norway") {
  paste("I am from", country)
}

my_functio3n("Sweden")
my_function3("India")
my_function3() # will get the default value, which is Norway
my_function3("USA") 

Nested_function = function(x, y) {
  a = x + y
  return(a)
}

Nested_function(Nested_function(2,2), Nested_function(3,3)) 


Outer_func = function(x) {
  Inner_func = function(y) {
    a = x + y
    return(a)
  }
  return (Inner_func)
}
output = Outer_func(3) # To call the Outer_func
output(5) 

tri_recursion = function(k) {
  if (k > 0) {
    result = k + tri_recursion(k - 1)
    print(result)
  } else {
    result = 0
    return(result)
  }
}
tri_recursion(6) 

# Global Variables
txt = "awesome"
my_function = function() {
  paste("R is", txt)
}

my_function() 


txt = "global variable"
my_function = function() {
  txt = "fantastic"
  paste("R is", txt)
}

my_function()

txt # print txt 

# The Global Assignment Operator
txt = "awesome"
my_function <- function() {
  txt <<- "fantastic"
  paste("R is", txt)
}

my_function()

paste("R is", txt) 
