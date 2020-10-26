
text = '''
user1 GET /endpoint 1.1.1.1 200
user2 POST /endpoint 2.2.2.2 201
user1 PUT /endpoint 3.3.3.3 500
user1 PATCH /endpoint 4.4.4.4 401
'''

print(re.findall(pattern, text, re.MULTILINE))
