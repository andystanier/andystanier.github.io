#!/usr/bin/python

##############################################################
##
##  Yahtzee.py
##  Andy Stanier
##  29-30 August 2016
##
##  The purpose is to simulate throwing a Yahtzee
##  (Five of a kind with 5 dice) and counting how
##  many goes it takes before it occurs.
##
##  The process is repeated many times and the average
##  number taken.
##
##############################################################

import math
import random
import sys

##
## Simulates 5 dice being rolled, places the result of each die in a list
## Tests if 5 of dice are the same value
## 
class fiveDice():

    # for holding the 5 dice values
    _numList = []

    def __init__(self):
        self.roll5dice()

    # get number list
    # returns numList
    def getNumList(self):
        return self._numList

    # gets the value at a given index
    # returns the value
    # parameter index, the index whose value is required
    def getIndexOfNumList(self, index):
        return self._numList[index]

    # generates a random num from 1 to 6
    # returns a number 1 - 6 inclusive
    def randomNum(self):
        return random.randint(1,6)

    # generates 5 random numbers and stores them in a list
    def roll5dice(self):
        if len(self._numList) == 5:
            del self._numList[:]
        for num in range(5):
            self._numList.append(self.randomNum())

    # tests if two of the dice are equal in value
    # parameter first, the first number to check against
    # parameter second, the second number to check
    # returns True or False
    def equal2Nums(self, first, second):
        firstNum = self.getIndexOfNumList(first-1)
        secondNum = self.getIndexOfNumList(second-1)
        if firstNum == secondNum:
            return True
        else:
            return False

    # Tests if all 5 dice are equal (Yahtzee)
    # returns True or False
    def yahtzee(self):
        if self.equal2Nums(1,2) and self.equal2Nums(1,3) and self.equal2Nums(1,4) and self.equal2Nums(1,5):
            return True
        else:
            return False



# Rolls the dice the number of times provided
# parameter times, number of times to roll the dice
# returns the number of rolls to get a Yahtzee
def rollDiceXTimes(times):
    count = 0
    x = 0
    while x < times:
        roll = fiveDice()
        if not(roll.yahtzee()):
           count += 1
        else:
            #print(roll.getNumList())
            count += 1
            break
        x += 1
    return count
    

# Main method
# takes two arguments, the upperlimit of rolls and the number of repeats
# suggested values are 10000 and 150
def main(argv):

    
    wrongArgs = "Takes one argument, number of repeats: suggested 150"

    if len(sys.argv) <= 2:
        numberOfRepeats = 150
        print(wrongArgs)
        print("Running with %s repeats" % (str(numberOfRepeats)))
        sys.argv = [sys.argv[0], str(numberOfRepeats)]
        print("\r")

    if len(sys.argv) > 2:
        print(wrongArgs)
        sys.exit()

    # roll the dice no more than this 
    upperlimit = 10000
    
    # number of times this is repeated
    ##times = 150
    times = int(sys.argv[1])

    # the list to hold the data
    attempts = []
    
    print("Rolling 5 dice...when I get a Yahtzee I will stop")
    print("Repeating "+str(times)+" times...")
    print("\r")
    
    # range is the number of times the iterations are run   
    for t in range(times):
        roll = rollDiceXTimes(upperlimit)
        if roll == upperlimit:
            print("Took more than %d attempts" % (upperlimit))
        else:
            attempts.append(roll)

    minNum = min(attempts)
    maxNum = max(attempts)
    aveNum = sum(attempts)/len(attempts)

    ## output
    
    #print(attempts)
    print("The lowest number of rolls it took me was "+str(minNum))
    print("The most was "+str(maxNum)+" rolls")
    print("On average it took me %.1f rolls" % (aveNum))
    print("\r")
    print("Probability says I should get a Yahtzee every 1296 rolls")
    print("I was out by %.1f rolls" % math.fabs(aveNum-1296))
    

if __name__ == "__main__":
        main(sys.argv[1:])
