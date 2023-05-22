import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security/app/data/provider/smart_home.provider.dart';
import 'package:security/app/data/repository/auth_repository.dart';
import 'package:security/app/modules/forget/views/forget_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LoginController controller =
        Get.put(LoginController(AuthRepository(SmartHomeProvider())));
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
                          controller: controller.emailEditingController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: 'email',
                              border: OutlineInputBorder(),
                              labelText: 'email',
                              prefixIcon: Icon(Icons.person_outline_outlined)),
                          validator: (value) {
                            return controller.validateEmail(value!);
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          controller: controller.passwordEditingController,
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
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                context: context,
                                builder: (context) => Container(
                                  padding: const EdgeInsets.all(30),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Make Selection',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge,
                                      ),
                                      Text(
                                        'select one of the option given below to reset password',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                TextButton.icon(
                                                  label:
                                                      Text('Reset via email'),
                                                  icon: Icon(Icons.email),
                                                  onPressed: () {},
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                TextButton.icon(
                                                  label: Text(
                                                      'Reset via phone number'),
                                                  icon: Icon(Icons.email),
                                                  onPressed: () {
                                                    Get.to(ForgetView());
                                                  },
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: Text('forget Password?',
                                style: TextStyle(color: Colors.blue)),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                controller.validateAndLogin(
                                    email:
                                        controller.emailEditingController.text,
                                    password: controller
                                        .passwordEditingController.text
                                        .trim());
                              },
                              child: Text('login'.toUpperCase())),
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
