part of 'pages.dart';

class SignInPages extends StatelessWidget {
  const SignInPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              'Build Your Next\nFuture Career Like\na Master',
              style: whiteFontStyle.copyWith(
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
