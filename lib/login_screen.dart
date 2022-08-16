import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

var email = TextEditingController();
var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                   'login',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
          ),
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (String value)
                {
                  print(value);
                },
                decoration:InputDecoration(
                  labelText: 'Email Address',
                  prefixIcon: Icon(
                    Icons.email
                  ),
                  border: OutlineInputBorder(),

                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: password,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                onFieldSubmitted: (String value)
                {
                  print(value);
                },
                decoration:InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                      Icons.lock
                  ),
                  suffixIcon: Icon(
                      Icons.remove_red_eye
                  ),
                  border: OutlineInputBorder(),

                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.blue,
                width: double.infinity,
                child: MaterialButton(
                    onPressed: ()
                    {
                      print("email: "+email.text);
                      print("password: "+password.text);
                    },

                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(onPressed: () {},
                      child: Text("Register Now"))
                ],
              )
          ],
    ),
        ),
      ),

    );
  }
}
