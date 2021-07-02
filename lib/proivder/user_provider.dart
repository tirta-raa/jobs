part of 'provider.dart';

class UserProvider with ChangeNotifier {
  late UserModels _user;

  UserModels get user => _user;

  set user(UserModels newUser) {
    _user = newUser;
    notifyListeners();
  }
}

// ? fungsi code 'provider' di atas adalah menyimpan data dari user ke api
