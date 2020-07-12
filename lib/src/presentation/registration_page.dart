import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shop_chop/src/actions/auth/sign_up.dart';
import 'package:shop_chop/src/actions/auth/update_registration_info.dart';
import 'package:shop_chop/src/containers/registration_info_container.dart';
import 'package:shop_chop/src/models/auth/registration_info.dart';
import 'package:shop_chop/src/models/shop_state.dart';

import 'main_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({
    Key key,
  }) : super(key: key);
  static const String id = 'Registration';

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  DateTime selectedDate = DateTime.now();
  final TextEditingController _date = TextEditingController();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context, initialDate: selectedDate, firstDate: DateTime(1901, 1), lastDate: DateTime.now());
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _date.value = TextEditingValue(text: picked.toString());
      });
    }
  }

  void _result(dynamic action) {
    if (action is SignUpSuccessful) {
      Navigator.pushNamed(context, MainPage.id);
    } else if (action is SignUpError) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            content: Text('Error creating user'),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: RegistrationInfoContainer(
        builder: (BuildContext context, RegistrationInfo info) {
          return Form(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: <Widget>[
                const SizedBox(height: 32.0),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.green,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 3.0),
                    ),
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
                    final RegistrationInfo newInfo = info.rebuild((RegistrationInfoBuilder b) => b.name = value);
                    StoreProvider.of<ShopState>(context).dispatch(
                        UpdateRegistrationInfo(newInfo));
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.green,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 3.0),
                    ),
                    labelText: 'email',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  validator: (String value) {
                    if (value.length < 6) {
                      return 'email is too short';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (String value) {
                    final RegistrationInfo newInfo = info.rebuild((RegistrationInfoBuilder b) => b.email = value);
                    StoreProvider.of<ShopState>(context).dispatch(
                      UpdateRegistrationInfo(newInfo),
                    );
                  },
                ),
                const SizedBox(height: 16.0),
                GestureDetector(
                  onTap: () => _selectDate(context),
                  child: AbsorbPointer(
                    child: TextFormField(
                      controller: _date,
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green, width: 3.0),
                        ),
                        labelText: 'date of birth',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(
                          Icons.cake,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.vpn_key,
                      color: Colors.green,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 3.0),
                    ),
                    labelText: 'password',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onChanged: (String value) {
                    final RegistrationInfo newInfo = info.rebuild((RegistrationInfoBuilder b) => b.password = value);
                    StoreProvider.of<ShopState>(context).dispatch(
                      UpdateRegistrationInfo(newInfo),
                    );
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.home,
                      color: Colors.green,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 3.0),
                    ),
                    labelText: 'address',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onChanged: (String value) {
                    final RegistrationInfo newInfo = info.rebuild((RegistrationInfoBuilder b) => b.address = value);
                    StoreProvider.of<ShopState>(context).dispatch(
                      UpdateRegistrationInfo(newInfo),
                    );
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone_android,
                      color: Colors.green,
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 3.0),
                    ),
                    labelText: 'phone number',
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onChanged: (String value) {
                    final RegistrationInfo newInfo = info.rebuild((RegistrationInfoBuilder b) => b.phone = value);
                    StoreProvider.of<ShopState>(context).dispatch(
                      UpdateRegistrationInfo(newInfo),
                    );
                  },
                ),
                const SizedBox(height: 48.0),
                Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.3,
                          left: MediaQuery.of(context).size.width * 0.3),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        color: Colors.green,
                        onPressed: () {
                          if (Form.of(context).validate()) {
                            StoreProvider.of<ShopState>(context).dispatch(SignUp(_result));
                          }
                        },
                        child: const Text('Register'),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
