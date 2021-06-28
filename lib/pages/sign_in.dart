import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/pages/sell/dashboard.dart';
import 'package:sales/widgets/TextInput/text_input.dart';
import 'package:sales/widgets/appbar/appbar.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: AppBars(),
        toolbarHeight: 50.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration:BoxDecoration(
        image: DecorationImage(
          image:AssetImage('images/background.png'),
          fit:BoxFit.cover
          )
        ),
      child: Center(
        child: Container(
          height: 425,
          width:596,
          decoration: BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(4.0)),
           color:kWhite,
           shape: BoxShape.rectangle
         ),
         child: Padding(
           padding: const EdgeInsets.all(32.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: EdgeInsets.only(bottom: 20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                      Image.asset(
                       'assets/images/vend-by-lightspeed-logo-v1.png',
                         height:74.0,
                         width: 74,
                         ),
                        SizedBox(
                          width: 16,
                        ),
                       Text(
                         'Sign In',
                         style:TextStyle(
                           color:kSignInTextColor,
                           fontSize: 24,
                           fontFamily: 'Lato',
                           fontWeight: FontWeight.w700,            
                           fontStyle:
                               FontStyle.normal
                         )
                       ),
                   ],
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(bottom: 25),
                 child:Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(
                         'HAPPYSTORE',         
                         style:TextStyle(
                           color:kSignInTextColor,
                           fontSize: 15,
                           fontWeight: FontWeight.w900,
                           fontFamily: 'Roboto',   
                           letterSpacing: 2.3,         
                           fontStyle:
                               FontStyle.normal
                         )
                       ),
                       Text(
                         'Not your store?',
                         style:TextStyle(
                           color:kSignInTextColor,
                           fontSize: 15,
                           fontWeight: FontWeight.normal,         
                           fontStyle:
                               FontStyle.normal,
                           decoration:
                               TextDecoration.underline
                         )
                       ),
                   ],
                 )
               ),
               Text(
                 'Username',
                  style:k15BlackDark
                 ),
               TextInputField(
                 action: TextInputAction.next,
                 hideText: false,
                 hintText:'Enter your username',
                 paddingTop: 4,
                 height: 46,
                 width: 532,
                 validate: (val) => val.length < 6 ? 'Please enter a username' : null,
                   onChange: (val) {
                   },
                 ),
                 Padding(
                 padding: const EdgeInsets.only(top:20.0),
                 child: Text(
                   'Password',
                    style:k15BlackDark
                        )
                   ),
               TextInputField(
                 action: TextInputAction.go,
                 height: 46,
                 width: 532,
                 hideText: true,
                 hintText:'Enter your password',
                 paddingTop: 4,
                 validate: (val) => val.length < 6 ? 'Enter a valid password' : null,
                   onChange: (val) {
                   },
                 ),
               Padding(
                 padding: EdgeInsets.only(top:32),
                 child:Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(
                         'Forgot your password?',
                         style:TextStyle(
                           color:kSignInTextColor,
                           fontSize: 15,
                           fontWeight: FontWeight.normal,         
                           fontStyle:
                               FontStyle.normal,
                           decoration:
                               TextDecoration.underline
                         )
                       ),
                       GreenButton(
                         buttonText: 'Sign In',
                         onPress: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> Dashboard()));
                         },
                          topPadding: 0
                       )
                   ],
                 )
               ),
             ],
           ),
         ),
        ),
      ),
      ),
    );
  }
}