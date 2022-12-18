import 'package:flutter/material.dart';

String baconText =
    'Bacon ipsum dolor amet jowl venison filet mignon sirloin capicola kevin strip steak landjaeger spare ribs chislic swine kielbasa. Tail beef ribs jerky, sirloin alcatra chicken short loin andouille. Beef ribs picanha cow porchetta, t-bone cupim bresaola beef pork loin frankfurter burgdoggen pancetta. Landjaeger sirloin drumstick shoulder shank bacon fatback. Sirloin capicola spare ribs brisket shoulder frankfurter buffalo swine kielbasa jerky ground round porchetta ribeye chicken. Shoulder jowl kevin pastrami pork chop, sausage boudin capicola. Swine ham hock flank, drumstick pastrami short ribs picanha landjaeger pork loin chislic ribeye beef frankfurter tenderloin. Flank turkey beef burgdoggen jowl sausage kielbasa filet mignon bacon. Cow ribeye burgdoggen flank porchetta, hamburger tenderloin brisket spare ribs landjaeger venison biltong filet mignon. Capicola tongue ribeye venison, tenderloin ham frankfurter sausage tri-tip brisket beef pork chop hamburger chuck burgdoggen. Cupim kevin corned beef rump.Buffalo pig shankle brisket short loin, swine strip steak fatback t-bone short ribs pork belly ham hock venison. Filet mignon burgdoggen beef strip steak. Porchetta ham hock t-bone shank pork chop, brisket kielbasa tri-tip fatback tenderloin meatball capicola swine boudin turkey. Filet mignon pork belly ribeye bacon, meatball tongue pork loin andouille drumstick jowl kevin. Fatback brisket jerky meatloaf biltong. Spare ribs buffalo pancetta short ribs turducken ribeye, porchetta picanha short loin.';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage(
      {super.key, required this.title, required this.imagepath});

  final String title;
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Image.asset(imagepath),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              baconText,
              style: const TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.justify,
            )
          ]),
        ),
      ),
    );
  }
}
