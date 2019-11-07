import 'package:flutter/material.dart';
import 'package:ungpinthong/utility/my_style.dart';
import 'package:intl/intl.dart';
// import 'package:intl';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  //Field

  //method
  Widget passwordtext() {
    var icons;
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
        hintText: 'English Only',
        ),
    ),
  }

  Widget usertext() {
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
        ),
    ),
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
        ),
    ),
  }

  Widget showCurrentDate() {
    DateTime dateTime = DateTime.now();
    print('dateTime = $dateTime');

    String dateString = DateFormat('yyyy-MM-dd').format(dateTime);
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
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyStyle().textColor,
        title: Text('Register'),
        actions: <Widget>[registerButton()],
      ),

      body: Container(
        decoration: BoxDecoration(
          gradient: :LinearGradient(
            color: [Colors:while,Mystye()mainColor  ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
             ),
        ),
        padding: EdgeInsets.all(30,0),
        children: <Widget>[
          showCurrentDate(),SizedBox(height: 20.0,),
          nameText(),
          usertext(),
          passwordtext(),
        ],
      ),
    );
  }
  
}
