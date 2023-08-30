import 'package:flutter/material.dart';
import 'package:mohamed_quizApp/Screens/category_screen.dart';

import '../Global/quiz_data.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Stack(
         //  fit: StackFit.expand,
    
     alignment: Alignment.bottomCenter,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            color: Colors.teal,
            child: Center(
              child: Image.asset(
                "Images/pngwing.com.png",
                height: 100,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 226, 216, 216),
              borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
         
          child: Form(
           key: _formKey,
            child: Column
          
            (children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                "Login",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextFormField(
                controller: userNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "User name must not be empty";
                  } else if (value.length < 8) {
                    return "User name should be more than 8 characters";
                  } else if (value[0] != value[0].toUpperCase()) {
                    return "first charachter must be uppercase";
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "User name",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 36, 4, 240), width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password is empty";
                  } else if (value.length < 10) {
                    return "password is too short";
                  } else if (!RegExp(r'^[a-zA-Z0-9!@#$%^&*(),.?":{}|<> ]+$')
                      .hasMatch(value)) {
                    return 'password contains invalid characters';
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "Password",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 36, 4, 240), width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  // border: ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "email canot be empty";
                  } else if (!value!.contains('@')) {
                    return 'email must contain "@"';
                  }
                  if (!value.contains('.')) {
                    return 'email must contain "."';
                  }
                  if (!value.contains('com')) {
                    return 'email must contain "com"';
                  }
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "email",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 36, 4, 240), width: 2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("New to quiz app?"),
                  InkWell(
                    onTap: () {
                      print("Hello we are ITI");
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => CategoryScreen(),
                      ),
                    );
                  }
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    backgroundColor: Colors.teal,
                    elevation: 10,
                    minimumSize: Size(130, 40)),
              ),
              SizedBox(
                height: 15,
              ),
              Icon(
                Icons.fingerprint,
                color: Colors.blue,
                size: 50,
              ),
              Text(
                "Touch ID",
                style: TextStyle(color: Colors.grey),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text("Remember me"),
                    ],
                  ),

                  // Spacer(),
                  InkWell(
                    onTap: () {
                      print("Hello we are ITI");
                    },
                    child: Text(
                      "Forget password",
                      style: TextStyle(
                          color: Colors.teal, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ]),
          ),
        )
      ],
    ));
  }
}
