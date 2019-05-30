import 'package:flutter/material.dart';
import 'Contact.dart';

import 'detalle_contact/detalle.dart';

class DetailContact extends StatelessWidget{

  Contact contact;

  DetailContact(this.contact);

  @override
  Widget build(BuildContext context) {






    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Detail"),
          leading: IconButton(icon: Icon(Icons.arrow_back),
              onPressed: ()=>Navigator.pop(context,false)),
        ),
        body: Column(
          children: <Widget>[
            Detalle(contact)
          ],
        ) ,
      ),
    );



  }
}