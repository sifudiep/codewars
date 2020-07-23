# Array.diff

def array_diff(a, b):
    for i in range(len(b)):
        while (b[i] in a):
            a.remove(b[i])

    return a
                
                
array_diff([1,2,1,1], [1])