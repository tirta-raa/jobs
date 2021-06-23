part of 'pages.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

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
                    'Sign Up',
                    style: greyFontStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Begin New Journey',
                    style: blackFontStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/image_profile.png',
                      height: 120,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Full Name',
                    style: greyFontStyle.copyWith(fontSize: 16),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email Adress',
                    style: greyFontStyle.copyWith(fontSize: 16),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none),
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
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Your Goals',
                    style: greyFontStyle.copyWith(fontSize: 16),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none),
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
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: whiteFontStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInPages()),
                        );
                      },
                      child: Text('Back to Sign In',
                          style: greyFontStyle.copyWith(fontSize: 14)),
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
