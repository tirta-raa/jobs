part of 'widgets.dart';

class DetailsText extends StatelessWidget {
  final String text;
  DetailsText({required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/dot.png',
          width: 12,
          height: 12,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          text,
          style: blackFontStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
