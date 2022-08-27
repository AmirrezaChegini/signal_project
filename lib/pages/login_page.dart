import 'package:flutter/material.dart';
import 'package:signal_project/pages/main_application.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(context),
    );
  }

  Widget _getBody(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/w.png'),
              ),
              SizedBox(height: 40),
              TextButton(
                onPressed: () => navigator(context),
                child: Text('Log in'),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(140, 40),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2,
                  ),
                  textStyle: TextStyle(
                    fontFamily: 'vazir',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Sign up'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(140, 40),
                  backgroundColor: Colors.black,
                  textStyle: TextStyle(
                    fontFamily: 'vazir',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Text(
                  'Do you forget your password?',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigator(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MainApplication(),
      ),
    );
  }
}
