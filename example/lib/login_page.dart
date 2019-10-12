

// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart' as prefix0;
// import 'package:flutter/services.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:location_example/main1.dart';
// import './theme.dart' as Theme;
// import './bubble_indication_painter.dart';

// import 'package:firebase_database/firebase_database.dart';

// class LoginPage extends StatefulWidget {
//   LoginPage({Key key}) : super(key: key);

//   @override
//   _LoginPageState createState() => new _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage>
//     with SingleTickerProviderStateMixin {
//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//   int status = 0;

//   final FocusNode myFocusNodeEmailLogin = FocusNode();
//   final FocusNode myFocusNodePasswordLogin = FocusNode();

//   final FocusNode myFocusNodePassword = FocusNode();
//   final FocusNode myFocusNodeEmail = FocusNode();
//   final FocusNode myFocusNodeName = FocusNode();
//   final FocusNode myFocusNodeState = FocusNode();
//   //final FocusNode myFocusNodeAadhar = FocusNode();
//   final FocusNode myFocusNodeGender = FocusNode();
//   //final FocusNode myFocusNodeRole = FocusNode();
//   //final FocusNode cropsGrown = FocusNode();
//   final FocusNode myFocusAge = FocusNode();
//   final FocusNode myFocusRefName = FocusNode();
//   final FocusNode myFocusNodePhoneNo = FocusNode();

//   TextEditingController loginEmailController = new TextEditingController();
//   TextEditingController loginPasswordController = new TextEditingController();

//   bool _obscureTextLogin = true;
//   bool _obscureTextSignup = true;
//   bool _obscureTextSignupConfirm = true;

//   TextEditingController signupEmailController = new TextEditingController();
//   //TextEditingController signupAadharController = new TextEditingController();
//   TextEditingController signupNameController = new TextEditingController();
//   TextEditingController signupStateController = new TextEditingController();
//   TextEditingController signupPasswordController = new TextEditingController();
//   TextEditingController signupReferralController = new TextEditingController();
//   //TextEditingController signupRoleController = new TextEditingController();
//   TextEditingController signupAgeController = new TextEditingController();
//   TextEditingController signupGenderController = new TextEditingController();
//   //TextEditingController signupCropsController = new TextEditingController();
//   TextEditingController signupPhoneNoController = new TextEditingController();
//   TextEditingController signupConfirmPasswordController =
//       new TextEditingController();

//   PageController _pageController;

//   Color left = Colors.black;
//   Color right = Colors.white;
//   final databaseReference = FirebaseDatabase.instance.reference();

//   @override
//   Widget build(BuildContext context) {
//     return status == 0
//         ? new Scaffold(
//             key: _scaffoldKey,
//             body: NotificationListener<OverscrollIndicatorNotification>(
//               onNotification: (overscroll) {
//                 overscroll.disallowGlow();
//               },
//               child: SingleChildScrollView(
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height >= 775.0
//                       ? MediaQuery.of(context).size.height
//                       : 775.0,
//                   decoration: new BoxDecoration(
//                     gradient: new LinearGradient(
//                         colors: [
//                           Theme.Colors.loginGradientStart,
//                           Theme.Colors.loginGradientEnd
//                         ],
//                         begin: const FractionalOffset(0.0, 0.0),
//                         end: const FractionalOffset(1.0, 1.0),
//                         stops: [0.0, 1.0],
//                         tileMode: TileMode.clamp),
//                   ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.max,
//                     children: <Widget>[
//                       // Padding(
//                       //   padding: EdgeInsets.only(top: 50.0),
//                       //   child: new Image(
//                       //       width: 250.0,
//                       //       height: 191.0,
//                       //       fit: BoxFit.fill,
//                       //       image: new AssetImage('assets/img/login_logo.png')),
//                       // ),
//                       Padding(
//                         padding: EdgeInsets.only(top: 0.0),
//                         child: FlatButton(
//                             onPressed: () {},
//                             child: Text(
//                               "Speak Up",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 30.0,
//                                   fontFamily: "Roboto"),
//                             )),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(top: 20.0),
//                         child: _buildMenuBar(context),
//                       ),
//                       Expanded(
//                         flex: 2,
//                         child: PageView(
//                           controller: _pageController,
//                           onPageChanged: (i) {
//                             if (i == 0) {
//                               setState(() {
//                                 right = Colors.white;
//                                 left = Colors.black;
//                               });
//                             } else if (i == 1) {
//                               setState(() {
//                                 right = Colors.black;
//                                 left = Colors.white;
//                               });
//                             }
//                           },
//                           children: <Widget>[
//                             new ConstrainedBox(
//                               constraints: const BoxConstraints.expand(),
//                               child: _buildSignIn(context),
//                             ),
//                             new ConstrainedBox(
//                               constraints: const BoxConstraints.expand(),
//                               child: _buildSignUp(context),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           )
//         : Scaffold(
//             body: Stack(
//             fit: StackFit.expand,
//             children: <Widget>[
//               Container(
//                 decoration: BoxDecoration(color: Color(0xff045791)),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: <Widget>[
//                   prefix0.Expanded(
//                       flex: 2,
//                       child: Container(
//                         child: prefix0.Column(
//                           mainAxisAlignment: prefix0.MainAxisAlignment.center,
//                           children: <Widget>[
//                             // prefix0.CircleAvatar(
//                             //   backgroundColor: Colors.white,
//                             //   backgroundImage:
//                             //       AssetImage('assets/img/login_logo.png'),
//                             //   radius: 50,
//                             //   // child: Icon(
//                             //   //   Icons.shopping_cart,
//                             //   //   color: Colors.greenAccent,
//                             //   //   size: 50.0,
//                             //   // )
//                             // ),
//                             Padding(
//                               padding: prefix0.EdgeInsets.only(top: 10.0),
//                             ),
//                             Text(
//                               "Speak Up",
//                               style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 24.0,
//                                   fontWeight: prefix0.FontWeight.bold),
//                             )
//                           ],
//                         ),
//                       )),
//                   Expanded(
//                       flex: 1,
//                       child: Column(
//                         mainAxisAlignment: prefix0.MainAxisAlignment.center,
//                         children: <Widget>[
//                           prefix0.CircularProgressIndicator(),
//                           Padding(
//                             padding: prefix0.EdgeInsets.only(top: 20.0),
//                           ),
//                           Text("Women Safety",
//                               style: prefix0.TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 10.0,
//                                   fontWeight: prefix0.FontWeight.bold))
//                         ],
//                       ))
//                 ],
//               )
//             ],
//           ));
//   }

//   @override
//   void dispose() {
//     myFocusNodePassword.dispose();
//     myFocusNodeEmail.dispose();
//     myFocusNodeName.dispose();
//     myFocusRefName.dispose();
//     //myFocusNodeAadhar.dispose();
//     myFocusNodeState.dispose();
//     myFocusNodePhoneNo.dispose();
//     myFocusNodeGender.dispose();
//     //myFocusNodeRole.dispose();
//     //cropsGrown.dispose();
//     myFocusAge.dispose();
//     _pageController?.dispose();
//     super.dispose();
//   }

//   @override
//   void initState() {
//     super.initState();

//     SystemChrome.setPreferredOrientations([
//       DeviceOrientation.portraitUp,
//       DeviceOrientation.portraitDown,
//     ]);

//     _pageController = PageController();
//   }

//   void showInSnackBar(String value) {
//     FocusScope.of(context).requestFocus(new FocusNode());
//     _scaffoldKey.currentState?.removeCurrentSnackBar();
//     _scaffoldKey.currentState.showSnackBar(new SnackBar(
//       content: new Text(
//         value,
//         textAlign: TextAlign.center,
//         style: TextStyle(
//             color: Colors.white,
//             fontSize: 16.0,
//             fontFamily: "WorkSansSemiBold"),
//       ),
//       backgroundColor: Colors.blue,
//       duration: Duration(seconds: 3),
//     ));
//   }

//   Widget _buildMenuBar(BuildContext context) {
//     return Container(
//       width: 300.0,
//       height: 50.0,
//       decoration: BoxDecoration(
//         color: Color(0x552B2B2B),
//         borderRadius: BorderRadius.all(Radius.circular(25.0)),
//       ),
//       child: CustomPaint(
//         painter: TabIndicationPainter(pageController: _pageController),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Expanded(
//               child: FlatButton(
//                 splashColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 onPressed: _onSignInButtonPress,
//                 child: Text(
//                   "Existing",
//                   style: TextStyle(
//                       color: left,
//                       fontSize: 16.0,
//                       fontFamily: "WorkSansSemiBold"),
//                 ),
//               ),
//             ),
//             //Container(height: 33.0, width: 1.0, color: Colors.white),
//             Expanded(
//               child: FlatButton(
//                 splashColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 onPressed: _onSignUpButtonPress,
//                 child: Text(
//                   "New",
//                   style: TextStyle(
//                       color: right,
//                       fontSize: 16.0,
//                       fontFamily: "WorkSansSemiBold"),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSignIn(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(top: 23.0),
//       child: Column(
//         children: <Widget>[
//           Stack(
//             alignment: Alignment.topCenter,
//             overflow: Overflow.visible,
//             children: <Widget>[
//               Card(
//                 elevation: 2.0,
//                 color: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 child: Container(
//                   width: 300.0,
//                   height: 190.0,
//                   child: Column(
//                     children: <Widget>[
//                       Padding(
//                         padding: EdgeInsets.only(
//                             top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
//                         child: TextField(
//                           focusNode: myFocusNodeEmailLogin,
//                           controller: loginEmailController,
//                           keyboardType: TextInputType.number,
//                           style: TextStyle(
//                               fontFamily: "WorkSansSemiBold",
//                               fontSize: 16.0,
//                               color: Colors.black),
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(
//                               FontAwesomeIcons.user,
//                               color: Colors.black,
//                               size: 22.0,
//                             ),
//                             hintText: "Phone No",
//                             hintStyle: TextStyle(
//                                 fontFamily: "WorkSansSemiBold", fontSize: 17.0),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: 250.0,
//                         height: 1.0,
//                         color: Colors.grey[400],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                             top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
//                         child: TextField(
//                           focusNode: myFocusNodePasswordLogin,
//                           controller: loginPasswordController,
//                           obscureText: _obscureTextLogin,
//                           style: TextStyle(
//                               fontFamily: "WorkSansSemiBold",
//                               fontSize: 16.0,
//                               color: Colors.black),
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(
//                               FontAwesomeIcons.lock,
//                               size: 22.0,
//                               color: Colors.black,
//                             ),
//                             hintText: "Password",
//                             hintStyle: TextStyle(
//                                 fontFamily: "WorkSansSemiBold", fontSize: 17.0),
//                             suffixIcon: GestureDetector(
//                               onTap: _toggleLogin,
//                               child: Icon(
//                                 _obscureTextLogin
//                                     ? FontAwesomeIcons.eye
//                                     : FontAwesomeIcons.eyeSlash,
//                                 size: 15.0,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 170.0),
//                 decoration: new BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                   boxShadow: <BoxShadow>[
//                     BoxShadow(
//                       color: Theme.Colors.loginGradientStart,
//                       offset: Offset(1.0, 6.0),
//                       blurRadius: 20.0,
//                     ),
//                     BoxShadow(
//                       color: Theme.Colors.loginGradientEnd,
//                       offset: Offset(1.0, 6.0),
//                       blurRadius: 20.0,
//                     ),
//                   ],
//                   gradient: new LinearGradient(
//                       colors: [
//                         Theme.Colors.loginGradientEnd,
//                         Theme.Colors.loginGradientStart
//                       ],
//                       begin: const FractionalOffset(0.2, 0.2),
//                       end: const FractionalOffset(1.0, 1.0),
//                       stops: [0.0, 1.0],
//                       tileMode: TileMode.clamp),
//                 ),
//                 child: MaterialButton(
//                     highlightColor: Colors.transparent,
//                     splashColor: Theme.Colors.loginGradientEnd,
//                     //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 1.0, horizontal: 20.0),
//                       child: Text(
//                         "LOGIN",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18.0,
//                             fontFamily: "WorkSansBold"),
//                       ),
//                     ),
//                     onPressed: () {
//                       showInSnackBar("Login button pressed");
//                       setState(() {
//                         status = 1;
//                       });

//                       print('yoooooooooooo');
//                       var phoneno = loginEmailController.value.text.toString();
//                       print(phoneno);
//                       databaseReference
//                           .child('users')
//                           .child('$phoneno')
//                           .once()
//                           .then((DataSnapshot snapshot) {
//                         var abc = snapshot.value;
//                         print(snapshot.value);
//                         String pass = abc['pass'];
//                         String name = abc['name'];
//                         String state = abc['state'];
//                         String email = abc['email'];
//                         int reward = abc['rewards'];
//                         String age = abc['age'];
//                         String sex = abc['sex'];
//                         //String role = abc['role'];
//                         //String crops = abc['crops'];
//                         //String phoneno = abc['phoneno'];
//                         String input_pass = loginPasswordController.value.text;
//                         print(input_pass);
//                         if (pass == input_pass) {
//                           Navigator.of(context).push(new MaterialPageRoute(
//                               builder: (BuildContext context) =>
//                                   new MyApp1(phoneno)));
//                         }
//                       });
//                       //Navigator.of(context).pop();
//                       // Navigator.of(context).push(new MaterialPageRoute(
//                       //     builder: (BuildContext context) =>
//                       //         new WhatsAppHome())
//                       //         );
//                     }),
//               ),
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 10.0),
//             child: FlatButton(
//                 onPressed: () {},
//                 child: Text(
//                   "Forgot Password?",
//                   style: TextStyle(
//                       decoration: TextDecoration.underline,
//                       color: Colors.white,
//                       fontSize: 16.0,
//                       fontFamily: "WorkSansMedium"),
//                 )),
//           ),
//           // Padding(
//           //   padding: EdgeInsets.only(top: 10.0),
//           //   child: Row(
//           //     mainAxisAlignment: MainAxisAlignment.center,
//           //     children: <Widget>[
//           //       Container(
//           //         decoration: BoxDecoration(
//           //           gradient: new LinearGradient(
//           //               colors: [
//           //                 Colors.white10,
//           //                 Colors.white,
//           //               ],
//           //               begin: const FractionalOffset(0.0, 0.0),
//           //               end: const FractionalOffset(1.0, 1.0),
//           //               stops: [0.0, 1.0],
//           //               tileMode: TileMode.clamp),
//           //         ),
//           //         width: 100.0,
//           //         height: 1.0,
//           //       ),
//           //       // Padding(
//           //       //   padding: EdgeInsets.only(left: 15.0, right: 15.0),
//           //       //   child: Text(
//           //       //     "Or",
//           //       //     style: TextStyle(
//           //       //         color: Colors.white,
//           //       //         fontSize: 16.0,
//           //       //         fontFamily: "WorkSansMedium"),
//           //       //   ),
//           //       // ),
//           //       // Container(
//           //       //   decoration: BoxDecoration(
//           //       //     gradient: new LinearGradient(
//           //       //         colors: [
//           //       //           Colors.white,
//           //       //           Colors.white10,
//           //       //         ],
//           //       //         begin: const FractionalOffset(0.0, 0.0),
//           //       //         end: const FractionalOffset(1.0, 1.0),
//           //       //         stops: [0.0, 1.0],
//           //       //         tileMode: TileMode.clamp),
//           //       //   ),
//           //       //   width: 100.0,
//           //       //   height: 1.0,
//           //       // ),
//           //     ],
//           //   ),
//           // ),
//           // Row(
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   children: <Widget>[
//           //     Padding(
//           //       padding: EdgeInsets.only(top: 10.0, right: 40.0),
//           //       child: GestureDetector(
//           //         onTap: () => showInSnackBar("Facebook button pressed"),
//           //         child: Container(
//           //           padding: const EdgeInsets.all(15.0),
//           //           decoration: new BoxDecoration(
//           //             shape: BoxShape.circle,
//           //             color: Colors.white,
//           //           ),
//           //           child: new Icon(
//           //             FontAwesomeIcons.facebookF,
//           //             color: Color(0xFF0084ff),
//           //           ),
//           //         ),
//           //       ),
//           //     ),
//           //     Padding(
//           //       padding: EdgeInsets.only(top: 10.0),
//           //       child: GestureDetector(
//           //         onTap: () => showInSnackBar("Google button pressed"),
//           //         child: Container(
//           //           padding: const EdgeInsets.all(15.0),
//           //           decoration: new BoxDecoration(
//           //             shape: BoxShape.circle,
//           //             color: Colors.white,
//           //           ),
//           //           child: new Icon(
//           //             FontAwesomeIcons.google,
//           //             color: Color(0xFF0084ff),
//           //           ),
//           //         ),
//           //       ),
//           //     ),
//           //   ],
//           // ),
//         ],
//       ),
//     );
//   }

//   Widget _buildSignUp(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(top: 23.0),
//       child: Column(
//         children: <Widget>[
//           Stack(
//             alignment: Alignment.topCenter,
//             overflow: Overflow.visible,
//             children: <Widget>[
//               Card(
//                 elevation: 2.0,
//                 color: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 child: Container(
//                   width: 300.0,
//                   height: 360.0,
//                   child: ListView(
//                     children: <Widget>[
//                       Padding(
//                         padding: EdgeInsets.only(
//                             top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
//                         child: TextField(
//                           focusNode: myFocusNodeName,
//                           controller: signupNameController,
//                           keyboardType: TextInputType.text,
//                           textCapitalization: TextCapitalization.words,
//                           style: TextStyle(
//                               fontFamily: "WorkSansSemiBold",
//                               fontSize: 16.0,
//                               color: Colors.black),
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(
//                               FontAwesomeIcons.user,
//                               color: Colors.black,
//                             ),
//                             hintText: "Name",
//                             hintStyle: TextStyle(
//                                 fontFamily: "WorkSansSemiBold", fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: 250.0,
//                         height: 1.0,
//                         color: Colors.grey[400],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                             top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
//                         child: TextField(
//                           focusNode: myFocusNodePhoneNo,
//                           controller: signupPhoneNoController,
//                           keyboardType: TextInputType.number,
//                           style: TextStyle(
//                               fontFamily: "WorkSansSemiBold",
//                               fontSize: 16.0,
//                               color: Colors.black),
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(
//                               FontAwesomeIcons.addressBook,
//                               color: Colors.black,
//                             ),
//                             hintText: "Phone No",
//                             hintStyle: TextStyle(
//                                 fontFamily: "WorkSansSemiBold", fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: 250.0,
//                         height: 1.0,
//                         color: Colors.grey[400],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                             top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
//                         child: TextField(
//                           focusNode: myFocusNodeEmail,
//                           controller: signupEmailController,
//                           keyboardType: TextInputType.emailAddress,
//                           style: TextStyle(
//                               fontFamily: "WorkSansSemiBold",
//                               fontSize: 16.0,
//                               color: Colors.black),
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(
//                               FontAwesomeIcons.envelope,
//                               color: Colors.black,
//                             ),
//                             hintText: "Email Address",
//                             hintStyle: TextStyle(
//                                 fontFamily: "WorkSansSemiBold", fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: 250.0,
//                         height: 1.0,
//                         color: Colors.grey[400],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                             top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
//                         child: TextField(
//                           focusNode: myFocusAge,
//                           controller: signupAgeController,
//                           keyboardType: TextInputType.number,
//                           textCapitalization: TextCapitalization.words,
//                           style: TextStyle(
//                               fontFamily: "WorkSansSemiBold",
//                               fontSize: 16.0,
//                               color: Colors.black),
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(
//                               FontAwesomeIcons.user,
//                               color: Colors.black,
//                             ),
//                             hintText: "Age",
//                             hintStyle: TextStyle(
//                                 fontFamily: "WorkSansSemiBold", fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: 250.0,
//                         height: 1.0,
//                         color: Colors.grey[400],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                             top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
//                         child: TextField(
//                           focusNode: myFocusNodeGender,
//                           controller: signupGenderController,
//                           keyboardType: TextInputType.text,
//                           textCapitalization: TextCapitalization.words,
//                           style: TextStyle(
//                               fontFamily: "WorkSansSemiBold",
//                               fontSize: 16.0,
//                               color: Colors.black),
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(
//                               FontAwesomeIcons.genderless,
//                               color: Colors.black,
//                             ),
//                             hintText: "Male /Female /Sarah",
//                             hintStyle: TextStyle(
//                                 fontFamily: "WorkSansSemiBold", fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       // Container(
//                       //   width: 250.0,
//                       //   height: 1.0,
//                       //   color: Colors.grey[400],
//                       // ),
//                       // Padding(
//                       //   padding: EdgeInsets.only(
//                       //       top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
//                       //   // child: TextField(
//                       //   //   //focusNode: myFocusNodeRole,
//                       //   //   //controller: signupRoleController,
//                       //   //   keyboardType: TextInputType.text,
//                       //   //   textCapitalization: TextCapitalization.words,
//                       //   //   style: TextStyle(
//                       //   //       fontFamily: "WorkSansSemiBold",
//                       //   //       fontSize: 16.0,
//                       //   //       color: Colors.black),
//                       //   //   decoration: InputDecoration(
//                       //   //     border: InputBorder.none,
//                       //   //     icon: Icon(
//                       //   //       FontAwesomeIcons.arrowAltCircleRight,
//                       //   //       color: Colors.black,
//                       //   //     ),
//                       //   //     hintText: "Role (eg: Farmer)",
//                       //   //     hintStyle: TextStyle(
//                       //   //         fontFamily: "WorkSansSemiBold", fontSize: 16.0),
//                       //   //   ),
//                       //   // ),
//                       // ),
//                       // Container(
//                       //   width: 250.0,
//                       //   height: 1.0,
//                       //   color: Colors.grey[400],
//                       // ),
//                       // Padding(
//                       //   padding: EdgeInsets.only(
//                       //       top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
//                       //   // child: TextField(
//                       //   //   focusNode: cropsGrown,
//                       //   //   controller: signupCropsController,
//                       //   //   keyboardType: TextInputType.text,
//                       //   //   textCapitalization: TextCapitalization.words,
//                       //   //   style: TextStyle(
//                       //   //       fontFamily: "WorkSansSemiBold",
//                       //   //       fontSize: 16.0,
//                       //   //       color: Colors.black),
//                       //   //   decoration: InputDecoration(
//                       //   //     border: InputBorder.none,
//                       //   //     icon: Icon(
//                       //   //       FontAwesomeIcons.seedling,
//                       //   //       color: Colors.black,
//                       //   //     ),
//                       //   //     hintText: "Crops Grown",
//                       //   //     hintStyle: TextStyle(
//                       //   //         fontFamily: "WorkSansSemiBold", fontSize: 16.0),
//                       //   //   ),
//                       //   // ),
//                       // ),
//                       Container(
//                         width: 250.0,
//                         height: 1.0,
//                         color: Colors.grey[400],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                             top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
//                         child: TextField(
//                           focusNode: myFocusNodeState,
//                           controller: signupStateController,
//                           keyboardType: TextInputType.text,
//                           textCapitalization: TextCapitalization.words,
//                           style: TextStyle(
//                               fontFamily: "WorkSansSemiBold",
//                               fontSize: 16.0,
//                               color: Colors.black),
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(
//                               Icons.pin_drop,
//                               color: Colors.black,
//                               size: 30.0,
//                             ),
//                             hintText: "State",
//                             hintStyle: TextStyle(
//                                 fontFamily: "WorkSansSemiBold", fontSize: 16.0),
//                           ),
//                         ),
//                       ),
//                       // Container(
//                       //   width: 250.0,
//                       //   height: 1.0,
//                       //   color: Colors.grey[400],
//                       // ),
//                       // Padding(
//                       //   padding: EdgeInsets.only(
//                       //       top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
//                       //   child: TextField(
//                       //     focusNode: myFocusRefName,
//                       //     controller: signupReferralController,
//                       //     keyboardType: TextInputType.text,
//                       //     textCapitalization: TextCapitalization.words,
//                       //     style: TextStyle(
//                       //         fontFamily: "WorkSansSemiBold",
//                       //         fontSize: 16.0,
//                       //         color: Colors.black),
//                       //     decoration: InputDecoration(
//                       //       border: InputBorder.none,
//                       //       icon: Icon(
//                       //         Icons.people,
//                       //         color: Colors.black,
//                       //         size: 30.0,
//                       //       ),
//                       //       hintText: "Referral Code (if any)",
//                       //       hintStyle: TextStyle(
//                       //           fontFamily: "WorkSansSemiBold", fontSize: 16.0),
//                       //     ),
//                       //   ),
//                       // ),
//                       Container(
//                         width: 250.0,
//                         height: 1.0,
//                         color: Colors.grey[400],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                             top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
//                         child: TextField(
//                           focusNode: myFocusNodePassword,
//                           controller: signupPasswordController,
//                           obscureText: _obscureTextSignup,
//                           style: TextStyle(
//                               fontFamily: "WorkSansSemiBold",
//                               fontSize: 16.0,
//                               color: Colors.black),
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(
//                               FontAwesomeIcons.lock,
//                               color: Colors.black,
//                             ),
//                             hintText: "Password",
//                             hintStyle: TextStyle(
//                                 fontFamily: "WorkSansSemiBold", fontSize: 16.0),
//                             suffixIcon: GestureDetector(
//                               onTap: _toggleSignup,
//                               child: Icon(
//                                 _obscureTextSignup
//                                     ? FontAwesomeIcons.eye
//                                     : FontAwesomeIcons.eyeSlash,
//                                 size: 15.0,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         width: 250.0,
//                         height: 1.0,
//                         color: Colors.grey[400],
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                             top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
//                         child: TextField(
//                           controller: signupConfirmPasswordController,
//                           obscureText: _obscureTextSignupConfirm,
//                           style: TextStyle(
//                               fontFamily: "WorkSansSemiBold",
//                               fontSize: 16.0,
//                               color: Colors.black),
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             icon: Icon(
//                               FontAwesomeIcons.lock,
//                               color: Colors.black,
//                             ),
//                             hintText: "Confirmation",
//                             hintStyle: TextStyle(
//                                 fontFamily: "WorkSansSemiBold", fontSize: 16.0),
//                             suffixIcon: GestureDetector(
//                               onTap: _toggleSignupConfirm,
//                               child: Icon(
//                                 _obscureTextSignupConfirm
//                                     ? FontAwesomeIcons.eye
//                                     : FontAwesomeIcons.eyeSlash,
//                                 size: 15.0,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 340.0),
//                 decoration: new BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                   boxShadow: <BoxShadow>[
//                     BoxShadow(
//                       color: Theme.Colors.loginGradientStart,
//                       offset: Offset(1.0, 6.0),
//                       blurRadius: 20.0,
//                     ),
//                     BoxShadow(
//                       color: Theme.Colors.loginGradientEnd,
//                       offset: Offset(1.0, 6.0),
//                       blurRadius: 20.0,
//                     ),
//                   ],
//                   gradient: new LinearGradient(
//                       colors: [
//                         Theme.Colors.loginGradientEnd,
//                         Theme.Colors.loginGradientStart
//                       ],
//                       begin: const FractionalOffset(0.2, 0.2),
//                       end: const FractionalOffset(1.0, 1.0),
//                       stops: [0.0, 1.0],
//                       tileMode: TileMode.clamp),
//                 ),
//                 child: MaterialButton(
//                     highlightColor: Colors.transparent,
//                     splashColor: Theme.Colors.loginGradientEnd,
//                     //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           vertical: 0.5, horizontal: 20.0),
//                       child: Text(
//                         "SIGN UP",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16.0,
//                             fontFamily: "WorkSansBold"),
//                       ),
//                     ),
//                     onPressed: () {
//                       showInSnackBar("SignUp button pressed");
//                       if (signupPhoneNoController.value.text != null &&
//                           signupEmailController.value.text != null &&
//                           signupNameController.value.text != null &&
//                           signupPasswordController.value.text != null &&
//                           signupStateController.value.text != null &&
//                           signupAgeController.value.text != null &&
//                           signupGenderController.value.text != null) {
//                         //   if(databaseReference.child('users').child(signupAadharController.value.text){}
//                         String phoneno = signupPhoneNoController.value.text;

//                         int ref;
//                         String crops;
//                         if (signupReferralController.value.text != null) {
//                           ref = 100;
//                         } else {
//                           ref = 0;
//                         }

                        
//                         databaseReference.child('users').child('$phoneno').set({
//                           //name
//                           'name': signupNameController.value.text,

//                           //aadahr
//                           //'aadhar' : signupAadharController.value.text,
//                           //email
//                           'email': signupEmailController.value.text,
//                           //pass/\
//                           'pass': signupPasswordController.value.text,
//                           'rewards': ref,
//                           'state': signupStateController.value.text,
//                           'phoneno': signupPhoneNoController.value.text,
//                           'age': signupAgeController.value.text,
//                           'sex': signupGenderController.value.text,
//                           //'crops': crops
//                           //conf pass
//                         });
//                       }
//                     }),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   void _onSignInButtonPress() {
//     _pageController.animateToPage(0,
//         duration: Duration(milliseconds: 500), curve: Curves.decelerate);
//   }

//   void _onSignUpButtonPress() {
//     _pageController?.animateToPage(1,
//         duration: Duration(milliseconds: 500), curve: Curves.decelerate);
//   }

//   void _toggleLogin() {
//     setState(() {
//       _obscureTextLogin = !_obscureTextLogin;
//     });
//   }

//   void _toggleSignup() {
//     setState(() {
//       _obscureTextSignup = !_obscureTextSignup;
//     });
//   }

//   void _toggleSignupConfirm() {
//     setState(() {
//       _obscureTextSignupConfirm = !_obscureTextSignupConfirm;
//     });
//   }
// }

import 'beforechat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'style/theme.dart' as Theme;
import 'utils/bubble_indication_painter.dart';
import 'chatscreen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'App.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int status = 0;

  final FocusNode myFocusNodeEmailLogin = FocusNode();
  final FocusNode myFocusNodePasswordLogin = FocusNode();

  final FocusNode myFocusNodePassword = FocusNode();
  final FocusNode myFocusNodeEmail = FocusNode();
  final FocusNode myFocusNodeName = FocusNode();
  final FocusNode myFocusNodeState = FocusNode();
  //final FocusNode myFocusNodeAadhar = FocusNode();
  final FocusNode myFocusNodeGender = FocusNode();
  //final FocusNode myFocusNodeRole = FocusNode();
  //final FocusNode cropsGrown = FocusNode();
  final FocusNode myFocusAge = FocusNode();
  final FocusNode myFocusRefName = FocusNode();
  final FocusNode myFocusNodePhoneNo = FocusNode();

  TextEditingController loginEmailController = new TextEditingController();
  TextEditingController loginPasswordController = new TextEditingController();

  bool _obscureTextLogin = true;
  bool _obscureTextSignup = true;
  bool _obscureTextSignupConfirm = true;

  TextEditingController signupEmailController = new TextEditingController();
  //TextEditingController signupAadharController = new TextEditingController();
  TextEditingController signupNameController = new TextEditingController();
  TextEditingController signupStateController = new TextEditingController();
  TextEditingController signupPasswordController = new TextEditingController();
  TextEditingController signupReferralController = new TextEditingController();
  //TextEditingController signupRoleController = new TextEditingController();
  TextEditingController signupAgeController = new TextEditingController();
  TextEditingController signupGenderController = new TextEditingController();
  //TextEditingController signupCropsController = new TextEditingController();
  TextEditingController signupPhoneNoController = new TextEditingController();
  TextEditingController signupConfirmPasswordController =
      new TextEditingController();

  PageController _pageController;

  Color left = Colors.black;
  Color right = Colors.white;
  final databaseReference = FirebaseDatabase.instance.reference();

  @override
  Widget build(BuildContext context) {
    return status == 0
        ? new Scaffold(
            key: _scaffoldKey,
            body: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overscroll) {
                overscroll.disallowGlow();
              },
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height >= 775.0
                      ? MediaQuery.of(context).size.height
                      : 775.0,
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Theme.Colors.loginGradientStart,
                          Theme.Colors.loginGradientEnd
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      // Padding(
                      //   padding: EdgeInsets.only(top: 50.0),
                      //   child: new Image(
                      //       width: 250.0,
                      //       height: 191.0,
                      //       fit: BoxFit.fill,
                      //       image: new AssetImage('assets/img/login_logo.png')),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(top: 0.0),
                        child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              "Speak Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontFamily: "Roboto"),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: _buildMenuBar(context),
                      ),
                      Expanded(
                        flex: 2,
                        child: PageView(
                          controller: _pageController,
                          onPageChanged: (i) {
                            if (i == 0) {
                              setState(() {
                                right = Colors.white;
                                left = Colors.black;
                              });
                            } else if (i == 1) {
                              setState(() {
                                right = Colors.black;
                                left = Colors.white;
                              });
                            }
                          },
                          children: <Widget>[
                            new ConstrainedBox(
                              constraints: const BoxConstraints.expand(),
                              child: _buildSignIn(context),
                            ),
                            new ConstrainedBox(
                              constraints: const BoxConstraints.expand(),
                              child: _buildSignUp(context),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        : Scaffold(
            body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Color(0xff045791)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  prefix0.Expanded(
                      flex: 2,
                      child: Container(
                        child: prefix0.Column(
                          mainAxisAlignment: prefix0.MainAxisAlignment.center,
                          children: <Widget>[
                            // prefix0.CircleAvatar(
                            //   backgroundColor: Colors.white,
                            //   backgroundImage:
                            //       AssetImage('assets/img/login_logo.png'),
                            //   radius: 50,
                            //   // child: Icon(
                            //   //   Icons.shopping_cart,
                            //   //   color: Colors.greenAccent,
                            //   //   size: 50.0,
                            //   // )
                            // ),
                            Padding(
                              padding: prefix0.EdgeInsets.only(top: 10.0),
                            ),
                            Text(
                              "Speak Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: prefix0.FontWeight.bold),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: prefix0.MainAxisAlignment.center,
                        children: <Widget>[
                          prefix0.CircularProgressIndicator(),
                          Padding(
                            padding: prefix0.EdgeInsets.only(top: 20.0),
                          ),
                          Text("Women Safety",
                              style: prefix0.TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  fontWeight: prefix0.FontWeight.bold))
                        ],
                      ))
                ],
              )
            ],
          ));
  }

  @override
  void dispose() {
    myFocusNodePassword.dispose();
    myFocusNodeEmail.dispose();
    myFocusNodeName.dispose();
    myFocusRefName.dispose();
    //myFocusNodeAadhar.dispose();
    myFocusNodeState.dispose();
    myFocusNodePhoneNo.dispose();
    myFocusNodeGender.dispose();
    //myFocusNodeRole.dispose();
    //cropsGrown.dispose();
    myFocusAge.dispose();
    _pageController?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _pageController = PageController();
  }

  void showInSnackBar(String value) {
    FocusScope.of(context).requestFocus(new FocusNode());
    _scaffoldKey.currentState?.removeCurrentSnackBar();
    _scaffoldKey.currentState.showSnackBar(new SnackBar(
      content: new Text(
        value,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontFamily: "WorkSansSemiBold"),
      ),
      backgroundColor: Colors.blue,
      duration: Duration(seconds: 3),
    ));
  }

  Widget _buildMenuBar(BuildContext context) {
    return Container(
      width: 300.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Color(0x552B2B2B),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
      child: CustomPaint(
        painter: TabIndicationPainter(pageController: _pageController),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: _onSignInButtonPress,
                child: Text(
                  "Existing",
                  style: TextStyle(
                      color: left,
                      fontSize: 16.0,
                      fontFamily: "WorkSansSemiBold"),
                ),
              ),
            ),
            //Container(height: 33.0, width: 1.0, color: Colors.white),
            Expanded(
              child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: _onSignUpButtonPress,
                child: Text(
                  "New",
                  style: TextStyle(
                      color: right,
                      fontSize: 16.0,
                      fontFamily: "WorkSansSemiBold"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignIn(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 23.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              Card(
                elevation: 2.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: 300.0,
                  height: 190.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusNodeEmailLogin,
                          controller: loginEmailController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.user,
                              color: Colors.black,
                              size: 22.0,
                            ),
                            hintText: "Phone No",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 17.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusNodePasswordLogin,
                          controller: loginPasswordController,
                          obscureText: _obscureTextLogin,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.lock,
                              size: 22.0,
                              color: Colors.black,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 17.0),
                            suffixIcon: GestureDetector(
                              onTap: _toggleLogin,
                              child: Icon(
                                _obscureTextLogin
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                size: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 170.0),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Theme.Colors.loginGradientStart,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Theme.Colors.loginGradientEnd,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                  ],
                  gradient: new LinearGradient(
                      colors: [
                        Theme.Colors.loginGradientEnd,
                        Theme.Colors.loginGradientStart
                      ],
                      begin: const FractionalOffset(0.2, 0.2),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: Theme.Colors.loginGradientEnd,
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 1.0, horizontal: 20.0),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontFamily: "WorkSansBold"),
                      ),
                    ),
                    onPressed: () {
                      showInSnackBar("Login button pressed");
                      setState(() {
                        status = 1;
                      });

                      print('yoooooooooooo');
                      var phoneno = loginEmailController.value.text.toString();
                      print(phoneno);
                      databaseReference
                          .child('users')
                          .child('$phoneno')
                          .once()
                          .then((DataSnapshot snapshot) {
                        var abc = snapshot.value;
                        print(snapshot.value);
                        String pass = abc['pass'];
                        String name = abc['name'];
                        String state = abc['state'];
                        String email = abc['email'];
                        int reward = abc['rewards'];
                        String age = abc['age'];
                        String sex = abc['sex'];
                        //String role = abc['role'];
                        //String crops = abc['crops'];
                        //String phoneno = abc['phoneno'];
                        String input_pass = loginPasswordController.value.text;
                        print(input_pass);
                        if (pass == input_pass) {
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new App(
                                  phoneno,
                                  email,
                                  name,
                                  state,
                                  reward,
                                  age,
                                  sex)));
                        }
                      });
                      //Navigator.of(context).pop();
                      // Navigator.of(context).push(new MaterialPageRoute(
                      //     builder: (BuildContext context) =>
                      //         new WhatsAppHome())
                      //         );
                    }),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontSize: 16.0,
                      fontFamily: "WorkSansMedium"),
                )),
          ),
          // Padding(
          //   padding: EdgeInsets.only(top: 10.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       Container(
          //         decoration: BoxDecoration(
          //           gradient: new LinearGradient(
          //               colors: [
          //                 Colors.white10,
          //                 Colors.white,
          //               ],
          //               begin: const FractionalOffset(0.0, 0.0),
          //               end: const FractionalOffset(1.0, 1.0),
          //               stops: [0.0, 1.0],
          //               tileMode: TileMode.clamp),
          //         ),
          //         width: 100.0,
          //         height: 1.0,
          //       ),
          //       // Padding(
          //       //   padding: EdgeInsets.only(left: 15.0, right: 15.0),
          //       //   child: Text(
          //       //     "Or",
          //       //     style: TextStyle(
          //       //         color: Colors.white,
          //       //         fontSize: 16.0,
          //       //         fontFamily: "WorkSansMedium"),
          //       //   ),
          //       // ),
          //       // Container(
          //       //   decoration: BoxDecoration(
          //       //     gradient: new LinearGradient(
          //       //         colors: [
          //       //           Colors.white,
          //       //           Colors.white10,
          //       //         ],
          //       //         begin: const FractionalOffset(0.0, 0.0),
          //       //         end: const FractionalOffset(1.0, 1.0),
          //       //         stops: [0.0, 1.0],
          //       //         tileMode: TileMode.clamp),
          //       //   ),
          //       //   width: 100.0,
          //       //   height: 1.0,
          //       // ),
          //     ],
          //   ),
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Padding(
          //       padding: EdgeInsets.only(top: 10.0, right: 40.0),
          //       child: GestureDetector(
          //         onTap: () => showInSnackBar("Facebook button pressed"),
          //         child: Container(
          //           padding: const EdgeInsets.all(15.0),
          //           decoration: new BoxDecoration(
          //             shape: BoxShape.circle,
          //             color: Colors.white,
          //           ),
          //           child: new Icon(
          //             FontAwesomeIcons.facebookF,
          //             color: Color(0xFF0084ff),
          //           ),
          //         ),
          //       ),
          //     ),
          //     Padding(
          //       padding: EdgeInsets.only(top: 10.0),
          //       child: GestureDetector(
          //         onTap: () => showInSnackBar("Google button pressed"),
          //         child: Container(
          //           padding: const EdgeInsets.all(15.0),
          //           decoration: new BoxDecoration(
          //             shape: BoxShape.circle,
          //             color: Colors.white,
          //           ),
          //           child: new Icon(
          //             FontAwesomeIcons.google,
          //             color: Color(0xFF0084ff),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget _buildSignUp(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 23.0),
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            overflow: Overflow.visible,
            children: <Widget>[
              Card(
                elevation: 2.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Container(
                  width: 300.0,
                  height: 360.0,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusNodeName,
                          controller: signupNameController,
                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.words,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.user,
                              color: Colors.black,
                            ),
                            hintText: "Name",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusNodePhoneNo,
                          controller: signupPhoneNoController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.addressBook,
                              color: Colors.black,
                            ),
                            hintText: "Phone No",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusNodeEmail,
                          controller: signupEmailController,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.envelope,
                              color: Colors.black,
                            ),
                            hintText: "Email Address",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusAge,
                          controller: signupAgeController,
                          keyboardType: TextInputType.number,
                          textCapitalization: TextCapitalization.words,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.user,
                              color: Colors.black,
                            ),
                            hintText: "Age",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                          ),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusNodeGender,
                          controller: signupGenderController,
                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.words,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.genderless,
                              color: Colors.black,
                            ),
                            hintText: "Male /Female /Sarah",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                          ),
                        ),
                      ),
                      // Container(
                      //   width: 250.0,
                      //   height: 1.0,
                      //   color: Colors.grey[400],
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                      //   // child: TextField(
                      //   //   //focusNode: myFocusNodeRole,
                      //   //   //controller: signupRoleController,
                      //   //   keyboardType: TextInputType.text,
                      //   //   textCapitalization: TextCapitalization.words,
                      //   //   style: TextStyle(
                      //   //       fontFamily: "WorkSansSemiBold",
                      //   //       fontSize: 16.0,
                      //   //       color: Colors.black),
                      //   //   decoration: InputDecoration(
                      //   //     border: InputBorder.none,
                      //   //     icon: Icon(
                      //   //       FontAwesomeIcons.arrowAltCircleRight,
                      //   //       color: Colors.black,
                      //   //     ),
                      //   //     hintText: "Role (eg: Farmer)",
                      //   //     hintStyle: TextStyle(
                      //   //         fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                      //   //   ),
                      //   // ),
                      // ),
                      // Container(
                      //   width: 250.0,
                      //   height: 1.0,
                      //   color: Colors.grey[400],
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                      //   // child: TextField(
                      //   //   focusNode: cropsGrown,
                      //   //   controller: signupCropsController,
                      //   //   keyboardType: TextInputType.text,
                      //   //   textCapitalization: TextCapitalization.words,
                      //   //   style: TextStyle(
                      //   //       fontFamily: "WorkSansSemiBold",
                      //   //       fontSize: 16.0,
                      //   //       color: Colors.black),
                      //   //   decoration: InputDecoration(
                      //   //     border: InputBorder.none,
                      //   //     icon: Icon(
                      //   //       FontAwesomeIcons.seedling,
                      //   //       color: Colors.black,
                      //   //     ),
                      //   //     hintText: "Crops Grown",
                      //   //     hintStyle: TextStyle(
                      //   //         fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                      //   //   ),
                      //   // ),
                      // ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusNodeState,
                          controller: signupStateController,
                          keyboardType: TextInputType.text,
                          textCapitalization: TextCapitalization.words,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.pin_drop,
                              color: Colors.black,
                              size: 30.0,
                            ),
                            hintText: "State",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                          ),
                        ),
                      ),
                      // Container(
                      //   width: 250.0,
                      //   height: 1.0,
                      //   color: Colors.grey[400],
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                      //   child: TextField(
                      //     focusNode: myFocusRefName,
                      //     controller: signupReferralController,
                      //     keyboardType: TextInputType.text,
                      //     textCapitalization: TextCapitalization.words,
                      //     style: TextStyle(
                      //         fontFamily: "WorkSansSemiBold",
                      //         fontSize: 16.0,
                      //         color: Colors.black),
                      //     decoration: InputDecoration(
                      //       border: InputBorder.none,
                      //       icon: Icon(
                      //         Icons.people,
                      //         color: Colors.black,
                      //         size: 30.0,
                      //       ),
                      //       hintText: "Referral Code (if any)",
                      //       hintStyle: TextStyle(
                      //           fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                      //     ),
                      //   ),
                      // ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          focusNode: myFocusNodePassword,
                          controller: signupPasswordController,
                          obscureText: _obscureTextSignup,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.lock,
                              color: Colors.black,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                            suffixIcon: GestureDetector(
                              onTap: _toggleSignup,
                              child: Icon(
                                _obscureTextSignup
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                size: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 250.0,
                        height: 1.0,
                        color: Colors.grey[400],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 25.0, right: 25.0),
                        child: TextField(
                          controller: signupConfirmPasswordController,
                          obscureText: _obscureTextSignupConfirm,
                          style: TextStyle(
                              fontFamily: "WorkSansSemiBold",
                              fontSize: 16.0,
                              color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              FontAwesomeIcons.lock,
                              color: Colors.black,
                            ),
                            hintText: "Confirmation",
                            hintStyle: TextStyle(
                                fontFamily: "WorkSansSemiBold", fontSize: 16.0),
                            suffixIcon: GestureDetector(
                              onTap: _toggleSignupConfirm,
                              child: Icon(
                                _obscureTextSignupConfirm
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                size: 15.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 340.0),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Theme.Colors.loginGradientStart,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                    BoxShadow(
                      color: Theme.Colors.loginGradientEnd,
                      offset: Offset(1.0, 6.0),
                      blurRadius: 20.0,
                    ),
                  ],
                  gradient: new LinearGradient(
                      colors: [
                        Theme.Colors.loginGradientEnd,
                        Theme.Colors.loginGradientStart
                      ],
                      begin: const FractionalOffset(0.2, 0.2),
                      end: const FractionalOffset(1.0, 1.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                ),
                child: MaterialButton(
                    highlightColor: Colors.transparent,
                    splashColor: Theme.Colors.loginGradientEnd,
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0.5, horizontal: 20.0),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: "WorkSansBold"),
                      ),
                    ),
                    onPressed: () {
                      showInSnackBar("SignUp button pressed");
                      if (signupPhoneNoController.value.text != null &&
                          signupEmailController.value.text != null &&
                          signupNameController.value.text != null &&
                          signupPasswordController.value.text != null &&
                          signupStateController.value.text != null &&
                          signupAgeController.value.text != null &&
                          signupGenderController.value.text != null) {
                        //   if(databaseReference.child('users').child(signupAadharController.value.text){}
                        String phoneno = signupPhoneNoController.value.text;

                        int ref;
                        String crops;
                        if (signupReferralController.value.text != null) {
                          ref = 100;
                        } else {
                          ref = 0;
                        }

                        databaseReference.child('users').child('$phoneno').set({
                          //name
                          'name': signupNameController.value.text,

                          //aadahr
                          //'aadhar' : signupAadharController.value.text,
                          //email
                          'email': signupEmailController.value.text,
                          //pass/\
                          'pass': signupPasswordController.value.text,
                          'rewards': ref,
                          'state': signupStateController.value.text,
                          'phoneno': signupPhoneNoController.value.text,
                          'age': signupAgeController.value.text,
                          'sex': signupGenderController.value.text,
                          //'crops': crops
                          //conf pass
                        });
                      }
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onSignInButtonPress() {
    _pageController.animateToPage(0,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  void _onSignUpButtonPress() {
    _pageController?.animateToPage(1,
        duration: Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  void _toggleLogin() {
    setState(() {
      _obscureTextLogin = !_obscureTextLogin;
    });
  }

  void _toggleSignup() {
    setState(() {
      _obscureTextSignup = !_obscureTextSignup;
    });
  }

  void _toggleSignupConfirm() {
    setState(() {
      _obscureTextSignupConfirm = !_obscureTextSignupConfirm;
    });
  }
}
