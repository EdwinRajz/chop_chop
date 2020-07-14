import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shop_chop/src/actions/auth/login.dart';
import 'package:shop_chop/src/models/shop_state.dart';
import 'package:shop_chop/src/presentation/registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);
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
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const SizedBox(height: 16.0),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 124.0),
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
            controller: email,
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
            controller: password,
          ),
          const SizedBox(height: 32.0),
          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.3,right: MediaQuery.of(context).size.width * 0.3),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: Colors.green,
              onPressed: () async {
                final String email = this.email.text;
                final String password = this.password.text;

                if (email.isNotEmpty && password.isNotEmpty) {
                  StoreProvider.of<ShopState>(context).dispatch(Login(email, password));
                }
              },


              child: const Text('Sign in'),
            ),
          ),
          const SizedBox(height: 128.0),
          Center(
            child: Container(
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
            ),
          )
        ],
      ),
    );
  }
}
