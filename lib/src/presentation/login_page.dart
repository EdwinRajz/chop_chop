import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_chop/src/presentation/registration_page.dart';

import 'main_page.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'Login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        //todo: firebase authentication to be implemented
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 16.0),
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/logo.png'),
              ),
              border: Border.all(
                width: 3.0,
                color: Colors.green,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(400.0),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 32.0,
                  ),
                  TextFormField(
                    controller: email,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green, width: 3.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      labelText: 'email',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  TextFormField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder:OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.green, width: 3.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      labelText: 'password',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, MainPage.id);
                    },
                    child: const Text('Sign in'),
                  ),
                  const SizedBox(height: 128.0),
                  Container(
                    child: Text.rich(
                      TextSpan(
                        text: 'Don\'t have an account? ',
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, RegistrationPage.id);
                              },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
