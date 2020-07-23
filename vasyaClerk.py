# Vasya - Clerk

def tickets(people):
    bills = {
        "25": 0,
        "50": 0,
        "100": 0
    }
    for customerBill in people:
        if (customerBill == 25):
            bills["25"] += 1
        
        if (customerBill == 50):
            if (bills["25"] > 0):
                bills["50"] += 1
                bills["25"] -= 1
            else:
                print("no2")
                print(people)
                return 'NO'

        if (customerBill == 100):
            if (bills["50"] > 0 and bills["25"] > 0):
                bills["50"] -= 1
                bills["25"] -= 1
                bills["100"] += 100
            elif (bills["25"] > 2):
                bills["25"] -= 3
            else:
                print("no3")
                print(people)
                return 'NO'
        
    print("yes")
    print(people)
    return 'YES'


tickets([25, 25, 50, 100])