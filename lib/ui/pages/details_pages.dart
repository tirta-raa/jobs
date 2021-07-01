part of 'pages.dart';

class DetailsPages extends StatefulWidget {
  @override
  State<DetailsPages> createState() => _DetailsPagesState();
}

class _DetailsPagesState extends State<DetailsPages> {
  bool isAplied = false;

  @override
  Widget build(BuildContext context) {
    Widget applyButton() {
      return Padding(
        padding: EdgeInsets.only(top: 51, bottom: 20),
        child: Column(
          children: <Widget>[
            Container(
              width: 200,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    isAplied = !isAplied;
                  });
                },
                child: Text(
                  'Apply For Job',
                  style: whiteFontStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget cancelButton() {
      return Padding(
        padding: EdgeInsets.only(top: 51, bottom: 20),
        child: Column(
          children: <Widget>[
            Container(
              width: 200,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xffFD4F56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    isAplied = !isAplied;
                  });
                },
                child: Text(
                  'Cancel Apply',
                  style: whiteFontStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget sucsessApliedMesseg() {
      return Container(
        padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Text(
          'You have applied this job and the \nrecruiter will contact you',
          style: blackFontStyle.copyWith(
            fontSize: 14,
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  isAplied ? sucsessApliedMesseg() : SizedBox(),
                  Image.asset(
                    'assets/icon_google.png',
                    width: 59,
                    height: 60,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Front-End Developer',
                    style: blackFontStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Google, Inc • Jakarta',
                    style: greyFontStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      'About the Job',
                      style: blackFontStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailsText(
                    text: 'Full Time On Site',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailsText(
                    text: 'Start At 18.000 per month',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text(
                      'Qualifications',
                      style: blackFontStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailsText(
                    text:
                        'Candidate must possess at least a  \nBachelor degree',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailsText(
                    text:
                        'Able to use Microsoft Office and Google \nbased service.',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailsText(
                    text:
                        'Have an excellent time management,\ngood at organized and details',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text(
                      'Qualifications',
                      style: blackFontStyle.copyWith(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailsText(
                    text:
                        'Initiate and promote any programs, events, \ntraining, or activities.',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailsText(
                    text:
                        'Assessing and anticipating needs and \ncollaborate with Division.',
                  ),
                ],
              ),
            ),
            isAplied ? cancelButton() : applyButton(),
            Padding(
              padding: EdgeInsets.only(bottom: 34),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Message Recruiter',
                  style: greyFontStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
