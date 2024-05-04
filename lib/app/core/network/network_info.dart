

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:food/app/core/app_export.dart';


abstract class NetworkInfoI{
  Future<bool> isConnect();

  Future<Future<List<ConnectivityResult>>> get connectivityResult;
  
  Stream <List<ConnectivityResult>> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoI{
  Connectivity connectivity;

  static final NetworkInfo _networkInfo=NetworkInfo._internal(Connectivity());

  factory NetworkInfo(){
    return _networkInfo;
  }

  NetworkInfo._internal(this.connectivity){
    connectivity=connectivity;
  }
  @override
  Future<bool> isConnect() async{
    final res= await connectivity.checkConnectivity();
    // ignore: unrelated_type_equality_checks
    if(res!=ConnectivityResult.none){
      return true;
    }
    return false;
  }

  @override
  Future<Future<List<ConnectivityResult>>> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  @override
  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
    connectivity.onConnectivityChanged;
}

abstract class Failure {}

class ServerFailure extends Failure {}
class CacheFailure extends Failure {}
class NetworkFailure extends Failure {}
class ServerException implements Exception {}
class NetworkException implements Exception {}

class NoInternetException implements Exception {
  late String message;

  NoInternetException([String message="No Internet"]){
    this.message = message;
  }

  @override
  String toString(){
    return message;
  }
}
