import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_fitness/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.all(20),
              child: Image.asset("images/doctors.png"),),
              SizedBox(height: 15,),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person)
                ),

              )),
              SizedBox(height: 15,),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email)
                ),

              )),
              SizedBox(height: 15,),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone)
                ),

              )),
              SizedBox(height: 15,),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: (){
                      if(passToggle == true){
                        passToggle = false;
                      }
                      else{
                        passToggle = true;
                      }
                      setState(() {});
                    },
                    child: passToggle ? Icon(CupertinoIcons.eye_slash_fill) : Icon(CupertinoIcons.eye_fill)
                  )
                ),

              )),
          Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            width: double.infinity,
            child: Material(
                  color: Colors.green[400],
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                    },
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40), 
                  child: Center(
                    child: Text("Create Account",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have account?",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Text("Log In",
            style: TextStyle(
              color: Colors.green[400],
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),)
          ],
          
        )
            ],
          ),
        ),
      ),
    );
  }
}