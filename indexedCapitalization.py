# Indexed capitalization

def capitalize(s,ind):
    capitalized = ""
    counter = 0 
    for i in range(0, len(s)):
        if (i == ind[counter]):
            capitalized += s[i].upper()
            if (counter < len(ind) - 1):
                counter += 1
        else: 
            capitalized += s[i]

    return capitalized



capitalize("abracadabra",[2,6,9,10])

