import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:weight_track/screens/detail_screen/components/weight_operations.dart';
import 'package:weight_track/size_config/size_config.dart';
import 'package:weight_track/widget/custom_view_navigation_bar.dart';
// import 'package:weight_tracker/provider/base_view.dart';
// import 'package:weight_tracker/src/screens/details_screen/details_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home-screen';
  final ThemeMode? themeMode;
  final ValueChanged<ThemeMode>? onThemeModeChanged;
  final FlexSchemeData? flexSchemeData;
  const HomeScreen(
      {Key? key, this.onThemeModeChanged, this.themeMode, this.flexSchemeData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // return BaseView<HomeScreenViewModel>(
    // onModelReady: (model) => {},
    // builder: (context, model, child) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('WeightTracker')),
      ),
      body: PageView(children: [
        // SingleChildScrollView(
        //   child: Body(
        //     model: model,
        //   ),
        // ),
        // DetailsScreen(),
        // UserProfile(
        //   onThemeModeChanged: onThemeModeChanged,
        //   flexSchemeData: flexSchemeData,
        //   themeMode: themeMode,
        // ),
      ]),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          WeightOperations.addWeight(
            context,
          );
        },
        child: Text(
          'Add Weight ',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: StadiumBorder(),
          padding: EdgeInsets.all(10),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
    // });
  }
}
