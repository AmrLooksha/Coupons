import 'package:flutter/material.dart';
import 'package:shop_app/Service/AllMarchent.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/models/AllMarchent.dart';
import 'package:shop_app/models/TopCouponModel.dart';
import 'package:shop_app/screens/Marchent/allMarchentWidget.dart';

class AllMarchentScreen extends StatefulWidget {
  static String routeName = "/allMarchent";

  @override
  State<AllMarchentScreen> createState() => _AllMarchentScreenState();
}

class _AllMarchentScreenState extends State<AllMarchentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: 'All-',
              style: TextStyle(color: Colors.black, fontSize: 22),
              children: [
                TextSpan(
                  text: 'Marchent',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ]),
        ),
      ),
      body: FutureBuilder<List<MarchentModel>>(
        future: AllMarchentService().getAllMarchent(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<MarchentModel> marchents = snapshot.data!;

            return ListView.builder(
                itemCount: marchents.length,
                itemBuilder: (BuildContext context, int index) {
                  return AllMarchentWidget(
                    marchentss: marchents[index],
                  );
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.allMarchent),
    );
  }
}
