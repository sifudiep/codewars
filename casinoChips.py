def solve(arr):
    arr.sort(reverse=True)
    print("1 :",arr)
    days = 0
    arr[0] -= arr[2]
    days += arr[2]
    arr[2] = 0
    print("2 :",arr)


    arr.sort(reverse=True)
    arr[0] -= arr[1]
    days += arr[1]
    arr[1] = 0
    print("3 :",arr)


    print(days)
    return days


solve([23, 2, 1])