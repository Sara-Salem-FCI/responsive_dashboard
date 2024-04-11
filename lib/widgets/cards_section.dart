import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/cards_page_view.dart';
import 'package:responsive_dashboard/widgets/dots_indicator.dart';

class CardsSection extends StatefulWidget {
  const CardsSection({super.key});

  @override
  State<CardsSection> createState() => _CardsSectionState();
}

class _CardsSectionState extends State<CardsSection> {

  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.toInt();
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            'My Cards',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        CardsPageView(pageController: pageController,),
        DotsIndicator(currentPage: currentPage,),
      ],
    );
  }
}
