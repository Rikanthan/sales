import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/appbar/dashboard_appbar.dart';
import 'package:sales/widgets/bars/midbar.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/cards/custom_cards/general_edit_product.dart';
import 'package:sales/widgets/cards/custom_cards/inventory_edit_product.dart';
import 'package:sales/widgets/cards/custom_cards/price_edit_product.dart';
import 'package:sales/widgets/cards/custom_cards/tax_edit_product.dart';
import 'package:sales/widgets/cards/custom_cards/varient_edit_product.dart';
import 'package:sales/widgets/cards/popup_cards/add_product.dart';
import 'package:sales/widgets/drawer/products_drawer.dart';

class EditProduct extends StatefulWidget {
  @override
  _PromotionsState createState() => _PromotionsState();
}

class _PromotionsState extends State<EditProduct> {
  String productType = 'Fashion';
  bool isSwitch = true;
  bool isClicked = false;
  String brand = 'Nude Lacy';
  String supplier = 'Flo & Frankie';
  bool _isSelected = true;
  String tax = 'Default Tax for this Outlet';
  String size = 'Size';
  String color = 'Colour';
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
                        color: kInputBorderColor,
                        ), 
                      onTap: (){
                      }
                    ),
                    Text('Edit Product',style: k32Black,)
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
                      Text('Add, view and edit your products all in one place.',style: kMediumTextNormalStyle,),
                      GestureDetector(
                        child: Text(
                          'Need help?',
                          style: k15BlackUnderline,
                          )
                        ),
                        Spacer(),
                      CustomButton(
                        buttonText: 'Cancel', 
                        onPress: (){},
                        buttonColor: kDashboardMidBarColor, 
                        topPadding: 20, 
                        leftPadding: 30
                        ),
                      SizedBox(
                        width: 16,
                        ),
                      CustomButton(
                        buttonText: 'Save', 
                        onPress: (){
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AddProductPopup(),
                            );
                        },
                        buttonColor: kSignInButtonColor, 
                        topPadding: 20, 
                        leftPadding: 30
                        ),
                      
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 64,
              ),
              GeneralEditProduct(
                onToggle: (value)
                              {
                                setState(() {
                                  isSwitch = value;
                                });
                              },
                isToggle: isSwitch,
                brand: brand, 
                brandOnClick: (String newValue) 
                                          {
                                            setState(() {
                                            brand = newValue;
                                            }
                                          );
                                        },
                productType: productType,
                productTypeOnClick: (String newValue) 
                                                  {
                                                    setState(() {
                                                    productType = newValue;
                                                    }
                                                  );
                                                },
              ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0,top: 44,bottom: 44),
                child: Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              InventoryEditProduct(
                isClicked: _isSelected, 
                supplierClicked: (String newValue) 
                                                  {
                                                    setState(() {
                                                    supplier = newValue;
                                                    }
                                                  );
                                                },
                supplier: supplier,
                checkBoxClicked: (newValue){
                           setState(() {
                             _isSelected = newValue;
                           });
                         }
                ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0,top: 44,bottom: 44),
                child: Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              TaxEditProduct(
                tax: tax, 
                taxOnClicked:  (String newValue) 
                                                  {
                                                    setState(() {
                                                    tax = newValue;
                                                    }
                                                  );
                                                }
                ),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0,bottom: 44,top:64),
                child: Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              PriceEditProduct(),
              Padding(
                padding: const EdgeInsets.only(left:48.0,right: 48.0,bottom: 44,top:64),
                child: Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              VariantsEditProduct(
                color: color,
                colorClicked:  (String newValue) 
                                        {
                                          setState(() {
                                          color = newValue;
                                          }
                                        );
                                      }, 
                size: size, 
                sizeOnClicked:  (String newValue) 
                                        {
                                          setState(() {
                                          size = newValue;
                                          }
                                        );
                                      },
                )
            ],
          )
        ),
      )
    );
  }
}