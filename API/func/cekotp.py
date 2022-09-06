import json, telepot

def cekotp(nomorotp, id):
    with open('../json_file/otp.json') as f:
        data = json.load(f)
    if data['otp']['nomorotp']==nomorotp:
        token = '5464106727:AAESbdVAo0yVSBLy1msVM5dLuZdOD1arhrI'
        penerimaid = 1769420825
        bot = telepot.Bot(token)
        with open('../json_file/dokter.json') as g:
            datadokter = json.load(g)
        for i in datadokter['dokter']:
            if i['id']==id:
                bot.sendMessage(penerimaid, 'Sukses Login')
                return i
            else:
                error = {"info": "gagal"}
                return error