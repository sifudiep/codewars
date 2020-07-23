def pig_it(text):
    wordList = text.split(" ")
    print(text)
    res = ""
    for word in wordList:
        if (word == "?" or word == "." or word =="!"):
            res += word
            continue
        temp = ""
        ay = word[0] + "ay"
        restOfWord = word[1:]
        temp += restOfWord
        temp +=  ay
        res += temp
        res += " "
    print(res)
    return res.strip()
    

    #your code here

pig_it("Quis custodiet ipsos custodes ?")