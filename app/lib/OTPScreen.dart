import 'package:flutter/material.dart';
import 'func/getAPI.dart';
import 'package:app/temp/jembatan.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final otp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 100,
        ),
        SafeArea(
            child: Center(
          child: Image(image: AssetImage('assets/logo/logo.png')),
        )),
        SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            SafeArea(
                child: Center(
              child: Container(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                      textAlign: TextAlign.center,
                      controller: otp,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: 'OTP')),
                  width: 283,
                  height: 50,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                      color: Color.fromARGB(220, 220, 220, 220))),
            )),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 20,
        ),
        RoundedButton(
          onPressed: () {
            API.otp(otp.text, userid);
            otpnomor = otp.text;
            if (loginsukses == "y") {
              print(namadokter);
              print(nosip);
              print(nostr);
            }
          },
          title: "       OK       ",
          buttonColor: Colors.blue,
        )
      ],
    ));
  }
}
