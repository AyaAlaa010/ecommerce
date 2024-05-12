import 'failure.dart';

class ServerFailure extends Failure {
  String? error, errorCode;
  String? message;
  String ? statusMsg;

  ServerFailure(
      {required super.statusCode,
      this.message,
      this.error,
      this.errorCode,
      super.messageAr,
      super.messageEn
      ,this.statusMsg});

  factory ServerFailure.fromMap(Map<String, dynamic> json) {
    return ServerFailure(
      statusCode: json["statusCode"],
      error: json["error"],
      errorCode: json["errorCode"],
      message: json["message"],
      messageAr: json["messageAr"],
      messageEn: json["messageEn"],
      statusMsg: json["statusMsg"]
    );
  }
}
