import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/products/products.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';

class ImportProducts extends StatefulWidget {
  @override
  _ImportProductsState createState() => _ImportProductsState();
}

class _ImportProductsState extends State<ImportProducts> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDashboardAppBarColor,
        title:DashboardAppBars(),
        toolbarHeight: 50.0,
      ),
      drawer: ProductDrawer(productsClicked: ProductsClicked.products),
      body:SingleChildScrollView(
        child: Container(
          color:kHomeBackgroundColor,
          child:Column(
            children: [
              DashboardMidBar(),
              Padding(
                padding: const EdgeInsets.only(top:24.0,bottom: 24.0),
                child: Row(
                  children: [
                    GestureDetector(
                      child: Icon(
                        Icons.arrow_back,
                        size: 24,
                        color: !isSwitch ? kInputBorderColor : kSignInButtonColor,
                        ), 
                      onTap: (){
                        setState(() {
                          isSwitch = false;
                        });
                         Navigator.push(context, MaterialPageRoute(builder: (_)=> Products()));
                      }
                    ),
                    Text(' Import Products',style: k32Black,)
                  ],
                ),
              ),
              Container(
                color: kInputBorderColor,
                height: 93,
                child: Padding(
                  padding: const EdgeInsets.only(left:48.0,right: 48.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Create a spreadsheet file. We\'ll check your data for common errors before uploading it. ',
                      style: kMediumTextNormalStyle,),
                      GestureDetector(
                        child: Text(
                          'Need help?',
                          style: k15BlackUnderline,
                          )
                        ),
                        Spacer(),
                      CustomButton(
                        buttonText: 'Back to Products', 
                        onPress: (){
                           Navigator.push(context, MaterialPageRoute(builder: (_)=> Products()));
                        },
                        buttonColor: kDashboardMidBarColor, 
                        topPadding: 20, 
                        leftPadding: 30
                        ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top:24.0, left:48.0, right: 48.0,bottom: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.white,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                          'assets/images/import-spc-bulk-v1.png',
                                                width: 230,
                                                height: 144,
                                                ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.all(24.0),
                                   child: Text(
                                    'Add multiple barcodes to every product all-at-once.',
                                     style: TextStyle(
                                       color: kAppBarColor,
                                       fontSize: 24,
                                       fontFamily: 'Lato',
                                       fontWeight: FontWeight.w700
                                       ),
                                     ),
                                 ),
                                 Text(
                                    'Record multiple SKU codes like UPC, ISBN or custom SKU codes on each product, so you can scan\nthese barcodes anywhere in Vend. For more information on how to import multiple product SKU',
                                    style:TextStyle(
                                      fontSize: 15,
                                      color: kAppBarColor,
                                      fontFamily: 'Lato',
                                      height: 1.5
                                    ),
                                    ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('codes in bulk, check out our ',style: kMediumTextNormalStyle,),
                                      GestureDetector(
                                        onTap: (){},
                                        child: Text(
                                          'Help Centre guide ',style: k15Blue,
                                          )
                                        ),
                                            Icon(
                                              Icons.exit_to_app,
                                              size: 15,
                                              color: kFilterTextColor,
                                              )
                                            ],
                                          )      
                                      ],
                                    ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 48.0,
                          ),
                           Icon(
                              Icons.cloud_upload,
                              size: 28,
                              color: kSignInButtonColor,
                              ),
                            SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Upload a spreadsheet to import products.',
                            style: TextStyle(
                                  color: kAppBarColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Lato' 
                                  ),
                               ),
                             Padding(
                               padding: const EdgeInsets.only(top:8.0,bottom:40.0 ),
                               child: Text(
                                'Drag and drop a file (CSV ,XLSX or XLS) anywhere, or browser your files',
                                  style: TextStyle(
                                        color: kAppBarColor,
                                        fontSize: 18,
                                        fontFamily: 'Lato' 
                                        ),
                                  ),
                             ),
                           CustomButton(
                              buttonText: 'Choose a File to Upload...', 
                              onPress: (){},
                              buttonColor: kSignInButtonColor, 
                              topPadding: 20, 
                              leftPadding: 30
                              ),                 
                        ],
                      ),
                  )
                ],
              )       
            ]
          )
        )
      )
    );
  }
}

          
  