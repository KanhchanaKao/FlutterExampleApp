// import 'package:efind_mvp/screens/login/login.dart';
// import 'package:flutter/material.dart';
// import 'package:sign_button/sign_button.dart';

// main() => runApp(RegisterPage());

// class RegisterPage extends StatefulWidget {
//   // const RegisterPage({ Key? key }) : super(key: key);

//   @override
//   _RegisterPageState createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: RegisterPageStyle(),
//         ),
//       ),
//     );
//   }
// }

// class RegisterPageStyle extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Image(image: AssetImage("images/logo.png")),
//           Text(
//             'Welcome to our app!',
//             style: TextStyle(color: Colors.black, fontSize: 24.0),
//           ),
//           SizedBox(
//             height: 40.0,
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
//             height: 10.0,
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
//             height: 10.0,
//           ),
//           Container(
//             width: 300,
//             child: TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: new BorderRadius.circular(10.0),
//                 ),
//                 hintText: 'Confirm Password',
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
//             height: 10.0,
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: Text('Register'),
//             style: ElevatedButton.styleFrom(
//               primary: Colors.black, // background
//               onPrimary: Colors.white,
//               padding: EdgeInsets.symmetric(horizontal: 132, vertical: 25),
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
//                 MaterialPageRoute(builder: (context) => LoginPage()),
//               );
//             },
//             child: Text('Login'),
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
