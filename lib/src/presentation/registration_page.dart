import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shop_chop/src/actions/auth/update_registration_info.dart';
import 'package:shop_chop/src/containers/registration_info_container.dart';
import 'package:shop_chop/src/models/auth/registration_info.dart';
import 'package:shop_chop/src/models/shop_state.dart';

import 'main_page.dart';

class RegistrationPage extends StatefulWidget {
  static const String id = 'Registration';

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

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
            child: Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 32.0,
                    ),
                    RegistrationInfoContainer(builder: (BuildContext context, RegistrationInfo info) {
                      return TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          labelText: 'name',
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        validator: (String value) {
                          if (value.trim().length < 3) {
                            return 'Name is too short';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (String value) {
                          final RegistrationInfo newInfo =
                              info.rebuild((RegistrationInfoBuilder b) => b.username = value);
                          StoreProvider.of<ShopState>(context).dispatch(
                            UpdateRegistrationInfo(newInfo),
                          );
                        },
                      );
                    }),
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
            ),
          )
        ],
      ),
    );
  }
}
