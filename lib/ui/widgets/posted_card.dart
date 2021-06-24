part of 'widgets.dart';

class PostedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/icon_google.png',
          width: 45,
        ),
        SizedBox(
          width: 26,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Front-End Developer',
              style: blackFontStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Google',
              style: greyFontStyle.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              width: 230,
              height: 1,
              decoration: BoxDecoration(
                color: greyColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
