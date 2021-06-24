part of 'widgets.dart';

class CategoriesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 200,
        width: 150,
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/image_category1.png',
            ),
            Container(
              margin: EdgeInsets.only(
                top: 130,
                left: 16,
              ),
              child: Text(
                'Mobile\nDeveloper',
                style: whiteFontStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
