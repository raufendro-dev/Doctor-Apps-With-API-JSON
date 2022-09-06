import telepot, json

def kirimotp():
    token = '5464106727:AAESbdVAo0yVSBLy1msVM5dLuZdOD1arhrI'
    penerimaid = 1769420825
    with open('../json_file/otp.json') as f:
        data = json.load(f)
    OTP = data['otp']['nomorotp']
    bot = telepot.Bot(token)
    pesan = 'OTP anda adalah ' + str(OTP)
    bot.sendMessage(penerimaid, pesan)
    return 'sukses'

