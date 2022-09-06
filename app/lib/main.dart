import 'package:flutter/material.dart';
import 'func/getAPI.dart';
import 'package:app/temp/jembatan.dart';
import 'package:flutter_awesome_buttons/flutter_awesome_buttons.dart';
import 'OTPScreen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Dokter',
      theme: ThemeData(
        backgroundColor: Colors.white,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final username = TextEditingController();
  final password = TextEditingController();

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
                      controller: username,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: 'Username')),
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
        Stack(
          children: [
            SafeArea(
                child: Center(
              child: Container(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                      textAlign: TextAlign.center,
                      controller: password,
                      decoration: const InputDecoration(
                          border: InputBorder.none, hintText: 'Password')),
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
          height: 20,
        ),
        RoundedButton(
          onPressed: () {
            API.login(username.text, password.text);

            print("benar");
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade, child: OTPScreen()));
          },
          title: "      Login      ",
          buttonColor: Colors.blue,
        )
      ],
    ));
  }
}
