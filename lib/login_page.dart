import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/img/pink_bg.png'),
                        fit: BoxFit.cover,
                      )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Color.fromARGB(124, 120, 170, 250),
                            Color.fromARGB(70, 125, 100, 250),
                          ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "WELCOME TO TASK MANAGEMNT APP",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 30),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    backgroundColor: Colors.green,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.05,
                                      vertical: size.height * 0.025,
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  child: Text(
                                    'Manager Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    // m.submitComplaint();
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 30),
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    backgroundColor: Colors.orange,
                                    primary: Colors.green,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: size.width * 0.05,
                                      vertical: size.height * 0.015,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: Text(
                                    'Emplyoee Login',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )),
          Expanded(
              child: Container(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img/pp.png'),
                  fit: BoxFit.cover,
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Manager Login',
                style: TextStyle(fontSize: 20.0,color: Colors.pinkAccent,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 15.0,
                ),
                TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(127, 255, 255, 255)),
                    hintText: 'User Name',
                    filled: true,
                    fillColor: Color.fromARGB(31, 255, 255, 255),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    hintStyle:
                        TextStyle(color: Color.fromARGB(155, 255, 255, 255)),
                    hintText: 'Password',
                    filled: true,
                    fillColor: Color.fromARGB(127, 255, 255, 255),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor:Colors.pinkAccent ,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                            padding: EdgeInsets.all(16.0),
                          ),
                      onPressed: () {},
                      child: Text('Manager Login'),
                    ))
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }


}
/*
https://png.pngtree.com/png-clipart/20190924/original/pngtree-flat-illustration-of-group-working-png-image_4833344.jpg
 */


