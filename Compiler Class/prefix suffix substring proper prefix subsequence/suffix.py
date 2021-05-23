# initializing list
test_list = ['apple', 'oranges', 'mango', 'grapes']

# initializing end Suffix
end_letter = 's'

# printing original list
print("The original list : " + str(test_list))

# using list comprehension + endwith()
# Segregating by Suffix
with_s = [x for x in test_list if x.endswith(end_letter)]
without_s = [x for x in test_list if x not in with_s]

# print result
print("The list without suffix s : " + str(without_s))
print("The list with suffix s : " + str(with_s))
