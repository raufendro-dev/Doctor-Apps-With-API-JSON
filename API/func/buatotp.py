import math, random, json

def buatotp():
    with open('../json_file/otp.json') as f:
        data = json.load(f)
    digits = "0123456789"
    OTP = ""
    for i in range(4) :
        OTP += digits[math.floor(random.random() * 10)]
    data['otp']['nomorotp']=OTP
    with open('../json_file/otp.json', 'w') as j:
        json.dump(data, j)
 
    