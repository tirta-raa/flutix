import 'package:flutix/services/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Sign Up '),
                onPressed: () async {
                  SigninSignUpResult result = await AuthServices.signUp(
                      'puji@gmail.com',
                      '123123',
                      'Puji',
                      ['Action', 'Horror', 'Drama'],
                      'Korea');

                  if (result.user == null) {
                    print(result.message);
                  } else {
                    print(result.user.toString());
                  }
                },
              ),
              RaisedButton(
                child: Text('Sign in '),
                onPressed: () async {
                  SigninSignUpResult result = await AuthServices.signIn(
                    'puji@gmail.com',
                    '123123',
                  );

                  if (result.user == null) {
                    print(result.message);
                  } else {
                    print(result.user.toString());
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
