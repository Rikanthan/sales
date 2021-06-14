import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/sell/settings.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/dark_button_bar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/drawer/sell_drawer.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';


class NewLayout extends StatefulWidget {
  @override
  _SellCardState createState() => _SellCardState();
}

class _SellCardState extends State<NewLayout> {
  bool _isSelected = false;
  bool _isGoToBack = false;
  int x = 0;
  int y = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SellDrawer(salesClicked: SalesClicked.sell,),
      body:SingleChildScrollView(
        child: Container(
          color:kDashboardColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardMidBar(),
              Padding(
                padding: const EdgeInsets.only(top: 24.0,bottom: 24.0,right: 48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 28,
                        color: _isGoToBack ? kSignInButtonColor : Color(0xFF637078)
                      ),
                      onPressed: (){
                        setState(() {
                          _isGoToBack = true;
                        });
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> SellSettings() ));
                        }
                      ),
                    Padding(
                      padding: EdgeInsets.only(left:10,bottom: 4),
                      child: Text(
                        'Add Quick Key Layout',
                          style: kLargeHeaderStyle
                        ),
                      ),
                    ],
                  ),
              ),
              DarkMidButtonBar(
                customButtonText: '',
                customButtonOnTap: (){},
                customButtonColor: Colors.transparent,
                text: 'Rename, reposition and recolor keys, or organize your products into folders.', 
                greenButtonText: 'Save', 
                greenOnTap: (){}
                ),
              Padding(
                padding: EdgeInsets.only(top:24,right: 48,left: 48, bottom: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: kDashboardColor,
                      child:Column(
                        children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 232,
                                  child: Text(
                                    'General',style: k18White,
                                    )
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Layout Name',
                                        style: kMediumTextDarkStyle,
                                        ),
                                       TextInput(
                                          darkMode: true,
                                          hideText: false,
                                          hintText:'Quick Key Layout name',
                                          paddingTop: 5,
                                          height: 46,
                                          width: 400,
                                          validate: (String val) => val.isEmpty? 'This field is required' : null,
                                            onChange: (val) {
                                            },
                                          ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                        'Quick Key Behavior',
                                        style: kMediumTextDarkStyle,
                                        ),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(right: 12.0),
                                                child: Checkbox(
                                                  activeColor: MaterialStateColor.resolveWith((states) => _isSelected ? Colors.white : kAppBarColor),
                                                  hoverColor: MaterialStateColor.resolveWith((states) => _isSelected ? kSignInButtonColor : kAppBarColor),
                                                  overlayColor: MaterialStateColor.resolveWith((states) => _isSelected ? kSignInButtonColor : kAppBarColor),
                                                  fillColor: MaterialStateColor.resolveWith((states) => _isSelected ? kSignInButtonColor : kDashboardSearchBarFillColor),
                                                  value: _isSelected,
                                                  onChanged: (newValue){
                                                    setState(() {
                                                      _isSelected = newValue;
                                                    });
                                                  },
                                                  autofocus: false,
                                                  visualDensity: VisualDensity.standard,
                                                ),
                                              ),
                                              Text('Leave selected folder open until end of the sale',style:k15White)
                                          ],
                                        )
                                    ],
                                  )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:20.0,bottom: 20.0),
                              child: Divider(
                                color: kTableBorderColor,
                                thickness: 1,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Add Products',
                                        style: kMediumTextDarkStyle,
                                        ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width:232,
                                          child: Text(
                                            'Search for products to add to\nyour Quick Key layout. Drag\nand drop to rearrange.',
                                            style: k15White,
                                            ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Search for products',style: kMediumTextDarkStyle,),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            DashboardSearchBar(
                                                        iconData: Icons.search,
                                                        iconText: 'Start typing or scanning...',
                                                        width:600,
                                                        padding:5,
                                                        darkMode: true,
                                                      ),
                                            SizedBox(
                                              height: 25,
                                            ),
                                            for(int j = 0; j<5 ;j++)
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                for(int i = 0 ; i < 5 ; i++)
                                                  Padding(
                                                  padding: const EdgeInsets.only(bottom:8.0,right:8),
                                                  child: DottedBorder(
                                                      borderType: BorderType.RRect,
                                                      radius: Radius.circular(4),
                                                      strokeWidth: 2,
                                                      color: x == j && y == i ? kFilterTextColor : kAppBarColor,
                                                      child: InkWell(
                                                              onTap: (){
                                                                setState(() {
                                                                  x = j;
                                                                  y = i;
                                                                });
                                                              },                    
                                                        child: Container(
                                                          width: 108.797,
                                                          height: 86,
                                                          color: Colors.transparent,
                                                        ),
                                                      ),
                                                    ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                       )
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}

