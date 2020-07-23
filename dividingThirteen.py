def thirt(n):
    return thirtFunctional(n)
        

def thirtFunctional(n):
    reversed = str(n)[::-1]
    pattern = [1, 10, 9, 12, 3, 4]
    index = 0

    res = 0

    for i in range(len(reversed)):
        if (index > 5):
            index = 0
        res += int(reversed[i]) * pattern[index]
        index += 1

    if (res == n):
        print("result: ",res)
        return res
    else:
        return thirtFunctional(res)

thirt(1111111111)