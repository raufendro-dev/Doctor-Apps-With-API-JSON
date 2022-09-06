import json


def userjson(username, password):
    with open('../json_file/user.json') as f:
        data = json.load(f)
    for i in data['user']:
        if i['username']==username and i['password']==password:
            return i
        else:
            error = {"info": "gagal"}
            return error


