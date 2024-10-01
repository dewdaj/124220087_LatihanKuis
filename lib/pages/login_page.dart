import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String errorMessage = '';

  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == "dewicantikz" && password == "124220087") {
      // Navigasi ke halaman home dengan username
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(username: username),
        ),
      );
    } else {
      setState(() {
        errorMessage = 'Username dan password tidak boleh kosong!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink[200]!, Colors.pink[400]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink[800],
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        prefixIcon: Icon(Icons.person, color: Colors.pink[600]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock, color: Colors.pink[600]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _login,
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        backgroundColor: Colors.pink[400],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    if (errorMessage.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          errorMessage,
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
