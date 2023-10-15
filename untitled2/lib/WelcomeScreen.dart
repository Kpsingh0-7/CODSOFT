import 'package:flutter/material.dart';

import 'LoginScreen.dart';
import 'regScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffB81736),
              Color(0xff2A1639),
            ])),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 150.0),
              child: Center(
                  child:
                    Column(
                      children: [
                        Text('Any.do',
                          style: TextStyle(fontSize: 100, color: Colors.white),
                        ),

                      ],
                    ),
                  ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Welcome ',
              style: TextStyle(fontSize: 34, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) =>LoginScreen())
                );
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(child: Text('SIGN In',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) =>regScreen())
                );
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(child: Text('SIGN Up',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),),
              ),
            ),

            const Spacer(),


            const Text('Login With Social Media ',style: TextStyle(
                fontSize: 17,
                color: Colors.white
            ), ),
            SizedBox(height: 10,),
            const Image(image: AssetImage('assets/images/social.png')),
          ],
        ),
      ),
    );
  }
}
