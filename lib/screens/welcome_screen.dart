import 'package:flutter/material.dart';
import 'package:task_sn/customs/customs.dart';
import 'package:task_sn/screens/sign_in.dart';
import 'package:task_sn/screens/sign_up.dart';
import 'package:task_sn/utils/utils.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(0.0),
        width: fullWidth(context),
        height: fullHeight(context),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    'Welcome',
                    style: textLibreStyle.copyWith(
                        fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  spaceMedium,
                  Text(
                    'Easiest way to manage your money',
                    style: textLibreStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  spaceMedium,
                  Text(
                    'Finance is a gun. Politics is knowing when to pull \nthe Trigger.',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: textLibreStyle.copyWith(
                        fontSize: 13, fontWeight: FontWeight.w300),
                  ),
                  spaceExtraLarge,
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        navigate(context, const SignIn());
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15.0),
                        child: Text('Sign in with Google'.toUpperCase()),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: signInBtnColor,
                          shape: const StadiumBorder(),
                          elevation: 0.5),
                    ),
                  ),
                  spaceLarge,
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        navigate(context, const SignUp());
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15.0),
                        child: Text(
                          'Create An Account'.toUpperCase(),
                          style: textLibreStyle.copyWith(color: colorBlack),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: createAccBtnColor,
                          shape: const StadiumBorder(),
                          elevation: 0.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
