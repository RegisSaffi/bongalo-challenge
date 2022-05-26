import 'package:bongalo/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CongsScreen extends StatefulWidget {
  const CongsScreen({Key? key}) : super(key: key);

  @override
  State<CongsScreen> createState() => _CongsScreenState();
}

class _CongsScreenState extends State<CongsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Image.asset(
                        "assets/images/congz.png",
                        height: 120,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "Congratulations",
                        style: TextStyle(fontSize: 19),
                      ),
                    ),
                    const Text(
                      "You have successfully created an account. A stress-free life lies ahead of you.",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Continue"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
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
    );
  }
}
