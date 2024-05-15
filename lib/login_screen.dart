import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
 
  LoginScreen({ Key? key }) : super(key: key);

  Widget _buildForm(){
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
                  color: Colors.blue
                ),
              ),
            ),
          )
          _buildEmail(),
          const SizedBox(height: 20,)
          _buildPass(),
          const SizedBox(height: 20,)        
          _buildSubmit(),
          const SizedBox(height: 20,)

        ],
      ),
    );
    
    
  }

Widget _buildEmail(){
  return TextFormField(
    decoration: InputDecoration(labelText: 'email'),
  );
}

Widget _buildPass(){
  return TextFormField(
    decoration: InputDecoration(labelText: 'password'),
  );
}

Widget _buildSubmit(){
  return ElevatedButton(
    onPressed: () {
      _submitForm();
    },
    child: const Text('Send'),
  );
}

void _submitForm(){
  print('Submitting Form');
  if (_formKey.currentState!.validate()) {
    print('form was validated');
    _formKey.currentState!.save();
    print(formData);
  }

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
      )
    );
  }
}