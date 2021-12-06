import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class UserInterFace extends StatefulWidget{
  @override
  State<UserInterFace> createState() => _UserInterFace();
}

class _UserInterFace extends State<UserInterFace> {
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
                  letterSpacing: 5,
                  fontFamily: "Schyler"
                ),
              ),
              const SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                      InkWell(
                      child: Container(
                        child: const Text("Yallah DABA", style: TextStyle( 
                          color: Colors.white,
                          fontFamily: "Schyler",
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                        padding: const EdgeInsets.all(5),
                        width: 200,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onTap: (){},
                      ),
                      const SizedBox(height: 40),
                      InkWell(
                        child: Container(
                          child: const Text("History", style: TextStyle( 
                            color: Colors.white,
                            fontFamily: "Schyler",
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),),
                          padding: const EdgeInsets.all(5),
                          width: 200,
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