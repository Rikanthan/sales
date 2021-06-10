import 'package:flutter/material.dart';
import 'package:popup_menu/popup_menu.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/pay_green_button.dart';
import 'package:sales/widgets/cards/icon_card.dart';
import 'package:sales/widgets/cards/popup_cards/park_sale.dart';
import 'package:sales/widgets/cards/popup_cards/product_item1_clicks.dart';
import 'package:sales/widgets/cards/popup_cards/product_item2_clicks.dart';
import 'package:sales/widgets/cards/popup_cards/product_item4_clicks.dart';
import 'package:sales/widgets/cards/popup_cards/retrieve_sale.dart';
import 'package:sales/widgets/cards/products_card.dart';
import 'package:sales/widgets/drawer/sell_drawer.dart';
import 'package:sales/widgets/listviews/product_items.dart';
import 'package:sales/widgets/searchbar/dashboard_search_bar.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
   GlobalKey btnKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    PopupMenu.context = context;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: SellDrawer(salesClicked: SalesClicked.sell,),
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
                              fontSize: 15,
                              fontWeight: FontWeight.w700
                              )
                            ),
                        ),
                        DashboardSearchBar(
                          iconData: Icons.search,
                          iconText: 'Start typing or scanning...',
                          width:472,
                          padding:20,
                          darkMode: true,
                        ),
                        Row(
                          children: [
                            ProductCard(
                              topColor: kProductButtonColor1,
                              product: 'Nala Dress',
                              onTapEventHandler: (){
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) => ProductsItem1Popup(),
                                );
                              },
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8,right: 8),
                                child: ProductCard(
                                topColor: kProductButtonColor2,
                                product: 'Audhild Tee',
                                onTapEventHandler: (){
                                  showDialog(
                                  context: context,
                                  builder: (BuildContext context) => ProductsItem2Popup(),
                                );
                                  },
                                ),
                              ),
                              ProductCard(
                              topColor: kProductButtonColor3,
                              product: '    My Girl\nSunglasses',
                              onTapEventHandler: (){},
                              ),
                               Padding(
                                padding: EdgeInsets.only(left: 8,right: 8),
                                child: ProductCard(
                                topColor: kProductButtonColor4,
                                product: '  LaBoheme\nMesh Strap\n      Watch',
                                onTapEventHandler: (){
                                  showDialog(
                                  context: context,
                                  builder: (BuildContext context) => ProductsItem4Popup(),
                                );
                                },
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
                              iconData: Icons.reply, 
                              iconText: 'Retrieve \n Sale',
                              width: 147.44,
                              onTapEventHandler: (){
                               showDialog(
                                  context: context,
                                  builder: (BuildContext context) => RetrieveSale(),
                                );
                              }
                              ),
                              IconCard(
                              iconData: Icons.restore, 
                              iconText: 'Park \n Sale',
                              width: 121.77,
                              onTapEventHandler: (){
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) => ParkSalePopup(),
                                );
                                }
                              ),
                              IconCard(
                              iconData: Icons.arrow_drop_down, 
                              iconText: 'More  \nActions...',
                              width: 154.8,
                              onTapEventHandler: (){}
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
                                padding: 0,
                                darkMode: true,
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