import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class UserBooking extends StatefulWidget{
  @override
  State<UserBooking> createState() => _UserBooking();
}

class _UserBooking extends State<UserBooking> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
               "Linking", 
               style: 
                 TextStyle(
                  fontSize: 70,
                  fontFamily: "Schyler",
                  letterSpacing: 5,
                ),
              ),
              const SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                      TextFormField(
                      maxLength: 100,
                      keyboardType: TextInputType.streetAddress,
                      decoration: const InputDecoration(
                        hintText: "Destination",
                        prefixStyle:  TextStyle(color: Colors.black),
                      ),
                      style: TextStyle(color: Colors.black),
                      ),
                      TextFormField(
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[1-3]')),
                        ],
                        decoration: const InputDecoration(
                          hintText: "Number of Seats",
                          prefixStyle:  TextStyle(color: Colors.black),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                      child: Container(
                        child: Text("Broadcast", style: TextStyle( 
                          color: Colors.white,
                          fontFamily: "Schyler",
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                        padding: EdgeInsets.all(5),
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
              )
            ],
          ),
        ),
    );
  }
  
}