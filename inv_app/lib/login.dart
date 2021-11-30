import 'package:flutter/material.dart';
import 'modules.dart';

class LoginDemo extends StatefulWidget {
  const LoginDemo({Key? key}) : super(key: key);
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "LogIn",
          style: TextStyle(
              color: Colors.white, fontFamily: 'Mulish', fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Slika loga
            const Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 50),
              child: Center(
                  child: Image(image: AssetImage('asset/images/logo.png'))),
            ),

            //Tekst Email
            const Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('EMAIL:',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
            ),

            //TextBox za email
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'name@email.com'),
              ),
            ),

            //Tekst Password
            const Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('PASSWORD:',
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black, fontSize: 15)),
              ),
            ),

            //TextBox za lozinku
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: '********'),
              ),
            ),

            //LogIn Button
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 30, bottom: 0),
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Modules()));
                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),

            //Forgot password Button
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Modules()));
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
            ),

            //Don't have an account
            const SizedBox(
              height: 70,
            ),
            const Text("Don't have an account?"),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const Modules()));
                  },
                  child: const Text(
                    'SIGN UP',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
