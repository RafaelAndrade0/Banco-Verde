import 'package:banco_verde/screens/home/widgets/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final controller = PageController(viewportFraction: 0.8);

    return Container(
      // height: size.height * .9,
      width: double.infinity,
      color: Colors.grey[100],
      child: Padding(
        padding: EdgeInsets.only(
          top: 25,
          left: 25,
          right: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(
              'Meus cartões',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: PageView(
                controller: controller,
                children: List.generate(
                  3,
                  (_) => Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://wwws.banesecard.com.br/Home/Content/images/home/bc.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: JumpingDotEffect(
                    activeDotColor: Colors.green[600],
                    // expansionFactor: 4,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Ultimas Transações',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Text(
                  'Ver tudo',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            TransactionItem(),
            TransactionItem(),
            TransactionItem(),
          ],
        ),
      ),
    );
  }
}
