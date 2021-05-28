import 'package:flutter/material.dart';
class GredientTableHeader extends StatelessWidget {
  GredientTableHeader({
    @required this.text,
    @required this.isDarkMode,
    @required this.width,
    @required this.isLeftborder,
    @required this.isTopRightRadius,
    @required this.isTopLeftRadius,
    @required this.alignment
  });
  final String text;
  final bool isDarkMode;
  final double width;
  final bool isLeftborder;
  final bool isTopLeftRadius;
  final bool isTopRightRadius;
  final MainAxisAlignment alignment;
  @override
  Widget build(BuildContext context) {
    return 
          isTopLeftRadius || isTopRightRadius?
          Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft:isTopLeftRadius? Radius.circular(5): Radius.circular(0),
                      topRight:isTopRightRadius ? Radius.circular(5) : Radius.circular(0)
                      ),
                    gradient: LinearGradient(
                        colors: [isDarkMode?Color(0xFF777777) : Color(0xFF888888) , isDarkMode? Color(0xFF303030) : Color(0xFF545454),],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                    ),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        spreadRadius: -1,
                        blurRadius: 2,
                      ),
                    ]
                  ),
                  height: 33,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(left:9,right:9,top:6.0,bottom: 6),
                    child: 
                    isDarkMode?
                       Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: (){},
                              child: Text(
                                text,
                                style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  shadows: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.4),
                                        spreadRadius: -1,
                                        blurRadius: 0,
                                      )
                                    ]
                                  )
                                ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 14,
                              color: Colors.white,
                              )
                          ],
                        )
                     :Row(
                      mainAxisAlignment: alignment,
                      children: [
                        Text(
                          text,
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700
                            )
                          ),
                      ],
                    ),
                  ),
                )
           : Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: Colors.white,width: isLeftborder? 1: 0),
                      right:BorderSide(color: Color(0xFF525252),width:1),
                      ),
                    gradient: LinearGradient(
                        colors: [isDarkMode?Color(0xFF777777) : Color(0xFF888888) , isDarkMode? Color(0xFF303030) : Color(0xFF545454),],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(0.0, 1.0),
                    ),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        spreadRadius: -1,
                        blurRadius: 2,
                      ),
                    ]
                  ),
                  height: 33,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(left:9,right:9,top:6.0,bottom: 6),
                    child:isDarkMode?
                    Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: (){},
                              child: Text(
                                text,
                                style:TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w700,
                                  shadows: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.4),
                                        spreadRadius: -1,
                                        blurRadius: 0,
                                      )
                                    ]
                                  )
                                ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 14,
                              color: Colors.white,
                              )
                          ],
                        )
                    : Row(
                      mainAxisAlignment: alignment,
                      children: [
                        Text(
                          text,
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700
                            )
                          ),
                      ],
                    ),
                  ),
                );
  }
}