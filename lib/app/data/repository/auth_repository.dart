import 'package:security/app/data/provider/smart_home.provider.dart';

import 'package:appwrite/models.dart' as models;

class AuthRepository {
  final SmartHomeProvider smartHomeProvider;

  AuthRepository(this.smartHomeProvider);

  Future<models.Account> signup(Map map) => smartHomeProvider.signup(map);
  Future<models.Session> login(Map map) => smartHomeProvider.login(map);
}
