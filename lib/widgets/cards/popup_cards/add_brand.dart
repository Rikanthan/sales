import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_maxlines.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';


class AddBrands extends StatefulWidget {
  const AddBrands({ 
    Key key,
    @required this.header,
    @required this.brand
   }) : super(key: key);
  final String header;
  final String brand;

  @override
  _AddBrandsState createState() => _AddBrandsState();
}

class _AddBrandsState extends State<AddBrands> {
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:510,
      height: 403,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(4))
              ),
            width: 450,
            height: 403,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.header,
                    style: TextStyle(
                      color: kAppBarColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Lato' 
                      )
                    ),
                    SizedBox( height:32),                   
                  Text(
                    'Brand name',
                  style: k15BlackDark
                  ),
                  TextInput(
                    darkMode: false,
                    validate:(value){},
                    onChange: (value){},
                    paddingTop: 5,
                    hideText: false,
                    height: 46,
                    width:386,
                    hintText: widget.brand,
                    ),
                    Padding(
                    padding: const EdgeInsets.only(top:20.0, bottom: 5),
                    child: Text('Description',
                    style: k15BlackDark
                    ),
                  ),
                  TextInputMaxLines(
                    darkMode: false,
                    validate:(value){},
                    onChange: (value){},
                    paddingTop: 0,
                    hideText: false,
                    height: 84,
                    width:386,
                    hintText: '',
                    maxLines: 4,
                    ), 
                  SizedBox( height:30),    
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        buttonText: 'Save Brand',
                        onPress: (){
                          Navigator.pop(context);
                        },
                        buttonColor: kSignInButtonColor, 
                        topPadding: 24, 
                        leftPadding: 30
                        ),              
                    ],
                  )
                ],
              ),
            ),
          ),
          EscButton(
            isDarkMode: false,
            positionedRight: 0.0,
            positionedTop: 0.0, 
            width: 60
            )
        ],
      ),
    ),
  );
  }
}