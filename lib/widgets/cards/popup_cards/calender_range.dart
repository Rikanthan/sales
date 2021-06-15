import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';
import 'package:sales/widgets/cards/popup_cards/retrieve_sale.dart';
import 'package:table_calendar/table_calendar.dart';
 

class CalenderRange extends StatefulWidget {
  
  const CalenderRange({ Key key }) : super(key: key);

  @override
  _CalenderRangeState createState() => _CalenderRangeState();
}

class _CalenderRangeState extends State<CalenderRange> {
  CalendarController _controllerFrom;
CalendarController _controllerTo;
 String dateFrom = 'e.g. 12 Mar 1991';
 String dateTo = 'e.g. 12 Mar 1991';

  @override  
  void initState() {  
    super.initState();
    _controllerFrom = CalendarController();
    _controllerTo = CalendarController();
  }
  Widget build(BuildContext context) {
    return  AlertDialog(
      backgroundColor: Colors.transparent,
                contentPadding: EdgeInsets.only(left: 348),
                content:Align(
                  alignment: Alignment(0,0),
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                              Row(
                                children: [
                                        Container(
                                          width: 294,
                                          height: 370,
                                          color: Colors.white,
                                          child: Padding(
                                            padding: const EdgeInsets.all(24.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text('From',style: kMediumTextStyle,),
                                                TextInput(
                                                        darkMode: false,
                                                        hideText: false,
                                                        hintText:dateFrom,
                                                        paddingTop: 5,
                                                        height: 46,
                                                        width: 245,
                                                        validate: (String val) => val.isEmpty? 'This field is required' : null,
                                                          onChange: (val) {
                                                            setState(() {
                                                              val = dateFrom;
                                                            });    
                                                          },
                                                        ),
                                                TableCalendar(
                                                  initialCalendarFormat: CalendarFormat.month,  
                                                calendarStyle: CalendarStyle(  
                                                      todayColor: Colors.white,
                                                      selectedColor: kSignInButtonColor,  
                                                      todayStyle: k15Blue 
                                                  ),  
                                                  headerStyle: HeaderStyle(  
                                                    centerHeaderTitle: true,  
                                                    formatButtonDecoration: BoxDecoration(  
                                                      color: Colors.brown,  
                                                      borderRadius: BorderRadius.circular(22.0),  
                                                    ),  
                                                    formatButtonTextStyle: TextStyle(color: Colors.white),  
                                                    formatButtonShowsNext: false,  
                                                  ),  
                                                  startingDayOfWeek: StartingDayOfWeek.monday, 
                                                onDaySelected: (date, events, list) {  
                                                    print(date.toUtc());
                                                    setState(() {
                                                      dateFrom = date.toLocal().toIso8601String();
                                                       if(dateFrom.length >10)
                                                      {
                                                        dateFrom = dateFrom.substring(0,10);
                                                      }
                                                    });  
                                                    print(dateFrom);
                                                  },  
                                                  builders: CalendarBuilders(  
                                                      selectedDayBuilder: (context, date, events) => Container(  
                                                          margin: const EdgeInsets.all(5.0),  
                                                          alignment: Alignment.center,  
                                                          decoration: BoxDecoration(  
                                                              color: kSignInButtonColor,  
                                                              borderRadius: BorderRadius.circular(8.0)),  
                                                          child: Text(  
                                                            date.day.toString(),  
                                                            style: TextStyle(color: Colors.white),  
                                                          )),  
                                                      todayDayBuilder: (context, date, events) => Container(  
                                                          margin: const EdgeInsets.all(5.0),  
                                                          alignment: Alignment.center,  
                                                          decoration: BoxDecoration(  
                                                              color: Colors.white,  
                                                              borderRadius: BorderRadius.circular(8.0)),  
                                                          child: Text(  
                                                            date.day.toString(),  
                                                            style: TextStyle(color: kFilterTextColor),  
                                                          )),  
                                                    ),  
                                                  calendarController: _controllerFrom,  
                                                )  
                                              ],
                                            ),
                                          ),
                                        ),
                                  Container(
                                    width: 294,
                                    height: 370,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(24.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text('To',style: kMediumTextStyle,),
                                           TextInput(
                                                  darkMode: false,
                                                  hideText: false,
                                                  hintText:dateTo,
                                                  paddingTop: 5,
                                                  height: 46,
                                                  width: 245,
                                                  validate: (String val) => val.isEmpty? 'This field is required' : null,
                                                    onChange: (val) {
                                                      setState(() {
                                                        val = dateTo;
                                                      });    
                                                    },
                                                  ),
                                                TableCalendar(
                                                  initialCalendarFormat: CalendarFormat.month,  
                                                calendarStyle: CalendarStyle(  
                                                      todayColor: Colors.white,
                                                      selectedColor: kSignInButtonColor,  
                                                      todayStyle: k15Blue 
                                                  ),  
                                                  headerStyle: HeaderStyle(  
                                                    centerHeaderTitle: true,  
                                                    formatButtonDecoration: BoxDecoration(  
                                                      color: Colors.brown,  
                                                      borderRadius: BorderRadius.circular(22.0),  
                                                    ),  
                                                    formatButtonTextStyle: TextStyle(color: Colors.white),  
                                                    formatButtonShowsNext: false,  
                                                  ),  
                                                  startingDayOfWeek: StartingDayOfWeek.monday, 
                                                onDaySelected: (date, events, list) {  
                                                    print(date.toUtc());
                                                    setState(() {
                                                      dateTo = date.toLocal().toIso8601String();
                                                      if(dateTo.length >10)
                                                      {
                                                        dateTo = dateTo.substring(0,10);
                                                      }

                                                    });  
                                                    print(dateFrom);
                                                  },  
                                                  builders: CalendarBuilders(  
                                                      selectedDayBuilder: (context, date, events) => Container(  
                                                          margin: const EdgeInsets.all(5.0),  
                                                          alignment: Alignment.center,  
                                                          decoration: BoxDecoration(  
                                                              color: kSignInButtonColor,  
                                                              borderRadius: BorderRadius.circular(8.0)),  
                                                          child: Text(  
                                                            date.day.toString(),  
                                                            style: TextStyle(color: Colors.white),  
                                                          )),  
                                                      todayDayBuilder: (context, date, events) => Container(  
                                                          margin: const EdgeInsets.all(5.0),  
                                                          alignment: Alignment.center,  
                                                          decoration: BoxDecoration(  
                                                              color: Colors.white,  
                                                              borderRadius: BorderRadius.circular(8.0)),  
                                                          child: Text(  
                                                            date.day.toString(),  
                                                            style: TextStyle(color: kFilterTextColor),  
                                                          )),  
                                                    ),  
                                                  calendarController: _controllerTo,  
                                                )  
                                              ],
                                            ),
                                          ),
                                        ),
                                  
                                      ],
                                    ),
                                    Container(
                                      color: kInputBorderColor,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left:24,right:24,top:8.0,bottom:8),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Text('Please select a start and end date',style: kMediumTextNormalStyle,),
                                            Spacer(),
                                            CustomButton(
                                              buttonText: 'Clear Dates', 
                                              onPress: (){
                                                setState(() {
                                                  dateFrom = 'e.g. 12 Mar 1991';
                                                  dateTo = 'e.g. 12 Mar 1991';
                                                });
                                              }, 
                                              buttonColor: kDashboardIconColor, 
                                              topPadding: 20, 
                                              leftPadding: 30
                                              ),
                                            Padding(
                                              padding: const EdgeInsets.only(right: 25,left: 8),
                                              child: GreenButton(
                                                buttonText: 'Apply',
                                                  onPress: (){}, 
                                                  topPadding: 0
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                ],
                              ),
                          ),
                ),
  );
  }
}
