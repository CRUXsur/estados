class User {
  //final , no la voy a mutar
  final String nombre;
  final int edad;
  final List<String> profesiones;

  User({
    required this.nombre,
    required this.edad,
    required this.profesiones,
  });

  //retorno de tipo User, va a regresar una nueva "instancia copiada"
  //de este objeto....se usa mucho para hacer copias de instancias
  User copyWith({
    //recibe
    String? nombre,
    int? edad,
    List<String>? profesiones,
  }) =>
      User(
        //en el copyWith pueden ser nulas!!,
        //entonces puedo decir ,si nombre vienecomo argumento entonces
        //establecelo pero si no entonces mandalo el this.nombre(el que
        //esta en la instancia primera, no en el copyWith)
        nombre: nombre ?? this.nombre,
        edad: edad ?? this.edad,
        profesiones: profesiones ?? this.profesiones,
      );
}
