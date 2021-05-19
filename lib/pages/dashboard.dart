import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';
import 'package:sales/widgets/buttons/pay_green_button.dart';
import 'package:sales/widgets/cards/icon_card.dart';
import 'package:sales/widgets/cards/product_details_card.dart';
import 'package:sales/widgets/cards/products_card.dart';
import 'package:sales/widgets/drawer/dashboard_drawer.dart';
import 'package:sales/widgets/listviews/product_items.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: DashboardDrawer(),
      body:Container(
        color:kDashboardColor,
        child: Column(
          children: [
            DashboardMidBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top:45,left:48,right: 16),
                  child: Container(
                    color: kDashboardColor,
                    width:472,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 4),
                          child: Text(
                            'Search for products',
                             style:TextStyle(
                              color: kHelpTextColor,
                              fontFamily: 'Lato',
                              fontSize: 15
                              )
                            ),
                        ),
                        DashboardSearchBar(
                          iconData: Icons.search,
                          iconText: 'Start typing or scanning...',
                          width:472,
                          padding:20,
                        ),
                        Row(
                          children: [
                            ProductCard(
                              topColor: kProductButtonColor1,
                              product: 'Nala Dress',
                              onTapEventHandler: (){},
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8,right: 8),
                                child: ProductCard(
                                topColor: kProductButtonColor2,
                                product: 'Audhild Tee',
                                onTapEventHandler: (){},
                                ),
                              ),
                              ProductCard(
                              topColor: kProductButtonColor3,
                              product: 'My Girl Sunglasses',
                              onTapEventHandler: (){},
                              ),
                               Padding(
                                padding: EdgeInsets.only(left: 8,right: 8),
                                child: ProductCard(
                                topColor: kProductButtonColor4,
                                product: 'LaBoheme Mesh Strap Watch',
                                onTapEventHandler: (){},
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:21,right:48),
                  child: Container(
                    color: kDashboardColor,
                    width:440,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconCard(
                              iconData: Icons.reply_all, 
                              iconText: 'Retrieve \n Sale', onTapEventHandler: (){}
                              ),
                              Padding(
                                padding:  EdgeInsets.only(left:40.0,right: 40.0),
                                child: IconCard(
                                iconData: Icons.refresh_outlined, 
                                iconText: 'Park \n Sale', onTapEventHandler: (){}
                                ),
                              ),
                              IconCard(
                              iconData: Icons.keyboard_arrow_down_rounded, 
                              iconText: 'More  \nActions...', onTapEventHandler: (){}
                              )
                          ],
                         ),
                         Container(
                           width: 438,
                           height:55,
                           decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: kDashboardSearchBarFillColor,
                              border: Border.all(
                                color: kAppBarColor,
                                width:1
                                )
                            ),
                            child: Padding(
                              padding:  EdgeInsets.all(4),
                              child: DashboardSearchBar(
                                iconData: Icons.person, 
                                iconText: 'Add a customer', 
                                width: 430, 
                                padding: 0
                                ),
                            )
                         ),
                         ProductItemsListView(),
                         Container(
                           width: 438,
                           height:92,
                           decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: kDashboardSearchBarFillColor,
                              border: Border.all(
                                color: kAppBarColor,
                                width:1
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15,bottom: 15,left:20,right: 20),
                              child: PayGreenButton(),
                            )
                         ),
                        ],
                      )
                    ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}