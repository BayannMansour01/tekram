import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/core/utils/size_config.dart';
import 'package:tekram/features/product_page/presentation/manager/cubit/product_cubit.dart';
import 'package:tekram/features/product_page/presentation/screens/product_page_body.dart';
import 'package:tekram/features/product_page/presentation/screens/widgets/build_row.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildTabItem('المواصفات', 1),
                buildTabItem('الوصف', 0),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            buildDescriptionContent(),
            SizedBox(
              height: 20,
            ),
            buildSpecificationsContent(),
          ],
        ),
      ),
    );
  }
}

Widget buildSpecificationsContent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "المواصفات",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
        textAlign: TextAlign.right,
      ),
      SizedBox(height: 10),
      BuildRow(
        color: Color(0xffF6F6F6),
        text1: "المادة",
        text2: "polyster",
      ),
      BuildRow(
        color: Colors.white,
        text1: "فتحة الرقبة",
        text2: "polyster",
      ),
      BuildRow(
        color: Color(0xffF6F6F6),
        text1: "اسم المادة",
        text2: "polyster",
      ),
      BuildRow(
        color: Colors.white,
        text1: "نوع  المادة",
        text2: "polyster",
      ),
      BuildRow(
        color: Color(0xffF6F6F6),
        text1: "رقم الموديل",
        text2: "bkk1234",
      )
    ],
  );
}

Widget buildDescriptionContent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "المميزات الأساسية",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
        textAlign: TextAlign.right,
      ),
      SizedBox(height: 10),
      buildBulletPoint("قم بإضافة ستايل لا يضاهى في خزانتك"),
      buildBulletPoint("صُممت لأصحاب الذوق الرفيع بحس حضاري غير قابل للرفض"),
      buildBulletPoint("صُممت لأصحاب الذوق الرفيع بحس حضاري غير قابل للرفض"),
      SizedBox(height: 20),
      Text(
        "نظرة عامة",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        textAlign: TextAlign.right,
      ),
      SizedBox(height: 10),
      Text(
        "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequaturQuis autem vel eum Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequaturQuis autem vel eum",
        style: TextStyle(fontSize: 14, height: 1.5),
        textAlign: TextAlign.right,
      ),
    ],
  );
}

Widget buildBulletPoint(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    // mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: CircleAvatar(backgroundColor: Colors.black, radius: 8),
      ),
      Expanded(
        child: Text(
          text,
          style:
              TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),
          textAlign: TextAlign.right,
        ),
      ),
    ],
  );
}

Widget buildTabItem(String title, int index) {
  return BlocConsumer<ProductCubit, ProductState>(
    listener: (context, state) {
      // TODO: implement listener
    },
    builder: (context, state) {
      ProductCubit cubit = BlocProvider.of<ProductCubit>(context);
      bool isSelected = cubit.selectedtab == index;
      return GestureDetector(
        onTap: () {
          cubit.selectTab(index);
        },
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: isSelected ? AppConstants.blueColor : Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),
            isSelected
                ? Container(
                    height: 3,
                    width: (SizeConfig.screenWidth / 2) - 16,
                    color: AppConstants.blueColor,
                  )
                : Container(
                    height: 3,
                    width: (SizeConfig.screenWidth / 2) - 16,
                    color: AppConstants.white600,
                  ),
          ],
        ),
      );
    },
  );
}
