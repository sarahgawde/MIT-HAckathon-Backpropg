import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'App.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:countdown/countdown.dart';
import 'dart:async';

class Trigger extends StatefulWidget {
  final phoneno, email, name, state, reward, age, sex;
  
  Trigger(this.phoneno, this.email, this.name, this.state, this.reward,
      this.age, this.sex);
  @override
  _TriggerState createState() => _TriggerState(phoneno, email, name, state, reward, age, sex);
}
String url_link , body;




class _TriggerState extends State<Trigger> {
  final phoneno, email, name, state, reward, age, sex;
  int temp = 0;

  _TriggerState(this.phoneno, this.email, this.name, this.state, this.reward,
      this.age, this.sex);

      

  // final databaseReference = FirebaseDatabase.instance.reference();
  
      List<String> people = ['980','8655138960'];
      final databaseReference = FirebaseDatabase.instance.reference();
void getData(){

  databaseReference.child('track').child('$phoneno').once().then((DataSnapshot snapshot) {
    print('Data : ${snapshot.value}');
    url_link = snapshot.value['download_img'];
    print(url_link);
    setState(() {
          body = 'Help me, I am in distress.. Possibility: $url_link';

      
    });
    print(body);
  });
}


temp1(){
      if(temp==0){
        getData();
        _sendSMS(body,people);
      }
    }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => 
      temp1()
    );
  }
  

  void _sendSMS(String message, List<String> recipents) async {
    try {
      String _result =
          await FlutterSms.sendSMS(message: message, recipients: recipents);
      // setState(() => _message = _result);
    } catch (error) {
      // setState(() => _message = error.toString());
      print("Error");
    }
  }

                  

  // @override
  // Widget build(BuildContext context) {
  //   return L
  // // final phoneno, email, name, state, reward, age, sex;
  // // Trigger(this.phoneno, this.email, this.name, this.state, this.reward,
  // //     this.age, this.sex);
  @override
  Widget build(BuildContext context) {
    List<String> people = ['980','8655138960'];
  
    return Scaffold(
        appBar: AppBar(
          title: Text("SOS"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Center(
              child: Text("ALerttttt"),
              ),
              RaisedButton(
                child: Text("Deactivate"),
                onPressed: () {
                  setState(() {
                   temp = 1; 
                  });
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new App(
                          phoneno, email, name, state, reward, age, sex)));
                },
              ),
              
            ],
          ),
        ));
  }
}