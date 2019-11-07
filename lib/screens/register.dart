import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ungpinthong/utility/my_style.dart';
import 'package:intl/intl.dart';
// import 'package:intl';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //Field
  final formKey =GlobalKey<FormState>();
  String name, user, password,dateString;


  //method
  Widget passwordtext() {
    return Container(margin: EdgeInsets.only(left: 30.0,right: 30.0),
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,      
        size: 36.0,
        color: Colors.orange,
        ),
        labelText: 'Password :',
        labelStyle: TextStyle(
          color:Colors.purple,
        ),helperText:  'Type Your First Name in Blank',
        helperStyle: TextStyle(color: Colors.purple),
        hintText: 'English Only'
        ), validator: (String value){
          if (value.isEmpty) {
            return'Please fill Name in the Blank';
            
          } else {
            return null;
            
          }
          onSaved: (value){
            password = value.trim();
        },
      );
   );
    
    
  }

  Widget usertext() {
    var icons;
    return Container(margin: EdgeInsets.only(left: 30.0,right: 30.0),
      child: TextFormField(keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.face,
        size: 36.0,
        color: Colors.purple,
        ),
        labelText: 'Display Name :',
        labelStyle: TextStyle(
          color:Colors.purple,
        ),
        helperText:  'Type Your First Name in Blank',
        helperStyle: TextStyle(
          color: Colors.purple),
        hintText: 'you@mail.com',
        ),validator: (String value){
          if (value.isEmpty) {
            return 'กรุณากรอก User ด้วยค่ะ';
         } else if (((value.contains('@'))&&(value.contains('.'))) {
           return 'กรุณากรอก you@mail.com ด้วยค่ะ';
         }else{
            return null;
          }
          onSaved: (value){
          user = value.trim();
        },
    )
         },
  }

  Widget nameText() {
    var icons;
    return Container(margin: EdgeInsets.only(left: 30.0,right: 30.0),
      child: TextFormField(
        decoration: InputDecoration(icon: Icon(Icons.face,
        size: 36.0,
        color: Colors.purple,
        ),
        labelText: 'Display Name :',
        labelStyle: TextStyle(
          color:Colors.purple,
        ),helperText:  'Type Your First Name in Blank',
        helperStyle: TextStyle(color: Colors.purple),
        hintText: 'English Only',
        ),validator: (value){
          if (value.length <6) {
            return 'Password More 6 Charactor';
          } else {
            return null;
          }
        },onSaved: (value){
          name = value.trim();
        }
    ),
  }

  Widget showCurrentDate() {
    DateTime dateTime = DateTime.now();
    print('dateTime = $dateTime');

    dateString = DateFormat('yyyy-MM-dd').format(dateTime);
    print('dateString = $dateString');
    // String dateString = '2019-11-07';

    return Text(
      'Date= $dateString',
      style: MyStyle().myTextStyleH2,
    );
  }

  Widget registerButton() {
    return IconButton(
      tooltip: 'upload Value to Server',
      icon: Icon(Icons.cloud_upload),
      
      onPressed: () {
        print('You Click Register');
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
          print('name =$name, user = $user, password =$password');
          registerThread();
        }
      },
    );
  }
  Future<void>registerThread()async{
    String url='https://www.androidthai.in.th/pint/addUserhen.php?isAdd=true&Name=$name&User=$user&Password=$password&RegisDate=$dateString';
    Response response = await get(url);
    print('response = $response');
    var result =json.decode(response.body);
    print('result = $result');

    if (result.toString() == 'true') {
      Navigator.of(context).pop();
      
    } else {
    }
  }

  @override
  Widget build(BuildContext context) {
    var container2 = Container(
                decoration: BoxDecoration(
                  gradient: :LinearGradient(
                    color: [Colors:while,Mystye()mainColor  ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                     ),
                ),
                padding: EdgeInsets.all(30,0),
                child: <Widget>[
                  showCurrentDate(),SizedBox(height: 20.0,),
                  nameText(),
                  usertext(),
                  passwordtext(),
                          ],);
        var container = container2;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: MyStyle().textColor,
            title: Text('Register'),
            actions: <Widget>[registerButton()],
          ),
    
          body: container,
              );
            }
          
          passwordtext() {
}