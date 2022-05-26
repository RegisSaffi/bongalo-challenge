import 'package:bongalo/theme/theme.dart';
import 'package:bongalo/views/authentication/create_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpCodeScreen extends StatefulWidget {
  const OtpCodeScreen({Key? key}) : super(key: key);

  @override
  State<OtpCodeScreen> createState() => _OtpCodeScreenState();
}

class _OtpCodeScreenState extends State<OtpCodeScreen> {
  TextEditingController oneController = TextEditingController();
  TextEditingController twoController = TextEditingController();
  TextEditingController threeController = TextEditingController();
  TextEditingController fourController = TextEditingController();

  bool isReady() {
    return oneController.text.isNotEmpty &&
        twoController.text.isNotEmpty &&
        threeController.text.isNotEmpty &&
        fourController.text.isNotEmpty;
  }

  @override
  void dispose() {
    oneController.dispose();
    twoController.dispose();
    threeController.dispose();
    fourController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Verify"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(15),
          child: Flex(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            direction: Axis.vertical,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "We have sent a code to your number.",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Enter the code to verify your account.",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 2,
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: TextFormField(
                                controller: oneController,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1)
                                ],
                                onChanged: (s) {
                                  setState(() {});
                                },
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: "0",
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      gapPadding: 0,
                                      borderSide: const BorderSide(width: 0)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: TextFormField(
                                controller: twoController,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1)
                                ],
                                onChanged: (s) {
                                  setState(() {});
                                },
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: "0",
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      gapPadding: 0,
                                      borderSide: const BorderSide(width: 0)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: TextFormField(
                                controller: threeController,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1)
                                ],
                                onChanged: (s) {
                                  setState(() {});
                                },
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: "0",
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      gapPadding: 0,
                                      borderSide: const BorderSide(width: 0)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: TextFormField(
                                controller: fourController,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1)
                                ],
                                onChanged: (s) {
                                  setState(() {});
                                },
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: "0",
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      gapPadding: 0,
                                      borderSide: const BorderSide(width: 0)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 48,
                        child: ElevatedButton(
                          onPressed: !isReady()
                              ? null
                              : () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) =>
                                          const CreateAccountScreen()));
                                },
                          child: const Text("Verify"),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Didn't get the code?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextButton(onPressed: () {}, child: const Text("Resend"))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Resend code in?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "00:55",
                          style: TextStyle(
                              color: primaryColor, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
