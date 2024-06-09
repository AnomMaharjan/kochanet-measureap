import 'package:flutter/material.dart';
import 'package:measureap/questionaire/presentation/widgets/questionnaire_text_widgets.dart';

class RecallQuestionPageview extends StatelessWidget {
  const RecallQuestionPageview({super.key});

  @override
  Widget build(BuildContext context) {
    const String description =
        'Proin ultrices fringilla et scelerisque sed duis massa nulla. Eget arcu urna ipsum in neque ornare. Integer placerat rhoncus purus est ut ultrices. Pharetra amet faucibus tincidunt mattis in enim. Duis pharetra integer adipiscing quisque elementum lacus porta. Sit diam aliquam quisque purus tortor.\n\nUt turpis consectetur massa libero. Habitant lobortis dictum pretium et tortor facilisi in enim porttitor. Purus porta pulvinar sit ultrices aliquam ultrices lacus quam. Gravida etiam facilisis enim purus ornare quis donec leo dignissim. Etiam at non aliquam quis.\n\nPellentesque pellentesque at amet vitae turpis hac in. Felis eu purus vel interdum accumsan lorem dictu.';
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          DescriptionTextWidget(description: "Recall question:"),
          SizedBox(
            height: 30,
          ),
          TitleTextWidget(title: "Read the sentences"),
          SizedBox(
            height: 30,
          ),
          DescriptionTextWidget(description: description),
        ],
      ),
    );
  }
}
