import 'package:flutter/material.dart';
import 'package:shop_chop/data/auth_api.dart';

import 'main_page.dart';


class RegistrationPage extends StatelessWidget {
  static const String id = 'Registration';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        //todo: firebase authentication to be implemented
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 32.0,
                  ),
                  TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      labelText: 'name',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      labelText: 'birth date',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      labelText: 'email',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      labelText: 'password',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      labelText: 'address',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      labelText: 'phone number',
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MainPage.id);
                    },
                    child: const Text('Register'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
