import 'package:bongalo/theme/theme.dart';
import 'package:bongalo/views/authentication/otp_code.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

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
                  flex: 5,
                  child: Center(
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(text: "Create account"),
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
                        TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          onChanged: (s) {
                            setState(() {});
                          },
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: "Enter phone number",
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 5),
                              child: Flex(
                                direction: Axis.horizontal,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      padding: const EdgeInsets.all(4),
                                      margin: const EdgeInsets.only(right: 3),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/flags/NG.png",
                                            width: 40,
                                          ),
                                          const Icon(
                                              Icons.keyboard_arrow_down_rounded)
                                        ],
                                      )),
                                  const Text("+234")
                                ],
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                gapPadding: 0,
                                borderSide: const BorderSide(width: 0)),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 48,
                          child: ElevatedButton(
                            onPressed: phoneController.text.isEmpty
                                ? null
                                : () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const OtpCodeScreen()));
                                  },
                            child: const Text("Continue"),
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
