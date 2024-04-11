import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 200,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: ShapeDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/img.png',), fit: BoxFit.fill),
            color: const Color(0xff4db7f2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'My Card',
                  style: AppStyles.styleRegular16(context).copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Syah Bandi',
                  style: AppStyles.styleMedium20(context),
                ),
                trailing: const Icon(Icons.photo_camera_back_outlined),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0918 8124 0042 8129',
                      style: AppStyles.styleSemiBold24(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '12/20 - 124',
                      style: AppStyles.styleRegular16(context).copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Flexible(child: SizedBox(height: 10,)),
            ],
          ),
        ),
      ),
    );
  }
}
