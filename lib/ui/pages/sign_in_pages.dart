part of 'pages.dart';

class SignInPages extends StatefulWidget {
  @override
  State<SignInPages> createState() => _SignInPagesState();
}

class _SignInPagesState extends State<SignInPages> {
  bool isEmailValid = true;
  TextEditingController emailControler = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Sign In',
                    style: greyFontStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Build Your Career',
                    style: blackFontStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/image_sign_in.png',
                      height: 240,
                      width: 262,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Email Adress',
                    style: greyFontStyle.copyWith(fontSize: 16),
                  ),
                  TextFormField(
                    controller: emailControler,
                    onChanged: (value) {
                      bool isValid = EmailValidator.validate(value);
                      print(isValid);
                      if (isValid) {
                        setState(() {
                          isEmailValid = true;
                        });
                      } else {
                        setState(() {
                          isEmailValid = false;
                        });
                      }
                    },
                    // arti kode di atas controler email controler itu kondisi yang udah di buat di atas
                    // onchangned itu ketika berubah value udah bawaan dari sana
                    // boolean isValid atau bikin sendiri nama validasinya emailvalidator itu bawaan dari pub email validator
                    // if jika isValid setstate(ketika ada perubaaahn) isEmailvalid itu boolean yang ada di paling atas true
                    // else selain dari itu false
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: isEmailValid
                              ? Color(0xff4141A4)
                              : Color(0xffFD4F56),
                          // arti kode di atas ketika true tampilkan warna biru selain itu tampilkan warna merah
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Password',
                    style: greyFontStyle.copyWith(fontSize: 16),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: isEmailValid
                              ? Color(0xff4141A4)
                              : Color(0xffFD4F56),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 312,
                    height: 45,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: mainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePages(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: whiteFontStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPages(),
                          ),
                        );
                      },
                      child: Text(
                        'Create New Account',
                        style: greyFontStyle.copyWith(fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
