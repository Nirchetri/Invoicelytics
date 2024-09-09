import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:invoiceapp/screens/homepage.dart';
import 'package:invoiceapp/screens/login.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthWrapper(),
    );
  }
}

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Show a loading spinner while waiting for authentication
        } else if (snapshot.hasData) {
          // User is logged in
          User? user = snapshot.data;
          return HomePage(
            userName: user!.displayName ?? 'User', // Pass the user name to HomePage
            userId: user.uid, // Pass the user ID to HomePage
          );
        } else {
          // User is not logged in
          return LoginPage(); // Navigate to LoginPage
        }
      },
    );
  }
}
