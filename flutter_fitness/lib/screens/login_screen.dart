import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness/screens/signup_screen.dart';
import 'package:flutter_fitness/widgets/navbar_roots.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        SizedBox(height: 10,),
        Padding(padding: EdgeInsets.all(20),
        child: Image.asset("images/doctors.png"),),
        SizedBox(height: 10,),
        Padding(padding: EdgeInsets.all(12),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text("Enter username"),
            prefixIcon: Icon(Icons.person)
          ),
        ),),
        Padding(padding: EdgeInsets.all(12),
        child: TextField(
          obscureText: passToggle ? true : false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            label: Text("Enter password"),
            prefixIcon: Icon(Icons.lock),
            suffixIcon: InkWell(
              onTap: () {
                if(passToggle == true){
                  passToggle = false;
                }
                else{
                  passToggle = true;
                }
                setState(() {});
              },
              child: passToggle ? Icon(CupertinoIcons.eye_slash_fill) : Icon(CupertinoIcons.eye_fill))
            )
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            width: double.infinity,
            child: Material(
                  color: Colors.green[400],
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NavBarRoots()));
                    },
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40), 
                  child: Center(
                    child: Text("Log In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),),
                  )),
                  ),
                ),
          ),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have any account?",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
            },
            child: Text("Create an account",
            style: TextStyle(
              color: (Colors.green[400]
              ),
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),)
          ],
          
        )
      ]
      ),
    );
  }
}