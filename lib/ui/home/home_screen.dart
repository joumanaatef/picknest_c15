import 'package:flutter/material.dart';
import 'package:picknest/ui/home/tabs/explore/explore_tab.dart';
import 'package:picknest/ui/home/tabs/fav/fav_tab.dart';
import 'package:picknest/ui/home/tabs/home_tab/home_tab.dart';
import 'package:picknest/ui/home/tabs/profile/profile_tab.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List<Widget>tabs=[
    HomeTab(),ExploreTab(),FavTab(),ProfileTab()
  ];
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar:Padding(
        padding:EdgeInsets.symmetric(
            horizontal: width*0.04,
            vertical: height*0.01
        ),
        child: BottomNavigationBar(
            backgroundColor: AppColors.greenColor,
            type: BottomNavigationBarType.fixed,
            currentIndex:selectedIndex ,
            onTap: (index){
              selectedIndex=index;
              setState(() {

              });
            },
            items:[
              builtBottomNavigationBarItem(
                index:0,
                selectedIconName:AppAssets.iconHomeSelected,
                unSelectedIconName: AppAssets.iconHomeUnselected,

              ),
              builtBottomNavigationBarItem(
                index:1,
                selectedIconName:AppAssets.iconExploreSelected,
                unSelectedIconName: AppAssets.iconExploreUnselected,
              ),
              builtBottomNavigationBarItem(
                index:2,
                selectedIconName:AppAssets.iconFavSelected,
                unSelectedIconName: AppAssets.iconFavUnselected,
              ),
              builtBottomNavigationBarItem(
                index:3,
                selectedIconName:AppAssets.iconProfileSelected,
                unSelectedIconName: AppAssets.iconProfileUnselected,
              ),
            ]
        ),
      ),
      body: tabs[selectedIndex],
    );
  }
  BottomNavigationBarItem builtBottomNavigationBarItem({
    required String selectedIconName,
    required String unSelectedIconName,
    required int index}){
    return BottomNavigationBarItem(
      icon:Align(
          alignment: Alignment.center,
          child: Image.asset(selectedIndex==index?selectedIconName:unSelectedIconName,)),
      label: '',
    );
  }
}