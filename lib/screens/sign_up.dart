import 'package:flutter/material.dart';
import 'package:task_sn/customs/customs.dart';
import 'package:task_sn/utils/utils.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      padding: const EdgeInsets.all(8.0),
      height: fullHeight(context),
      width: fullWidth(context),
      color: colorScreenWhite,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                spaceExtraLarge,
                spaceExtraLarge,
                Text(
                  'Sign up'.toUpperCase(),
                  style: textLibreStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w900),
                ),
                spaceExtraLarge,
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hello ',
                        style: textLibreStyle.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: 'Beautiful.!',
                        style: textLibreStyle.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),

                spaceMedium,
                Text(
                  'Enter your information to create your account',
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  style: textLibreStyle.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w300),
                ),
                //second section
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // spaceExtraLarge,
                      spaceExtraLarge,
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          autofocus: false,
                          // controller: _empIdController,
                          textInputAction: TextInputAction.next,
                          // style: const TextStyle(fontSize: 15.0, color: Colors.black, fontFamily: ""),
                          style: textFormFieldStyle,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            hintText: 'Enter Username',
                            labelText: "User Name*",
                            // filled: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 2.0),
                            fillColor: Colors.grey,
                            // contentPadding: const EdgeInsets.only(
                            //     left: 14.0, bottom: 6.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0XFF1973bb)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      spaceExtraLarge,
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          autofocus: false,
                          // controller: _empIdController,
                          textInputAction: TextInputAction.next,
                          // style: const TextStyle(fontSize: 15.0, color: Colors.black, fontFamily: ""),
                          style: textFormFieldStyle,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            hintText: 'Enter Email ID',
                            labelText: "Email ID*",
                            // filled: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 2.0),
                            fillColor: Colors.grey,
                            // contentPadding: const EdgeInsets.only(
                            //     left: 14.0, bottom: 6.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0XFF1973bb)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      spaceExtraLarge,
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          autofocus: false,
                          // controller: _empIdController,
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                          // style: const TextStyle(fontSize: 15.0, color: Colors.black, fontFamily: ""),
                          style: textFormFieldStyle,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            hintText: 'Enter Password',
                            labelText: "Password*",
                            // filled: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 2.0),
                            fillColor: Colors.grey,
                            // contentPadding: const EdgeInsets.only(
                            //     left: 14.0, bottom: 6.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0XFF1973bb)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      spaceMedium,
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Row(
                          children: [
                            Checkbox(
                                value: _value,
                                activeColor: _value ? Colors.orange : null,
                                onChanged: (val) {
                                  setState(() {
                                    _value = !_value;
                                  });
                                }),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'I agree to the \n',
                                      style: textLibreStyle.copyWith(
                                          fontSize: 10)),
                                  TextSpan(
                                    text:
                                        'Terms and conditions, Privacy Policy',
                                    style: textLibreStyle.copyWith(
                                        fontSize: 10,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  TextSpan(
                                      text: ' and',
                                      style: textLibreStyle.copyWith(
                                          fontSize: 10)),
                                  TextSpan(
                                    text: ' Fees.',
                                    style: textLibreStyle.copyWith(
                                        fontSize: 10,
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        // alignment: Alignment.bottomRight,
                        // child: Text(
                        //   'Forgot Password?',
                        //   style: textLibreStyle.copyWith(
                        //       fontWeight: FontWeight.bold),
                        // ),
                      ),
                    ],
                  ),
                ),
                //Last Section
                spaceExtraLarge,
                Container(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      spaceMedium,
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            // navigate(context, const SignIn());
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15.0),
                            child: Text('Sign up'.toUpperCase()),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: signInBtnColor,
                              shape: const StadiumBorder(),
                              elevation: 0.5),
                        ),
                      ),
                      spaceLarge,
                      Text(
                        'Or You can Join with',
                        style: textLibreStyle.copyWith(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      spaceLarge,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 21, 75, 250),
                                shape: BoxShape.circle),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/fb.png',
                                height: 20.0,
                                width: 20.0,
                              ),
                            ),
                          ),
                          spaceMediumWidth,
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/google.png',
                                height: 20.0,
                                width: 20.0,
                              ),
                            ),
                          ),
                          spaceMediumWidth,
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: const BoxDecoration(
                                color: Colors.blue, shape: BoxShape.circle),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/twitter.jpg',
                                height: 20.0,
                                width: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      spaceExtraLarge,
                      // const Text(
                      //     "Don't have an Account? Click here to Register Now"),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: "Don't have an Account? Click here to ",
                                style: textLibreStyle.copyWith(fontSize: 12)),
                            TextSpan(
                              text: 'LogIn',
                              style: textLibreStyle.copyWith(
                                  decoration: TextDecoration.underline,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            // TextSpan(text: ' world!'),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    )));
  }
}
