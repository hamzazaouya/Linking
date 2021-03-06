import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Registration extends StatefulWidget{
  @override
  State<Registration> createState() => _RegistrationState();
}

enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

// ignore: non_constant_identifier_names
bool hide_password = true;

class _RegistrationState extends State<Registration> {

  final currentState = MobileVerificationState.SHOW_MOBILE_FORM_STATE;

  final phoneController = TextEditingController();
  final otpController = TextEditingController();

  getMobileFormWidget(context){
    return (
      Center(
       child : 
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text(
               "Linking", 
               style: 
                 TextStyle(
                  fontSize: 60,
                  fontFamily: "Schyler",
                  letterSpacing: 5
                ),
              ),
              const SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    TextFormField(
                      maxLength: 10,
                      decoration: const InputDecoration(
                        hintText: "Name",
                        prefixStyle:  TextStyle(color: Colors.black),
                      ),
                      style: TextStyle(color: Colors.black),
                      ),
                      TextFormField(
                        controller: phoneController(),
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: "Phone Number",
                          prefixStyle:  TextStyle(color: Colors.black),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    const SizedBox(height: 10),
                     TextField(
                      maxLength: 10,
                      obscureText: hide_password,
                       decoration:  InputDecoration(
                        hintText: "Password",
                        suffix: InkWell(
                          onTap: (){
                            setState(() {
                              hide_password = !hide_password;
                            });
                          },
                          child:  Icon(hide_password? Icons.visibility :  Icons.visibility_off,)
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      child: Container(
                        child: const Text("Sign Up", style: TextStyle( 
                          color: Colors.white,
                          fontFamily: "Schyler",
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                        padding: const EdgeInsets.all(5),
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onTap: (){},
                    )
                  ],
                ),
              ),
              
            ]
           ),
        )
       )
      );
  }

  getOtpFormWidget(context){}

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
       body: Container(
         child: currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE ?
        getMobileFormWidget(context) : 
        getOtpFormWidget(context),
       ));
  }
}