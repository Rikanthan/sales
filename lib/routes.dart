import 'package:flutter/material.dart';
import 'package:sales/pages/customer/customer.dart';
import 'package:sales/pages/customer/groups.dart';
import 'package:sales/pages/home.dart';
import 'package:sales/pages/products/brands.dart';
import 'package:sales/pages/products/price_books.dart';
import 'package:sales/pages/products/product_types.dart';
import 'package:sales/pages/products/products.dart';
import 'package:sales/pages/products/stock_control.dart';
import 'package:sales/pages/products/stock_counts.dart';
import 'package:sales/pages/products/suppliers.dart';
import 'package:sales/pages/reports/Tax_report.dart';
import 'package:sales/pages/reports/enable_gift_cards.dart';
import 'package:sales/pages/reports/gift_card_report.dart';
import 'package:sales/pages/reports/inventory_report.dart';
import 'package:sales/pages/reports/online_gift_card.dart';
import 'package:sales/pages/reports/payments_report.dart';
import 'package:sales/pages/reports/register_closures.dart';
import 'package:sales/pages/reports/retail_dashboard.dart';
import 'package:sales/pages/reports/sales_report.dart';
import 'package:sales/pages/reports/store_credit_report.dart';
import 'package:sales/pages/sell/cash_management.dart';
import 'package:sales/pages/sell/close_register.dart';
import 'package:sales/pages/sell/dashboard.dart';
import 'package:sales/pages/sell/fulfillments.dart';
import 'package:sales/pages/sell/sales_history.dart';
import 'package:sales/pages/sell/settings.dart';
import 'package:sales/pages/sell/status.dart';
import 'package:sales/pages/sign_in.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    switch (settings.name) {
      case '/Home':
        return MaterialPageRoute(
            builder: (_) =>Home());
      case '/Dashboard':
        return MaterialPageRoute(builder: (_) => Dashboard());
      case '/CashManagement':
        return MaterialPageRoute(builder: (_) => CashManagement());
      case '/CloseRegister':
        return MaterialPageRoute(builder: (_) => CloseRegister());
      case '/Fulfillments':
        return MaterialPageRoute(builder: (_) => Fullfillments());
      case '/SalesHistory':
        return MaterialPageRoute(builder: (_) => SalesHistory());
      case '/SalesSettings':
        return MaterialPageRoute(builder: (_) => SellSettings());
      case '/SalesStatus':
        return MaterialPageRoute(builder: (_) => SellStatus());
      case '/GiftCards':
        return MaterialPageRoute(builder: (_) => GiftCardReport());
      case '/EnableGiftCards':
        return MaterialPageRoute(builder: (_) => EnableGiftCard());
      case '/InventoryReport':
        return MaterialPageRoute(builder: (_) => InventoryReport());
      case '/OnlineGiftCards':
        return MaterialPageRoute(builder: (_) => OnlineGiftCard());
      case '/PaymentsReport':
        return MaterialPageRoute(builder: (_) => PaymentsReport());
      case '/RegisterClosure':
        return MaterialPageRoute(builder: (_) => RegisterClosure());
      case '/RetailDashboard':
        return MaterialPageRoute(builder: (_) => RetailDashboard());
      case '/SalesReport':
        return MaterialPageRoute(builder: (_) => SalesReport());
      case '/StoreCreditReport':
        return MaterialPageRoute(builder: (_) => StoreCreditReport());
      case '/TaxReport':
        return MaterialPageRoute(builder: (_) => TaxReport());
      case '/Brands':
        return MaterialPageRoute(builder: (_) => Brands());
      case '/PriceBooks':
        return MaterialPageRoute(builder: (_) => PriceBooks());
      case '/PriceTypes':
        return MaterialPageRoute(builder: (_) => PriceTypes());
      case '/Products':
        return MaterialPageRoute(builder: (_) => Products());
      case '/Promotion':
        return MaterialPageRoute(builder: (_) => InventoryReport());
      case '/StockControl':
        return MaterialPageRoute(builder: (_) => StockControl());
      case '/StockCount':
        return MaterialPageRoute(builder: (_) => StockCount());
      case '/Suppliers':
        return MaterialPageRoute(builder: (_) => Suppliers());
      case '/Tags':
        return MaterialPageRoute(builder: (_) => InventoryReport());
      case '/Customer':
        return MaterialPageRoute(builder: (_) => Customer());
      case '/Groups':
        return MaterialPageRoute(builder: (_) => CustomerGroups());
       case '/SignIn':
        return MaterialPageRoute(builder: (_) => SignIn());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
