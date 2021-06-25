import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/customer/customer.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';

class ImportCustomers extends StatefulWidget {
  @override
  _ImportCustomersState createState() => _ImportCustomersState();
}

class _ImportCustomersState extends State<ImportCustomers> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
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
                         Navigator.push(context, MaterialPageRoute(builder: (_)=> Customer()));
                      }
                    ),
                    Text(' Import Customers',style: k32Black,)
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
                        buttonText: 'Back to Customers', 
                        onPress: (){
                           Navigator.push(context, MaterialPageRoute(builder: (_)=> Customer()));
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top:24.0, left:48.0, right: 48.0,bottom: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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

          
  