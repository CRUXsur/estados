part of 'user_bloc.dart';

//los eventos es literalmente es como nosotros queremos que luzcan
//o que eventos son los que nosostros queremos llamar, por ejemplo si
//quiero cambiar un usuario, voy a llamar un evento que se llame
//activar usuario y le mando como argumento el usuario que yo quiero
//establecer en mi estado
@immutable
abstract class UserEvent {
  //el objetivo de esat clase abstracta, yo voy a empezar a crear eventos
  //que van a extenderse de UserEvent
  //objetivo real es que nuestro bloc sepa que eventos especificamente
  //va a poder esperar!
  //solo los eventos en espanol(UserEvent), no ingles, chino,ruso,.......
}

class ActivateUser extends UserEvent {
  //aqui,si yo estoy mandando en algun lado, el boton de Establecer Usurio!
  //yo ya debria saber cual es el usuario que necesito enviar
  final User user;
  ActivateUser(this.user); //constructor posicional
}

//necesito un evento que me sirva para saber que hacer cuando recibo
//algo que diga cambie la edad....
class ChangeUserAge extends UserEvent {
  //necesito
  final int age;
  //creo el constructor
  ChangeUserAge(this.age);
}

//!recuerden que entre el estado y eventos NO EXISTE ninguna
//!relacion directa, quien hace la interaccion es el BLoC

//andir profesion
class AddProfession extends UserEvent {
  final String profession;
  AddProfession(this.profession);
}
