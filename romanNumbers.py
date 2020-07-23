# Roman Numerals Encoder

def solution(n):
    romanSymbols = ""
    if (n > 999):
        M = (n - (n % 1000)) / 1000 
        n = n % 1000
        for m in range(int(M)):
            romanSymbols += "M"

    if (n > 499):
        D = (n - (n % 500)) / 500
        n = n % 500
        for d in range(int(D)):
            romanSymbols += "D"
            
    if (n > 99):
        C = (n - (n % 100)) / 100
        n = n % 100
        for c in range(int(C)):
            romanSymbols += "C"

    if (n > 49):
        L = (n - (n % 50)) / 50
        n = n % 100
        for l in range(int(L)):
            romanSymbols += "L"

    if (n > 9):
        X = (n - (n % 10)) / 10
        n = n % 10
        for x in range(int(X)):
            romanSymbols += "X"

    if (n > 4):
        V = (n - (n % 5)) / 5
        n = n % 5
        for V in range(int(V)):
            romanSymbols += "V"

    if (n > 0):
        I = (n - (n % 1)) / 1
        n = n % 1
        for i in range(int(I)):
            romanSymbols += "I"

    return romanSymbols