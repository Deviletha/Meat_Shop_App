// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:meet_shop/Screens/login_page/login_page.dart';
import 'package:meet_shop/Screens/signup_screen/controller/signup_page_controller.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var formkey = GlobalKey<FormState>();
  bool showpass = true;
  TextEditingController userIdController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController secondNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                heightFactor: 2,
                child: Text(
                  "Sign UP",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.black),
                ),
              ),
              Text(
                "Enter your details",
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 20, bottom: 10),
                child: TextFormField(
                  controller: userIdController,
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Email ID",
                      labelText: 'Email ID',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Enter a valid Email ID';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                child: TextFormField(
                  controller: firstNameController,
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      hintText: "First Name",
                      labelText: 'First Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid name';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                child: TextFormField(
                  controller: secondNameController,
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Second Name",
                      labelText: 'Second Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid name';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                child: TextFormField(
                  controller: phoneNumberController,
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Phone Number",
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid Phone Number';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                child: TextFormField(
                  controller: addressController,
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Address",
                      labelText: 'Address',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid Address';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                child: TextFormField(
                  controller: stateController,
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      hintText: "State",
                      labelText: 'State',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid State';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                child: TextFormField(
                  controller: locationController,
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      hintText: "location",
                      labelText: 'location',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid location';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                child: TextFormField(
                  controller: postalCodeController,
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Postal code",
                      labelText: 'Postal code',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter a valid Postal code';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                child: TextFormField(
                  controller: passController,
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: const Icon(Icons.visibility_off),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpass) {
                                showpass = false;
                              } else {
                                showpass = true;
                              }
                            });
                          },
                          icon: Icon(
                            showpass == true
                                ? Icons.visibility_off
                                : Icons.visibility,
                          )),
                      hintText: "Password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  textInputAction: TextInputAction.done,
                  validator: (Password) {
                    if (Password!.isEmpty || Password.length < 6) {
                      return "Enter a valid Password, length should be greater than 6";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async {
                    bool success = await context
                        .read<SignUpPageController>()
                        .signUp(
                            emailId: userIdController.text.trim(),
                            password: passController.text.trim(),
                            phoneNumber: phoneNumberController.text.trim(),
                            firstName: firstNameController.text.trim(),
                            secondName: secondNameController.text.trim(),
                            state: stateController.text.trim(),
                            address: addressController.text.trim(),
                            postal: postalCodeController.text.trim(),
                            location: locationController.text.trim());

                    if (success = true) {
                      userIdController.clear();
                      firstNameController.clear();
                      secondNameController.clear();
                      phoneNumberController.clear();
                      addressController.clear();
                      stateController.clear();
                      locationController.clear();
                      postalCodeController.clear();
                      passController.clear();
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    } else {
                      print('Sign up Failed');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shadowColor: Colors.green[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                  child: Text("Sign Up"),
                ),
              ),
              TextButton(
                child: Text("Do you have an account? Sign Up",
                    style: TextStyle(fontSize: 15, color: Colors.black45)),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
