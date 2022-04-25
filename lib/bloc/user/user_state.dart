//Cuando trabajamos con el state, creamos diferentes estados, podemos
//tener diferentes clases que van a ayudar a cambiar el estado muy
//facilmente...por lo cual es muy comun que esto sea una clase abstracta!
//e immutable, porque a pesar que una clase abstarcta no se puede cambiar
//es aconsejable poner immutable.
//abstarcta: siginifica que no puedo crear instancias de esa clase
//immutable: no puede cambiar
//el objetivo del UserState, me sirva para crear otras clases que si
//van a tener el estado que yo quiero y esto me ayuda a cambiar el
//estado mas facilmente
//

part of 'user_bloc.dart';

@immutable
abstract class UserState {
  final bool existUser;
  final User? user;

//Si, inicializo this.existUser=false,...ya no serian argumentos
//posicionales(no me permite),tengo que ponerle {}y volverlos
//argumentos por nombre!
  const UserState({
    this.existUser = false,
    this.user,
  });
}

//Me creo un estado inicial, sabemos que no tenemnos un usuario logueado
//con esto inicializamos nuestro UserBloc!
class UserInitialState extends UserState {
  const UserInitialState() : super(existUser: false, user: null);
}
