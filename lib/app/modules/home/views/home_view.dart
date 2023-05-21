import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security/app/modules/login/views/login_view.dart';
import 'package:security/app/modules/signup/views/signup_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Smart home security',
              style: GoogleFonts.lato(
                  textStyle: TextStyle(color: Colors.blue, fontSize: 26)),
            ),
            Image.asset(
              'images/1.png',
              height: height * 0.6,
              color: Colors.yellowAccent,
              colorBlendMode: BlendMode.dst,
            ),
            Column(
              children: [
                Text(
                  'Stay safe and secure with our smart home security system',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const Text('Smart home security for a smarter life.'),
              ],
            ),
            Container(
              width: double.infinity,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.lightBlue,
                      side: BorderSide(color: Colors.white),
                      padding: const EdgeInsets.symmetric(vertical: 10)),
                  onPressed: () {
                    Get.to(() => SignupView());
                  },
                  child: Text(
                    'Sign Up'.toUpperCase(),
                  )),
            ),
            Container(
              width: double.infinity,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      backgroundColor: Colors.lightGreen,
                      side: BorderSide(color: Colors.white),
                      padding: const EdgeInsets.symmetric(vertical: 10)),
                  onPressed: () {
                    Get.to(LoginView());
                  },
                  child: Text('Login'.toUpperCase())),
            )
          ],
        ),
      ),
    );
  }
}
