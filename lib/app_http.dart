import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Contact.dart';
import 'dart:io';

import 'ItemContact.dart';

class AppHttp extends StatefulWidget{
  _MyApp createState() => new _MyApp();
  AppHttp();
}


class _MyApp extends State<AppHttp>{
  String url="http://app1.rodev.cl/index.php/contacts";
  List<dynamic> list = List();
  List<ItemContact> contacts=List();
  
  var cargando=false;



  Future<List<dynamic>> peticionHttp() async{
    print("procesando....");
    var response = await http.get(url);
    if(response.statusCode == 200){
      setState(() {
        cargando = true;
      });
      list.clear();
      list = (json.decode(response.body) as List)
              .map((data)=>new Contact.fromJson(data))
              .toList();
    }else{
      print("error");
      throw Exception();

    }
    print("proceso terminado");
    return list;
  }

  Widget paintWidget(BuildContext context, AsyncSnapshot snapshop){
    var values = snapshop.data;

    return ListView.builder(
        itemCount: values==null? 0: values.length,
        itemBuilder: (BuildContext context, int index){
          return ItemContact(values[index]);


        }
    );
  }


  @override
  Widget build(BuildContext context) {
    print("tamaño ${contacts.length}");

    return  Container(
        child:FutureBuilder(
          future: peticionHttp(),
         // initialData: [],
          builder: (context, snapshop){
            return snapshop.data!=null?paintWidget(context,snapshop):Center(child: CircularProgressIndicator(),);
          },
        )
    );
  }
}