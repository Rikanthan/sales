import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/esc_button.dart';


class AddCommon extends StatefulWidget {
  const AddCommon({ 
    Key key,
    @required this.header,
    @required this.item,
    @required this.subHeader
   }) : super(key: key);
  final String header;
  final String subHeader;
  final String item;

  @override
  _AddCommonState createState() => _AddCommonState();
}

class _AddCommonState extends State<AddCommon> {
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
    content: Container(
      width:510,
      height: 275,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: kWhite,
                borderRadius: BorderRadius.all(Radius.circular(4))
              ),
            width: 450,
            height: 275,
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
                    '${widget.subHeader} name',
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
                    hintText: widget.item,
                    ), 
                  SizedBox( height:30),    
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomButton(
                        buttonText: 'Save ${widget.subHeader}',
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