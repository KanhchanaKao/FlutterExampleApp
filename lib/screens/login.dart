// import 'package:flutter/material.dart';
// import 'package:sign_button/sign_button.dart';
// import 'package:efind_mvp/screens/register/register.dart';

// main() => runApp(LoginPage());

// class LoginPage extends StatefulWidget {
//   // const LoginPage({ Key? key }) : super(key: key);

//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: LoginPageStyle(),
//         ),
//       ),
//     );
//   }
// }

// class LoginPageStyle extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(
//             height: 50,
//           ),
//           Image(
//             image: AssetImage("images/efind11.png"),
//             width: 100,
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           Text(
//             'Welcome to our app!',
//             style: TextStyle(color: Colors.black, fontSize: 24.0),
//           ),
//           SizedBox(
//             height: 50.0,
//           ),
//           Container(
//             width: 300,
//             child: TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: new BorderRadius.circular(10.0),
//                 ),
//                 hintText: 'Email or phone number',
//                 hintStyle: TextStyle(),
//                 focusColor: Colors.white,
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: new BorderRadius.circular(20.0),
//                 ),
//                 contentPadding: EdgeInsets.all(20.0),
//                 fillColor: Colors.grey[200],
//                 filled: true,
//               ),
//               autofocus: false,
//             ),
//           ),
//           SizedBox(
//             height: 20.0,
//           ),
//           Container(
//             width: 300,
//             child: TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: new BorderRadius.circular(10.0),
//                 ),
//                 hintText: 'Password',
//                 hintStyle: TextStyle(),
//                 focusColor: Colors.white,
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: new BorderRadius.circular(20.0),
//                 ),
//                 contentPadding: EdgeInsets.all(20.0),
//                 fillColor: Colors.grey[200],
//                 filled: true,
//               ),
//               autofocus: false,
//             ),
//           ),
//           SizedBox(
//             height: 20.0,
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: Text('Login'),
//             style: ElevatedButton.styleFrom(
//               primary: Colors.black, // background
//               onPrimary: Colors.white,
//               padding: EdgeInsets.symmetric(horizontal: 140, vertical: 25),
//               shape: new RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(10.0),
//               ), // foreground
//             ),
//           ),
//           SizedBox(
//             height: 20.0,
//           ),
//           Text('Or login with'),
//           SizedBox(
//             height: 20.0,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SignInButton.mini(
//                 buttonType: ButtonType.facebook,
//                 onPressed: () {},
//               ),
//               SizedBox(
//                 width: 20.0,
//               ),
//               SignInButton.mini(
//                 buttonType: ButtonType.google,
//                 onPressed: () {},
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 50.0,
//           ),
//           Text(
//             'if you don\'t have account please register',
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => RegisterPage()),
//               );
//             },
//             child: Text('Register'),
//             style: ElevatedButton.styleFrom(
//               primary: Colors.white, // background
//               onPrimary: Colors.black,
//               padding: EdgeInsets.symmetric(horizontal: 140, vertical: 25),
//               shape: new RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(10.0),
//               ),
//               side: BorderSide(
//                 width: 1.0,
//                 color: Colors.black,
//               ), // foreground
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
