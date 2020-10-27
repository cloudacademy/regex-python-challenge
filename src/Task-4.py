import re

pattern = r'.'

# Example text to search:
'''
space
space1
apple
2apple
brush
brush3
'''

# Should match:
# ['space1', '2apple', 'brush3']

