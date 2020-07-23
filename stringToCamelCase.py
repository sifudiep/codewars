# Convert string to camel case
import re

def to_camel_case(text):
    #your code here
    if (text is ""):
        return ""

    result = ""
    if ("-" in text or "_" in text):
        strAsList = re.split("-|_", text)
        for i in range(len(strAsList)):
            if (i == 0):
                result += strAsList[0][0:]
            else:
                result += strAsList[i][0].upper()
                result += strAsList[i][1:]

    print(result)
    return result


to_camel_case("a_cat_was-pippi")