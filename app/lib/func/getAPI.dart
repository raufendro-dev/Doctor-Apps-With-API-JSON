import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:app/temp/jembatan.dart';

class API {
  static login(username, password) async {
    String apiUrl =
        'http://192.168.1.10:5000/login/login=$username&password=$password';
    var response = await http.get(Uri.parse(apiUrl));
    var hasil = json.decode(response.body);
    if (hasil['info'] == "gagal") {
      userid = hasil['info'];
    }
    if (hasil['id'] != null) {
      userid = hasil['id'];
    }
  }

  static otp(nomorotp, userid) async {
    nomorotp = nomorotp.toString();
    String apiUrl = 'http://192.168.1.10:5000/otp/id=$userid&otp=$nomorotp';
    var response = await http.get(Uri.parse(apiUrl));
    var hasil = json.decode(response.body);
    if (hasil['info'] == "gagal") {
      loginsukses = "n";
    }
    if (hasil['id'] != null) {
      loginsukses = "y";
      namadokter = hasil['name'];
      nosip = hasil['nosip'];
      nostr = hasil['nostr'];
    }
    print(hasil);
    return hasil;
  }

  static gambar(nomorotp, userid) async {
    String apiUrl = 'http://192.168.1.10:5000/gambar/id=$userid&otp=$nomorotp';
    var response = await http.get(Uri.parse(apiUrl));
    var hasil = json.decode(response.body);
    return hasil;
  }
}
