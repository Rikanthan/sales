import 'package:flutter/material.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/widgets/TextInput/text_input.dart';
import 'package:sales/widgets/appbar/appbar.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';

class Signin extends StatelessWidget {
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
          image:AssetImage('images/background.jpg'),
          fit:BoxFit.cover
          )
        ),
      child: Center(
        child: Container(
          height: 477,
          width:600,
          decoration: BoxDecoration(
           borderRadius: BorderRadius.all(Radius.circular(4.0)),
           color:Colors.white,
           shape: BoxShape.rectangle
         ),
         child: Column(
           children: [
             Padding(
               padding: EdgeInsets.only(top:15.0,left: 12.0,bottom: 15.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                    Image.asset(
                     'assets/images/logo-standard-green.png',
                     fit: BoxFit.cover,
                       height: 80.0,
                       ),
                     Text(
                       'Sign In',
                       style:TextStyle(
                         color:kSignInTextColor,
                         fontSize: 24,
                         fontFamily: 'Lato',
                         fontWeight: FontWeight.bold,            
                         fontStyle:
                             FontStyle.normal
                       )
                     ),
                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left:34.0,right: 34.0,top:0),
               child:Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(
                       'HAPPYSTORE',         
                       style:TextStyle(
                         color:kSignInTextColor,
                         fontSize: 15,
                         fontWeight: FontWeight.bold,
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
             Padding(
               padding: const EdgeInsets.only(left:32.0,top:35.0),
               child: Row(
                 children: [
                   Text(
                     'Username',
                      style:TextStyle(
                            color:kSignInTextColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',            
                            fontStyle:
                                FontStyle.normal
                          )
                     ),
                 ],
               ),
             ),
             TextInputField(
               action: TextInputAction.next,
               hideText: false,
               hintText:'Enter your username',
               paddingTop: 10,
               height: 70,
               width: 200,
               validate: (val) => val.length < 6 ? 'Please enter a username' : null,
                 onChange: (val) {
                 },
               ),
               Padding(
               padding: const EdgeInsets.only(left:32.0,top:20.0),
               child: Row(
                 children: [
                   Text(
                     'Password',
                      style:TextStyle(
                            color:kSignInTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',            
                            fontStyle:
                                FontStyle.normal
                          )
                     ),
                 ],
               ),
             ),
             TextInputField(
               action: TextInputAction.go,
               height: 70,
               width: 200,
               hideText: true,
               hintText:'Please enter a password',
               paddingTop: 10,
               validate: (val) => val.length < 6 ? 'Enter a valid password' : null,
                 onChange: (val) {
                 },
               ),
             Padding(
               padding: EdgeInsets.only(left:34.0,right: 34.0,top:40),
               child:Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                       onPress: (){},
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
    );
  }
}