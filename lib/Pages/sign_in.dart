import 'package:adhd/core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formkey = GlobalKey<FormState>();
  final TextEditingController _emailControler = TextEditingController();
  final TextEditingController _passControler = TextEditingController();
  bool joing = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 21,
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                    child: Row(
                      children: [
                        Text(
                          'Sign in',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 35,
                              color: AppColors.white,
                              fontFamily: 'Amiko'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                    ),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 118.0),
                              child: Text(
                                'Email address',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Amiko'),
                              ),
                            ),
                          ],
                        ),
                        TextFormField(
                          controller: _emailControler,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'empty feild';
                            } else if (!value.contains('@')) {
                              return 'E-mail must contain @';
                            } else if (!value.contains('.com')) {
                              return 'E-mail must contain .com';
                            }
                            return null;
                          },
                          style: const TextStyle(color: AppColors.white),
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: "Enter your email",
                            focusColor: AppColors.white,
                            fillColor: AppColors.white,
                            hintStyle: TextStyle(color: AppColors.white),
                            contentPadding: EdgeInsets.only(top: 20, left: 8),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.white, width: 2)),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.white, width: 2),
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.white, width: 2)),
                            focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Row(
                          children: [
                            Text('Set password',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Amiko')),
                          ],
                        ),
                        TextFormField(
                          style: const TextStyle(color: AppColors.white),
                          controller: _passControler,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'empty feild';
                            } else if (value.length < 8) {
                              return 'Password must contains more than 8 ';
                            } else if (value.length > 20) {
                              return 'Password must contains less than 20 ';
                            }
                            return null;
                          },
                          obscureText: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: "Enter your password",
                            hintStyle: TextStyle(color: AppColors.white),
                            contentPadding: EdgeInsets.only(top: 20, left: 8),
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.white, width: 2)),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.white, width: 2),
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.white, width: 2)),
                            focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)),
                          ),
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                              width: 40,
                              child: Checkbox(
                                  side: MaterialStateBorderSide.resolveWith(
                                    (states) => const BorderSide(
                                      width: 2.0,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  value: joing,
                                  activeColor: AppColors.blue,
                                  onChanged: (value) {
                                    joing = value ?? false;

                                    setState(() {});
                                  }),
                            ),
                            const Flexible(
                                child: Text(
                              'Show password',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Amiko'),
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                            child: InkWell(
                                onTap: () {
                                  if (formkey.currentState?.validate() ==
                                      true) {
                                    _emailControler.clear();
                                    _passControler.clear();
                                  } else {}
                    //               Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const QuizDetailsView()),
                    // );
                                },
                                child: Container(
                                  height: 45,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: AppColors.blue,
                                      borderRadius: BorderRadius.circular(35)),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Sign in',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Amiko'),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_outlined,
                                        color: AppColors.black,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ))),
                        const SizedBox(
                          height: 25,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 65),
                          child: Row(children: <Widget>[
                            Expanded(
                                child: Divider(
                              color: AppColors.white,
                              thickness: 2,
                            )),
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "or",
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    fontFamily: 'Amiko'),
                              ),
                            ),
                            Expanded(
                                child: Divider(
                              color: AppColors.white,
                              thickness: 2,
                            )),
                          ]),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          FontAwesomeIcons.facebook,
                          color: AppColors.facebook,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Continue with facebook',
                          style: TextStyle(fontSize: 16, fontFamily: 'Amiko'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.purple,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Continue with instagram',
                          style: TextStyle(fontSize: 16, fontFamily: 'Amiko'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          FontAwesomeIcons.twitter,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Continue with twitter',
                          style: TextStyle(fontSize: 16, fontFamily: 'Amiko'),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                            color: AppColors.white, fontFamily: 'Amiko'),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            fontFamily: 'Amiko'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
