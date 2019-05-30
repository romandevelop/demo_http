import 'package:flutter/material.dart';

import '../Contact.dart';

class Detalle extends StatelessWidget{

  Contact contact;

  Detalle(this.contact);


  @override
  Widget build(BuildContext context) {

    final foto = Container(
      height: 100.0,
      width: 100.0,
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

          Container(
            margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child:Text(contact.nombre+" "+contact.apellido,style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w900),),),

          Divider(height: 1.0, color: Colors.white,),
          Container(
            margin: EdgeInsets.only(top: 8.0),
            child:Text(contact.mail,style: TextStyle(color: Colors.white, fontSize: 14.0, fontStyle: FontStyle.italic),),),
          Text(contact.telefono,style: TextStyle(color: Colors.white, fontSize: 14.0, fontStyle: FontStyle.italic, ))

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
        borderRadius: BorderRadius.circular(10.0),

      ),
    );


    return Row(
      //crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,//align horizontal in a row
      children: <Widget>[caja],
    );
  }
}