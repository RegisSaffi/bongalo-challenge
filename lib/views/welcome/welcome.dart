import 'package:bongalo/theme/theme.dart';
import 'package:bongalo/views/authentication/login.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg.png",
            fit: BoxFit.cover,
          ),
          Container(
            color: overlayColor.withOpacity(.75),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Flex(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              direction: Axis.vertical,
              children: [
                Flexible(
                  flex: 6,
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(text: "Book "),
                          TextSpan(
                              text: "ahead ",
                              style: TextStyle(color: primaryColor)),
                          TextSpan(text: "your\n"),
                          TextSpan(text: "next trip or vacation"),
                        ],
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Create account"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith((states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return primaryColor.withOpacity(.4);
                                }
                                return null;
                              }),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (_) => const LoginScreen()));
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(color: primaryColor),
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                  if (states.contains(MaterialState.disabled)) {
                                    return Colors.white.withOpacity(.4);
                                  }
                                  return Colors.white;
                                }),
                                overlayColor: MaterialStateProperty.all(
                                    primaryColor.withOpacity(.1))),
                          ),
                          width: MediaQuery.of(context).size.width,
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30, top: 15),
                        child: Text(
                          "Or",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 48,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          label: const Text(
                            "Continue with Apple",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith((states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.white.withOpacity(.4);
                                }
                                return Colors.white;
                              }),
                              overlayColor: MaterialStateProperty.all(
                                  primaryColor.withOpacity(.1))),
                          icon: Image.asset(
                            "assets/icons/apple.png",
                            height: 24,
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 48,
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          label: const Text(
                            "Continue with Google",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith((states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.white.withOpacity(.4);
                                }
                                return Colors.white;
                              }),
                              overlayColor: MaterialStateProperty.all(
                                  primaryColor.withOpacity(.1))),
                          icon: Image.asset(
                            "assets/icons/google.png",
                            height: 25,
                          ),
                        ),
                        width: MediaQuery.of(context).size.width,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
