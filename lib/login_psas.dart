import 'package:flutter/material.dart';

class LoginPsas extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login PSAS"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: 
            MainAxisAlignment.center,
            children: [
              //Username Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: 
                    BorderRadius.circular(8.0),
                  ),
                  prefixIcon: const Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16.0,),
              //Password Field
              TextField(
               obscureText: true,
               decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: 
                  BorderRadius.circular(8.0)
                ),
                prefixIcon: const Icon(Icons.lock)
               ),
                ),
              const SizedBox(height: 24.0),
              //Login Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    //Implement login functionality here

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Login button pressed')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const
                    EdgeInsets.symmetric(vertical: 16.0)
                  ),
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  } 
}