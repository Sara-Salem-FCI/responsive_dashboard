import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
static const items = [
  ItemDetailsModel(
    title: 'Design service ',
    value: '40%',
    color: Color(0xff208CC8),
  ),
  ItemDetailsModel(
    title: 'Design product',
    value: '25%',
    color: Color(0xff4EB7F2),
  ),
  ItemDetailsModel(
    title: 'Product royalti ',
    value: '20%',
    color: Color(0xff064061),
  ),
  ItemDetailsModel(
    title: 'Other               ',
    value: '22%',
    color: Color(0xffE2DECD),
  ),
];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
  }
}

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width>=1200? FittedBox(
      fit: BoxFit.scaleDown,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: ShapeDecoration(
                shape: const OvalBorder(),
                color: itemDetailsModel.color,
              ),
            ),
            const SizedBox(width: 5,),
            Text(
              itemDetailsModel.title,
              style: AppStyles.styleRegular16(context),
            ),
            //const Spacer(),
            const SizedBox(width: 30,),
            Text(
              itemDetailsModel.value,
              style: AppStyles.styleMedium16(context),
            ),
          ],
        ),
      ),
    ) : ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: itemDetailsModel.color,
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );

  }
}
