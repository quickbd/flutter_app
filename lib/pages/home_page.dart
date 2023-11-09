import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app/const/all_color.dart';
import 'package:my_app/const/all_icon.dart';
import 'package:my_app/const/all_style.dart';
import 'package:my_app/const/all_text.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AllTexts.accountText, style: AllStyles.titleStyle,),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: Icon(Icons.arrow_back_ios, color: AllColors.darkColor),
      centerTitle: true,),
      body:  Container(

        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20.0,
                    child:AllIcons.homeIcon ,
                  ),
                  title: Text(AllTexts.homeTitleText),
                  subtitle: Text(AllTexts.homeSubtitleText),
                  trailing: AllIcons.arrowForwardIcon,

                ),
              ),
              SizedBox(height: 10.0,),
              Card(
                child: ListTile(
                  leading: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: AllColors.blueColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0))
                    ),
                    child: Icon(Icons.wallet, color: AllColors.whiteColor, size: 30.0,),
                   ),
                  title: Text(AllTexts.cashWalletText),
                  subtitle: Text('10.000 AED',  style: AllStyles.subtitleStyle  ),
                  trailing:  AllIcons.arrowForwardIcon,
                ),

              ),

              SizedBox(height: 20.0,),
              Card(

                child: Column(
                  children: [
                     ListTile(
                      leading: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            color: AllColors.blueColor,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0))
                        ),
                        child: Icon(Icons.shopping_cart_outlined, color: AllColors.whiteColor, size: 30.0,),
                      ),
                      title: Text(AllTexts.shopOrderText),
                      subtitle: Text(AllTexts.shopOrderSubtitleText),
                      trailing:  AllIcons.arrowForwardIcon,
                    ),
                    Divider(
                      color: Colors.tealAccent, //color of divider
                      height: 3, //height spacing of divider
                      thickness: 1,
                      indent: 25,
                      endIndent: 25,
                    ),
                    ListTile(
                      leading: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            color: AllColors.pinkColor,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0))
                        ),
                        child: Icon(Icons.alarm, color: AllColors.whiteColor, size: 30.0,),
                      ),
                      title: Text(AllTexts.myAddressText),
                      subtitle: Text(AllTexts.myAddressSubtitleText),
                      trailing: AllIcons.arrowForwardIcon,
                    ),
                    Divider(
                      color: Colors.tealAccent, //color of divider
                      height: 3, //height spacing of divider
                      thickness: 1,
                      indent: 25,
                      endIndent: 25,
                    ),
                    ListTile(
                      leading: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            color: AllColors.blueColor,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0))
                        ),
                        child: Icon(Icons.wallet, color: AllColors.whiteColor, size: 30.0,),
                      ),
                      title: Text(AllTexts.orderHistoryText),
                      subtitle: Text(AllTexts.shopOrderSubtitleText),
                      trailing:  AllIcons.arrowForwardIcon,
                    ),
                    Divider(
                      color: Colors.tealAccent, //color of divider
                      height: 3, //height spacing of divider
                      thickness: 1,
                      indent: 25,
                      endIndent: 25,
                    ),
                    ListTile(
                      leading: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            color: AllColors.pinkColor,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0))
                        ),
                        child: Icon(Icons.public, color: AllColors.whiteColor, size: 30.0,),
                      ),
                      title: Text(AllTexts.languageText),
                      subtitle: Text(AllTexts.languageSubtitleText),
                      trailing:  AllIcons.arrowForwardIcon,
                    ),



                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
