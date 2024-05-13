sealed class LoginStates{

}


class LoadingLogin extends LoginStates{}
class SuccessLogin extends LoginStates{}
class ErrorLogin extends LoginStates{
  String message;
  ErrorLogin(this.message);
}
