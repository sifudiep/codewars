# Highest Scoring Word

def high(x):
    highestWordScore = 0
    highestScoredWord = ""
    words = x.split()
    for word in words:
        wordScore = 0
        for letter in word:
            wordScore += ord(letter) - 96
        if (wordScore > highestWordScore):
            highestWordScore = wordScore
            highestScoredWord = word
    return highestScoredWord




