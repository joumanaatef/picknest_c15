
import '../../../utils/app_assets.dart';

class OnBoardingData{
  String imgPath;
  String title;
  String description;
  String? primaryText;
  String? secondaryText;
  OnBoardingData({
    required this.imgPath,
    required this.title,
     this.description='',
    this.primaryText,
    this.secondaryText,
  });
  static List<OnBoardingData> onBoardingData=[
    OnBoardingData(
  imgPath: AppAssets.onBoardingImg1,
  title: 'Find Your Next Favorite Product Here',
 primaryText: 'Shop Now',
  description:'Discover a wide range of items that match every style, need, and budget. You’ll definitely find something you love.'
  ,),
    OnBoardingData(
      imgPath:AppAssets.onBoardingImg2,
        title: 'Discover Shopping',
       primaryText: 'Next',
        description:'Explore a vast collection of products across all categories and styles. Find your next favorite item with ease.'
        ,),
    OnBoardingData(
      imgPath: AppAssets.onBoardingImg3,
        title: 'Explore All Categories',
        primaryText: 'Next',
        secondaryText: 'back',
        description:'Discover products from every category, in all styles and price ranges. Find something new and exciting to shop for every day.'
        ,),
    OnBoardingData(
      imgPath: AppAssets.onBoardingImg4,
        title: 'Start Shopping Now',
       primaryText: 'finish',
        secondaryText: 'back',
        ),
  ];
}