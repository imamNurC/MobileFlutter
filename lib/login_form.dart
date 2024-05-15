import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: _buildForm(),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 100,
            child: Center(
              child: Text(
                'Form Login Netflix',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          _buildEmail(),
          const SizedBox(height: 20),
          _buildPass(),
          const SizedBox(height: 20),
          _buildSubmit(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      onFieldSubmitted: (_) {
        FocusScope.of(_formKey.currentContext!).nextFocus();
      },
    );
  }

  Widget _buildPass() {
    return TextFormField(
      controller: _passwordController,
      decoration: InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(),
      ),
      obscureText: true,
      textInputAction: TextInputAction.done,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        return null;
      },
      onFieldSubmitted: (_) {
        _submitForm();
      },
    );
  }

  Widget _buildSubmit() {
    return ElevatedButton(
      onPressed: () {
        _submitForm();
      },
      child: const Text('Send'),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final email = _emailController.text;
      final password = _passwordController.text;

      Get.snackbar(
        'Form Data',
        'Email: $email\nPassword: $password',
        snackPosition: SnackPosition.BOTTOM,
      );
    }

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ACCOUNT LOGIN',
          home: Scaffold(
            body: Container(
              margin: const EdgeInsets.all(20),
              child: _buildForm(),
            ),
          ));
    }
  }
}
