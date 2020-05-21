import 'package:mobx/mobx.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  
  @observable
  String email = "";

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = "";

  @action
  void setPassword(String value) => password = value;

  @observable
  bool visible = true;

  @action
  void setVisible() => visible = !visible;

  @observable
  bool loading = false;

  @action
  Future<void> login() async{
    loading = true;
    
    await Future.delayed(Duration(seconds: 2));

    loading = false;
    loggedIn = true;
  }

  @observable
  bool loggedIn = false;

  @computed
  Function get loginPressed => 
  (isEmailValid && isPasswordValid && !loading) ? login : null;


  @computed
  bool get isEmailValid => RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);

  @computed
  bool get isPasswordValid => password.length > 6;

} 