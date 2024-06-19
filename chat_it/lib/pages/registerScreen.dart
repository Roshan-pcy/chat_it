import 'package:chat_it/componets/MyTextFiled.dart';
import 'package:chat_it/componets/costomButton.dart';
import 'package:chat_it/pages/login_page.dart';
import 'package:chat_it/pages/registerScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Registerscreen extends StatefulWidget {
  void Function()? onTap;
  Registerscreen({super.key, required this.onTap});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  final TextEditingController gmailContrller = TextEditingController();

  final TextEditingController passwordContrller = TextEditingController();

  logIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              color: Theme.of(context).colorScheme.primary,
              Icons.app_registration,
              size: 70,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Register now',
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(
              height: 10,
            ),
            Mytextfiled(
              controller: gmailContrller,
              hinttext: 'Gmail',
              obsecure: false,
            ),
            const SizedBox(
              height: 10,
            ),
            Mytextfiled(
              controller: passwordContrller,
              hinttext: 'password',
              obsecure: true,
            ),
            const SizedBox(
              height: 10,
            ),
            Mytextfiled(
              controller: passwordContrller,
              hinttext: 'confirm password',
              obsecure: true,
            ),
            const SizedBox(
              height: 10,
            ),
            Costombutton(
              onTap: () => logIn,
              text: 'Log in',
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('alredy log in? '),
                GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      '  Log in',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.secondary),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
