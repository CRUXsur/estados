class Usuario {
  final String nombre;
  final int edad;
  final List<String> profesiones;

  Usuario(
      {required this.nombre, required this.edad, required this.profesiones});

  //! retorna una nueva instancia de mi usuario, esto porque no puedo cambiar
  //! valor a los final int edad....
  //! esto es un metodo que regresa un Usuario y recibe
  //! String? nombre, int? edad,List<String>? profesiones
  Usuario copyWith({String? nombre, int? edad, List<String>? profesiones}) =>
      Usuario(
        nombre: nombre ?? this.nombre, //si no recibo ?? entonces this.nombre
        edad: edad ?? this.edad,
        profesiones: profesiones ?? this.profesiones,
      );
}
