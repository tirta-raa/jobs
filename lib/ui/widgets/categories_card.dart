part of 'widgets.dart';

class CategoriesCard extends StatelessWidget {
  final Categories categories;
  CategoriesCard(this.categories);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 200,
        width: 150,
        child: Stack(
          children: <Widget>[
            Image.asset(
              categories.imageUrl,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 130,
                left: 16,
              ),
              child: Text(
                categories.text,
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
