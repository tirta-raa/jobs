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
                  CategoriesCard(
                    Categories(
                        id: 1,
                        imageUrl: 'assets/image_category1.png',
                        text: 'Web Developer'),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CategoriesCard(
                    Categories(
                        id: 2,
                        imageUrl: 'assets/image_category2.png',
                        text: 'Web Developer'),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CategoriesCard(
                    Categories(
                        id: 3,
                        imageUrl: 'assets/image_category3.png',
                        text: 'Web Developer'),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CategoriesCard(
                    Categories(
                        id: 4,
                        imageUrl: 'assets/image_category4.png',
                        text: 'Web Developer'),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CategoriesCard(
                    Categories(
                        id: 5,
                        imageUrl: 'assets/image_category5.png',
                        text: 'Web Developer'),
                  ),
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
            JobsCard(
              Jobs(
                id: 1,
                jobDesk: 'Front-End Developer',
                company: 'Google',
                imageUrl: 'assets/icon_google.png',
              ),
            ),
            SizedBox(
              height: 16,
            ),
            JobsCard(
              Jobs(
                id: 2,
                jobDesk: 'UI Designer',
                company: 'Instagram',
                imageUrl: 'assets/icon_instagram.png',
              ),
            ),
            SizedBox(
              height: 16,
            ),
            JobsCard(
              Jobs(
                id: 3,
                jobDesk: 'Data Scientist',
                company: 'Facebook',
                imageUrl: 'assets/icon_Facebook.png',
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
