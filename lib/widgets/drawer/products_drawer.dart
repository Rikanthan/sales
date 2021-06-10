import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/pages/products/brands.dart';
import 'package:sales/pages/products/price_books.dart';
import 'package:sales/pages/products/product_types.dart';
import 'package:sales/pages/products/products.dart';
import 'package:sales/pages/products/promotions.dart';
import 'package:sales/pages/products/stock_control.dart';
import 'package:sales/pages/products/stock_counts.dart';
import 'package:sales/pages/products/suppliers.dart';
import 'package:sales/pages/products/tags.dart';
import 'package:sales/widgets/buttons/esc_button.dart';
import 'package:sales/widgets/cards/drawer_menu_item.dart';
import 'package:sales/widgets/drawer/main_drawer.dart';

enum ProductsClicked {
  products,
  stockControl,
  inventoryCounts,
  promotions,
  priceBooks,
  productTypes,
  suppliers,
  brands,
  productsTags
}
Color _clickColor(ProductsClicked productsClicked,ProductsClicked itemClick)
{
 Color clickedColor;
    productsClicked == itemClick  ? clickedColor =  kDashboardMidBarColor :
    clickedColor = kAppBarColor;
    return clickedColor;
}
class ProductDrawer extends StatelessWidget {
 ProductDrawer({
   @required this.productsClicked
 });
 final ProductsClicked productsClicked;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:300,
      color:Colors.transparent,
      child: Row(
        children: [
          MainDrawer(isDarkMode: false, mainDrawerClick: MainDrawerClick.products),
          Container(
            width:145,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerMenuItem(
                        buttonText: 'Products',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Products()));
                      }, 
                      textColor: _clickColor(productsClicked, ProductsClicked.products)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Stock Control',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> StockControl()));
                      }, 
                      textColor: _clickColor(productsClicked, ProductsClicked.stockControl)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Inventory Counts',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> StockCount()));
                      }, 
                      textColor: _clickColor(productsClicked, ProductsClicked.inventoryCounts)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Promotions',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Promotions()));
                      }, 
                      textColor: _clickColor(productsClicked, ProductsClicked.promotions)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Price Books',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> PriceBooks()));
                      }, 
                      textColor: _clickColor(productsClicked, ProductsClicked.priceBooks)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Product Types',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> PriceTypes()));
                      }, 
                      textColor: _clickColor(productsClicked, ProductsClicked.productTypes)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Suppliers',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Suppliers()));
                      }, 
                      textColor: _clickColor(productsClicked, ProductsClicked.suppliers)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Brands',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Brands()));
                      }, 
                      textColor: _clickColor(productsClicked, ProductsClicked.brands)
                      ),
                      DrawerMenuItem(
                        buttonText: 'Product Tags',
                      onPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Tags()));
                      }, 
                      textColor: _clickColor(productsClicked, ProductsClicked.productsTags)
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
         EscButton(
           isDarkMode: false, 
           positionedRight: 0.0,
           positionedTop: 10.0,
            width: 70
            )
        ],
      ),
    );
  }
}