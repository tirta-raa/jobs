part of 'pages.dart';

class CategoriesPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: <Widget>[
            Container(
              child: BannerCard(),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 30,
                left: 24,
              ),
              child: Text(
                'New Startup',
                style: blackFontStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24,
              ),
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPages(),
                            ),
                          );
                        },
                        child: JobsCard(
                          Jobs(
                            id: 1,
                            jobDesk: 'Front-End Developer',
                            company: 'Google',
                            imageUrl: 'assets/icon_google.png',
                          ),
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
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 30,
                left: 24,
              ),
              child: Text(
                'Big Companies',
                style: blackFontStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24,
              ),
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
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
                    ],
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
