a = ("hello world i am new in codig")
print(len(a))
print(a.upper())
print(a.lower())

# Q1Perform binary “AND” and “OR” operation for given 2 integer numbers
# from user input

num1 = int(input("enter first number:"))
num2 = int(input("enter second number:"))

b = num1 & num2
c = num1 | num2

print("Binary AND =",b)
print("Binary OR =",c)

# Q Without applying condition statement display output as “true” if a number is
# an even number and “false” if the number is an odd number

num = int(input("enter a numbere: "))
print(num % 2 == 0)

s1 = input("Enter first string: ")
s2 = input("Enter second string: ")

print(s2 in s1)

t  = input("enter string here:")
str(t)

print("1. Find the length of a string")
print("2. Print the string in upper case")
print("3. Print the string in lower case")
print("4. Print the string with initial capital")
print("5. Split the string based on the character entered")

num = int(input("enter your number acording to the detail :"))

print("your number is this :",num)

if(num == 1):
    print("the length of tring is: ",len(t))
elif(num == 2):
    print("Upper:",t.upper())
elif(num == 3):
    print("Lower:",t.lower())
elif(num == 4):
    print("capital:",t.capitalize())
elif(num == 5):
    character = input("Enter the character to split by: ")
    print("Split string:", t.split(character))
else:
    print("invalid number")
