#substring  of a string
stringValue = input("Enter string : ")


def substring(stringValue):
    print("The original string is : " + str(stringValue))

    # Get all substrings of string
    # Using list comprehension + string slicing
    res = [stringValue[i: j] for i in range(len(stringValue))
        for j in range(i + 1, len(stringValue) + 1)]

    # printing result
    print("All substrings of string are : " + str(res))

substring(stringValue)

