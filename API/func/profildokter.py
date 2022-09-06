import base64
import json, os


def convert(nomorotp, id):
    with open('../json_file/otp.json') as f:
        data = json.load(f)
    if data['otp']['nomorotp']==nomorotp:
        with open('../json_file/dokter.json') as g:
            datadokter = json.load(g)
        for i in datadokter['dokter']:
            if i['id']==id:
                with open("../asset/image/picture.png", "rb") as image_file:
                    gambar = base64.b64encode(image_file.read())
                    gambar = gambar.decode('utf-8')
                return gambar


