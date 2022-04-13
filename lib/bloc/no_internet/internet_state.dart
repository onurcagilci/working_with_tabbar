import 'package:nfssoftmobil/core/app/constant/enums/connection_type.dart';

abstract class InternetState {}

class InternetLoading extends InternetState {}

class InternetConnected extends InternetState {
  final ConnectionType? connectionType;

  InternetConnected({this.connectionType});
}

class InternetDisconnected extends InternetState {}
