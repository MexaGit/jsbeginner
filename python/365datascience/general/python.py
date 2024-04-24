import math as m
from math import sqrt as s
# from math import * = all, but is not a good idea


def five(x):
    return 10 == x / 2


print(five(20))


def number(x):
    if x > 5:
        print("Is bigger")
    elif x < 5:
        print("Is smaller")
    else:
        print("Is equal")


print(number(2))


if 5 == 15 / 3:
    print("Hooray!")
else:
    print("Is not correct")


def simple():
    print("Hello")


print(simple())


def print_plus_ten(x):
    # result = x + 10
    return x + 10


print(print_plus_ten(4))


def wage(w_wage):
    return w_wage * 25


def wage_bonus(w_wage_bonus):
    return wage(w_wage_bonus) + 50


print(wage(5), wage_bonus(5))


def add_ten(m):
    if m >= 100:
        m += 10
        return m
    else:
        return 'Save more!'


print(add_ten(99))


Participant = ['Edd', 'John', 'Gregoy', 'Kiko', 'Alvaro']

Participant.sort()
print(Participant)


Participant.sort(reverse=True)
print(Participant)


even = [1, 2, 3, 4, 5, 6, 7, 8, 9]
for n in even:
    print(n, end=" ")

x = 0
while x < 10:
    print(x, end=" ")
    x += 1


print(list(range(19)))
print("")

print(list(range(3, 7)))
print("")

print(list(range(1, 19, 2)))
print("")


for n in range(20):
    if n % 2 == 0:
        print(n, end=" ")
    else:
        print("Odd", end=" ")

print("")

for n in range(len(even)):
    print(even[n], end=" ")


number = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 34, 56, 57, 8]


def count(number):
    total = 0
    for x in number:
        if x < 20:
            total += 1
    return total


print("")

print(count(number))

print("")

prices = {
    "box_of_spaghetti": 4,
    "lasagna": 5,
    "hamburger": 2
}
quantity = {
    "box_of_spaghetti": 6,
    "lasagna": 10,
    "hamburger": 0
}

money_spend = 0

for i in prices:  # is you change the prices for quantity will be the same becuase both dictionaries contain the same keys
    money_spend = money_spend + (prices[i] * quantity[i])

print(money_spend)


# print(m.s(16))


haircolor = 'blue'
haircolor
print(type(haircolor))
