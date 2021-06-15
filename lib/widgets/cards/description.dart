import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';

class DescriptionCard extends StatelessWidget {
  const DescriptionCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Container(
                    width: 694,
                    height: 36,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color:kBlackOpacity.withOpacity(0.2),
                              ),
                        color:Color(0xFFf0f0f0)
                            ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width:8,),
                            Text('Formats',style: k14Black2,),
                            GestureDetector(
                          onTap: (){},
                          child: Icon(
                            Icons.arrow_drop_down, 
                            color: kAppBarColor,
                            size: 14.0,
                            ),
                          ),
                          ],
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.format_clear,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                        GestureDetector(
                          child: Icon(
                            Icons.format_bold,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         GestureDetector(
                          child: Icon(
                            Icons.format_italic,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         GestureDetector(
                          child: Icon(
                            Icons.format_align_left,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         GestureDetector(
                          child: Icon(
                            Icons.format_align_center,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         GestureDetector(
                          child: Icon(
                            Icons.format_align_right,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         GestureDetector(
                          child: Icon(
                            Icons.format_align_justify,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         GestureDetector(
                          child: Icon(
                            Icons.format_list_bulleted,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         GestureDetector(
                          child: Icon(
                            Icons.format_list_numbered,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         GestureDetector(
                          child: Icon(
                            Icons.format_indent_decrease,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         GestureDetector(
                          child: Icon(
                            Icons.format_indent_increase,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Icon(
                               Icons.table_view,
                               color: kAppBarColor,
                               size:20
                               ),
                               GestureDetector(
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                           ],
                         ),
                         GestureDetector(
                          child: Icon(
                            Icons.link,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         GestureDetector(
                          child: Icon(
                            Icons.insert_photo,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         GestureDetector(
                          child: Icon(
                            Icons.movie,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         GestureDetector(
                          child: Icon(
                            Icons.code,
                            color: kAppBarColor,
                            size:20
                            ),
                         onTap: (){}
                         ),
                         SizedBox(width:4,)
                      ],
                    ),
                  ),
                  TextFormField(
                      minLines: 10, // any number you need (It works as the rows for the textarea)
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      initialValue: 'The Audhild tee has a simple front with a side pocket.\n\nFeaturing an open back detail.',
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kInputBorderColor,
                          width: 1.0,
                          ),
                        ),
                      focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: kInputBorderColor,
                              width: 1.0,
                            ),
                          ),   
                      )
                    ),
                    Container(
                      width: 694,
                    height: 36,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.7,
                        color:kBlackOpacity.withOpacity(0.2),
                              ),
                        color:Color(0xFFf0f0f0)
                            ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.blur_on_rounded
                              ),
                              Icon(
                                Icons.blur_on_rounded
                              )
                            ],
                          ),
                    ),   
      ],
    );
  }
}