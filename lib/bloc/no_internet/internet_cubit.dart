import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nfssoftmobil/core/app/constant/enums/connection_type.dart';

import 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  final Connectivity? connectivity;
  late final StreamSubscription connectivityStreamSubscription;

  InternetCubit({this.connectivity}) : super(InternetLoading()) {
    internetConnection();
  }

  StreamSubscription<ConnectivityResult> internetConnection() {
    return connectivityStreamSubscription =
        connectivity!.onConnectivityChanged.listen((event) {
          if (event == ConnectivityResult.wifi) {
            emit(InternetConnected(connectionType: ConnectionType.wifi));
          } else if (event == ConnectivityResult.mobile) {
            emit(InternetConnected(connectionType: ConnectionType.mobile));
          } else if (event == ConnectivityResult.ethernet) {
            emit(InternetConnected(connectionType: ConnectionType.ethernet));
          } else if (event == ConnectivityResult.none) {
            emit(InternetDisconnected());
          }else{
            emit(InternetDisconnected());
          }
        });
  }

  @override
  Future<void> close() {
    connectivityStreamSubscription.cancel();
    return super.close();
  }
}
