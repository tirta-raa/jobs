part of 'provider.dart';

class AuthProvider with ChangeNotifier {
  Future<UserModels> register(
      String email, String password, String name, String goal) async {
    try {
      var body = {
        'email': email,
        'password': password,
        'name': name,
        'goal': goal,
      };

      var response = await http.post(
        Uri.parse('https://bwa-jobs.herokuapp.com/register'),
        body: body,
      );

      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        return UserModels.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}

// * kode di atas untuk riques ke api

// ? di buat method dengan nama register dengan tipe future yang akan mengembalikan UserModels
// ? string email string password dan sterusnya di sesuaikan dengan nama register yang berada di api dengan methon atau fungsinya asyc 'asyncronus'
// ? kemudian try catch di buat variabel body samadengan karena di apinya ada bodynya dengan variable yang sama tulisanya email dan email
// ? kemudian melakukan respon ke http.post, bentuk uri parse, responsenya akan di buat variabel di tambah await karena itu future
// ? body itu udah package dari http
// ? kemduian print statusCode variabel respon dan print body dari variabel respon
// ? if jika variabel respon status codenya 200 maka kembalikan UserModles dari json dari jsondecode dengan variabel respone dan body dari http
// ? else selain itu null
// ? print error kembalikan null
