import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode usernameFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('background.jpg'),
              fit: BoxFit.cover, // Sesuaikan dengan kebutuhan Anda
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.person_2_rounded,
                  size: 50,
                  color: Colors.lightGreenAccent,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.lightGreenAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 300,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: TextFormField(
                          focusNode: usernameFocusNode,
                          controller: usernameController,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            floatingLabelStyle:
                                TextStyle(color: Colors.lightGreenAccent),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.lightGreenAccent, width: 1),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: TextFormField(
                          obscureText: true,
                          focusNode: passwordFocusNode,
                          controller: passwordController,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            floatingLabelStyle:
                                TextStyle(color: Colors.lightGreenAccent),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.lightGreenAccent, width: 1),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightGreenAccent,
                        ),
                        child: Text('Masuk'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
