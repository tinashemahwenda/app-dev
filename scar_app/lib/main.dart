import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color.fromRGBO(58, 66, 86, 1.0)),
      home: const Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.deepPurple,
            title: const Center(
              child: Text('Login'),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: SizedBox(
                      width: 200,
                      height: 150,
                      child: Image.asset('assets/images/account.png')),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter your email or username',
                  ),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.purpleAccent,
                    hoverColor: Colors.deepPurple,
                    fillColor: Colors.deepPurpleAccent,
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter password',
                  ),
                  obscureText: true,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      right: 15, left: 15, top: 15, bottom: 0),
                  child: Container(
                    width: 330,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const Dashboard()));
                        },
                        child: const Text('Next')),
                  )),
              /*ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Register()));
                },
                style: ButtonStyle(
                  backgroundColor:,
                ),
                child: const Text('Register new user'),
                
              )*/
            ],
          ),
        ));
  }
}

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text('My Drawer'),
            ),
          ],
        )),
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          title: const Text('Dashboard'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const EditProfile()));
                },
                icon: const Icon(Icons.edit)),
          ],
        ),
        body: Center(
            child: Container(
          child: ListView(
            children: [
              ListTile(
                leading:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                title: const Text('\$4500',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: const Text('Total Sales'),
                trailing: Image.asset('assets/images/login.png'),
              ),
            ],
          ),
        )));
  }
}
