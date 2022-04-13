class MyNetworkError implements Exception {
  final String errorMessage;
  final String responseStatusCode;

  MyNetworkError(this.errorMessage, {required this.responseStatusCode});
}
