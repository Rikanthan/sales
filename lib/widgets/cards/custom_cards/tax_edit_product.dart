import 'package:flutter/material.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/drop_down_text_input.dart';

class TaxEditProduct extends StatelessWidget {
  const TaxEditProduct({
    @required this.tax,
    @required this.taxOnClicked
  });
  final String tax;
  final Function taxOnClicked;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
              Padding(
                padding: const EdgeInsets.only(left:48.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 232,
                      child: Text(
                        'Tax',
                        style: k18Black,
                        )
                      ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 237,
                          height: 51.5,
                          child: Padding(
                            padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
                            child: Text('Outlet',style:k15BlackDark),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 237,
                          child: Padding(
                            padding: const EdgeInsets.only(top:16.0,bottom: 16.0),
                            child: Text('Tax',style:k15BlackDark),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:280.0,right: 48.0,bottom: 20),
                child: Divider(
                  color: Colors.black.withOpacity(0.3),
                  thickness: 1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 280,right:88),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Main Outlet',style: kMediumTextNormalStyle,),
                    DropDownInput(
                                  isDarkMode: false,
                                  width: 418.92,
                                  height: 46,
                                  paddingAll: 12,
                                  onPressed: taxOnClicked,
                                  dropdownValue: tax,
                                  dropdownList: ['Default Tax for this Outlet','No Tax (0%)'],
                                ),
                       ],
                  ),
              ),
      ],      
    );
  }
}