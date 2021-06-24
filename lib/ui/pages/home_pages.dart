part of 'pages.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Howdy',
                        style: greyFontStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Jason Powell',
                        style: blackFontStyle.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 58,
                    child: Image.asset(
                      'assets/image_profile.png',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                'Hot Categories',
                style: blackFontStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 200,
              width: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CategoriesCard(),
                  SizedBox(
                    width: 16,
                  ),
                  CategoriesCard(),
                  SizedBox(
                    width: 16,
                  ),
                  CategoriesCard(),
                  SizedBox(
                    width: 16,
                  ),
                  CategoriesCard(),
                  SizedBox(
                    width: 16,
                  ),
                  CategoriesCard(),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text(
                'Just Posted',
                style: blackFontStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            PostedCard(),
            SizedBox(
              height: 16,
            ),
            PostedCard(),
            SizedBox(
              height: 16,
            ),
            PostedCard(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
