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
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.green,
                      ),
                      contentPadding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 3.0),
                      ),
                      labelText: 'email',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    validator: (String value) {
                      if (value.length > 6) {
                        return 'email is too short';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (String value) {},
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.vpn_key,
                        color: Colors.green,
                      ),
                      contentPadding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 3.0),
                      ),
                      labelText: 'password',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onChanged: (String value) {

                    },
                  ),
                  const SizedBox(height: 32.0),
                  RaisedButton(
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
