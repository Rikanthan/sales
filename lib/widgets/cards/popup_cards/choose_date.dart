import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sales/constants/colors.dart';
import 'package:sales/constants/styles.dart';
import 'package:sales/widgets/TextInput/text_input_only.dart';
import 'package:sales/widgets/buttons/custom_button.dart';
import 'package:sales/widgets/buttons/greenbutton.dart';
import 'package:sales/widgets/listviews/custom_drop_down.dart';
import 'package:table_calendar/table_calendar.dart';
 

class ChooseDatePopUp extends StatefulWidget {
  
  const ChooseDatePopUp({ Key key }) : super(key: key);

  @override
  _CalenderRangeState createState() => _CalenderRangeState();
}

class _CalenderRangeState extends State<ChooseDatePopUp> {
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
                contentPadding: EdgeInsets.only(top: 175,left: 540),
                content:Align(
                  alignment: Alignment(-15,0.79),
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                              Container(
                                width: 294,
                                height: 306,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white
                                  ),
                                child: Padding(
                                  padding: const EdgeInsets.all(24.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [                                           
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
                                     RotatedBox(
                                        quarterTurns: 2,
                                        child: Align(
                                        alignment: Alignment(0.8,0.0),
                                          child: ClipPath(
                                            clipper: ArrowClipper(),
                                            child: Container(
                                              height: 16.97/2,
                                              width: 19.97,
                                              decoration: BoxDecoration(
                                              shape: BoxShape.rectangle,
                                              color: Colors.white,
                                              border:Border.all(
                                                  color: Colors.white,width: 1,
                                                )
                                              ),
                                            ),
                                        ),
                                      ),
                                  ),
                                ],
                              ),
                          ),
                ),
    );
  }
}