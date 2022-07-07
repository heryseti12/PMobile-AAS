import 'package:aas_hery/login.dart';
import 'package:aas_hery/register.dart';
import 'package:aas_hery/style.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                margin: EdgeInsets.only(top: 90, bottom: 30),
                child: Image.asset('red.png', height: 100, width: 100,)),
            Container(
              padding: EdgeInsets.only(right: 22, left: 22),
              height: 56,
              margin: EdgeInsets.only(bottom: 15, top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
                child: Text(
                  "Login",
                  style: LoginText,
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    primary: Color.fromRGBO(30, 35, 44, 1)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 22, left: 22),
              height: 56,
              margin: EdgeInsets.only(bottom: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return RegisterPage();
                  }));
                },
                child: Text(
                  "Register",
                  style: RegisterText,
                ),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    side: BorderSide(color: Colors.black)),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Continue as a guest",
                  style: Font1,
                )),
          ],
        ),
      ),
    );
  }
}
