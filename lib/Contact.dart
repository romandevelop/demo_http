
class Contact{
   String id;
   String nombre;
   String apellido;
   String mail;
   String telefono;
   String foto;

   Contact(this.id, this.nombre, this.apellido, this.mail, this.telefono, this.foto);


  factory Contact.fromJson(Map<String, dynamic> json){
    return Contact(
      json['id'],
      json['nombre'],
      json['apellido'],
      json['mail'],
      json['telefono'],
      json['foto']
    );
  }

}
