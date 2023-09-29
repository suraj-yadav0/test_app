import 'package:appwrite/appwrite.dart';

import 'package:appwrite/models.dart' as models;

class AppWriteProvider {
  Client client = Client();
  Account? account;
  AppWriteProvider() {
    client
        .setEndpoint("https://cloud.appwrite.io/v1 ")
        .setProject("6512d9eb9b07dff5bb86")
        .setSelfSigned(status: true);
    account = Account(client);
  }

  Future<models.Account> signup(Map map) async {
    final response = account!.create(
        userId: map["userId"], email: map["email"], password: map["password"],name: map["name"]);
        return response;
  }
}
