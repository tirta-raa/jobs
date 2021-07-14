part of 'widgets.dart';

class JobsCard extends StatelessWidget {
  Jobs jobs;
  JobsCard(this.jobs);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          jobs.imageUrl,
          width: 45,
        ),
        SizedBox(
          width: 26,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                jobs.jobDesk,
                style: blackFontStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                jobs.company,
                style: greyFontStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Divider(
                thickness: 1,
                color: greyColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
