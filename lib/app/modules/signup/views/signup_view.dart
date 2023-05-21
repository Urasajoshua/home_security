import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security/app/data/provider/smart_home.provider.dart';
import 'package:security/app/data/repository/auth_repository.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SignupController controller =
        Get.put(SignupController(AuthRepository(SmartHomeProvider())));

    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
              Image.asset(
                'images/1.png',
                height: height * 0.3,
              ),
              Text(
                'Welcome Back',
                style: GoogleFonts.timmana(textStyle: TextStyle(fontSize: 35)),
              ),
              Form(
                  key: controller.formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          keyboardType: TextInputType.name,
                          controller: controller.nameEditing,
                          validator: (value) {
                            return controller.validateName(value!);
                          },
                          decoration: InputDecoration(
                              hintText: 'name',
                              border: OutlineInputBorder(),
                              labelText: 'name',
                              prefixIcon: Icon(Icons.person_outline_outlined)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          controller: controller.emailEditing,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            return controller.validateEmail(value!);
                          },
                          decoration: InputDecoration(
                              hintText: 'email',
                              border: OutlineInputBorder(),
                              labelText: 'email',
                              prefixIcon: Icon(Icons.email_outlined)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          controller: controller.passwordEditing,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye_rounded),
                              hintText: 'password',
                              border: OutlineInputBorder(),
                              labelText: 'password',
                              prefixIcon: Icon(Icons.password_rounded)),
                          validator: (value) {
                            return controller.validatePassword(value!);
                          },
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                controller.validateAndSignup(
                                    email: controller.emailEditing.text.trim(),
                                    password:
                                        controller.passwordEditing.text.trim(),
                                    name: controller.nameEditing.text.trim());
                              },
                              child: Text('sign up'.toUpperCase())),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('or'),
                            SizedBox(
                              width: double.infinity,
                              child: OutlinedButton.icon(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    'images/google.png',
                                    width: 20,
                                  ),
                                  label: Text('Sign with Google')),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
