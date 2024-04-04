class ApiError {
  ApiError({this.e, this.message = "Something went wrong."});

  Exception? e;
  String message;
}
