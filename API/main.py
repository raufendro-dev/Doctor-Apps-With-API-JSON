from crypt import methods
from flask import Flask
from func.buatotp import buatotp
from func.cekuser import userjson
from func.kirimotptele import kirimotp
from func.cekotp import cekotp
from func.profildokter import convert


app = Flask(__name__)

@app.route('/login/login=<username>'+'&password=<password>', methods=["GET"])
def login(username, password):
   hasil = userjson(username, password)
   if hasil != {"info":"gagal"}:
      buatotp()
      kirimotp()
   return hasil

@app.route('/otp/id=<userid>&otp=<nomorotp>', methods=["GET"])
def otp(nomorotp, userid):
   id = int(userid)
   dokter = cekotp(nomorotp, id)
   return dokter

@app.route('/gambar/id=<userid>&otp=<nomorotp>')
def profil(nomorotp, userid):
   idgambar = int(userid)
   gambar = convert(nomorotp, idgambar)
   return gambar

if __name__ == '__main__':
   app.run(host='0.0.0.0', port=5000)
   