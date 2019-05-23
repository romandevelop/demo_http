import 'package:flutter/material.dart';
import 'Contact.dart';

class ItemContact extends StatelessWidget{
  Contact contact;

  ItemContact(this.contact);


  @override
  Widget build(BuildContext context) {


    final foto = Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: Image.network(contact.foto).image,
            fit: BoxFit.cover
        ),
        border: Border.all(color: Colors.white ,width:2.0 ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)

          )
        ],
        shape: BoxShape.circle

      ),

    );

    final caja=Container(
      width: 200.0,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(25.0),
      child: Column(
        children: <Widget>[
          foto,
          Text(contact.nombre,style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w900),),
          Text(contact.mail,style: TextStyle(color: Colors.white, fontSize: 14.0, ),)
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color:Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0,7.0)
          )
        ],
        borderRadius: BorderRadius.circular(10.0)
      ),
    );






    return Column(
      children: <Widget>[
        caja
      ],
    );
  }
}