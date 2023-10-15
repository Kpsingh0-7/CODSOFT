import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15173F),
      body: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 410,
                  width: 370,
                  decoration: BoxDecoration(
                      color: Color(0xff4550C5),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(1000),bottomRight: Radius.circular(60)),

                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: const EdgeInsets.only(top: 60.0,right: 20),
                  child: Container(
                    height: 230,
                    width: 230,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/20.jpg'),
                      ),
                    ),
                  ),)
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Container(
                      child: Icon(
                        Icons.star,size: 30,color: Color(0xff464BC0),
                      ),
                    ),
                  ),

                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 110.0,left: 6),
                    child: Container(
                      child: Icon(
                        Icons.star,size: 40,color: Color(0xff464BC0),
                      ),
                    ),
                  ),

                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 180.0,left: 10),
                    child: Container(
                      child: Icon(
                        Icons.star,size: 50,color: Color(0xff464BC0),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(left:12.0),
          child: Align(
            alignment:Alignment.centerLeft,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Login',style: TextStyle(
                  fontSize:60,
                  fontFamily: 'Roboto',
                  color: Colors.white,
                ),)
              ],
            ),
            
          ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(

                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    fillColor: Color(0xff464bC0),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 17,
          ),
          Column(
            children: [
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(

                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: Color(0xff464bC0),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
