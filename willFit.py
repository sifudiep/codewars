def will_fit(present, box): 
    willFit = True
    
    newPresent = sorted(present)
    newBox = sorted(box)
    
    for i in range(3):
        if (newPresent[i] > newBox[i] - 2):
            willFit = False
    
    return willFit

    
will_fit((7, 28, 33),(37, 29, 13))