part of 'pages.dart';

class SplashPages extends StatefulWidget {
  @override
  _SplashPagesState createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingPages(),
        ),
      );
    });
  }
  // *kode di atas adalah untuk pindah halaman menggunakan waktu

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Image.asset(
          'assets/image_splash.png',
          width: 178,
          height: 174,
        ),
      ),
    );
  }
}
