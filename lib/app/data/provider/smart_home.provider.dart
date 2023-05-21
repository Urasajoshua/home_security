import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as models;

class SmartHomeProvider {
  Client client = Client();

  Account? account;
  SmartHomeProvider() {
    client
        .setEndpoint('https://cloud.appwrite.io/v1')
        .setProject("6466c104d287a0d657c0");
    account = Account(client);
  }

  Future<models.Account> signup(Map map) async {
    final response = await account!.create(
        userId: map['userId'],
        email: map['email'],
        password: map['email'],
        name: map['name']);
    return response;
  }

  Future<models.Session> login(Map map) async {
    final response = await account!.createEmailSession(
      email: map['email'],
      password: map['email'],
    );
    return response;
  }
}
