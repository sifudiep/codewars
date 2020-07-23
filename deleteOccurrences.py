from collections import Counter

def delete_nth(order,max_e):
    res = []
    counter = Counter(order)

    for num in counter:
        if (counter[num] > max_e):
            counter[num] = max_e
    
    for num in order:
        if (counter[num] > 0):
            counter[num] -= 1
            res.append(num)
    
    return res
    # for num in order:
        

delete_nth([20,37,20,21], 1)