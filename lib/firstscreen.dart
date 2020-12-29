import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intervalprogressbar/intervalprogressbar.dart';
import 'constants.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  String dropdownValue = 'Technical';
  String dropdownValue1 = 'Exponential';
  String dropdownValue2 = 'Classic';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80.0,top: 40.0),
                      child: Text('Sensex',
                        style: GoogleFonts.ibmPlexSans(fontSize:30.0)
                      ),
                  ),
                ),
              ],
            ), //sensex
            Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0,top: 20.0),

                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_downward_rounded),
                      iconSize: 20,
                      elevation: 16,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25.0,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>['Technical', 'null']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),  //technical button
            Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 120.0,top: 40.0),
                    child: Text('Summary',
                        style: GoogleFonts.ibmPlexSans(fontSize:30.0) ),
                  ),
                ),
              ],
            ), //summary
            Row(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                        Container(
                        height: 100,
                    width: 10,
                       decoration: BoxDecoration(
                       color: Colors.blue,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20) )
                        ),
                         ),
                      Container(
                        height: 100,
                         width: 10,
                       color: Colors.lightBlueAccent,
                    ),
                        Container(
                       height: 100, width: 10,
                       color: Colors.grey,
                        ),
                    Container(
                    height: 100,
                    width: 10,
                    color: Colors.redAccent,
                      ),
                      Container(
                      height: 100,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight:Radius.circular(20) )
                          ),
                      )
                        ],
                      ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 220),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(onPressed: (){},
                            color: Colors.white,
                            child: Text('1 MIN',
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                          ),
                          SizedBox(height: 10),
                          RaisedButton(onPressed: (){},
                            color: Colors.white,
                            child: Text('5 MIN',
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                          ),
                          SizedBox(height: 10),
                          RaisedButton(onPressed: (){},
                            color: Colors.white,
                            child: Text('15 MIN',
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                          ),
                          SizedBox(height: 10),
                          RaisedButton(onPressed: (){},
                            color: Colors.white,
                            child: Text('30 MIN',
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                          ),
                          SizedBox(height: 10),
                          RaisedButton(onPressed: (){},
                            color: Colors.white,
                            child: Text('1 HR',
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                          ),
                          SizedBox(height: 10),
                          RaisedButton(onPressed: (){},
                            color: Colors.white,
                            child: Text('5 HR',
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                          ),
                          RaisedButton(onPressed: (){},
                            color: Colors.white,
                            child: Text('1 DAY',
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                          ),
                          SizedBox(height: 10),
                          RaisedButton(onPressed: (){},
                            color: Colors.white,
                            child: Text('1 WK',
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                          ),
                          SizedBox(height: 10),
                          RaisedButton(onPressed: (){},
                            color: Colors.white,
                            child: Text('1 MON',
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),   
              ],
            ), //indicator
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90.0,top: 20.0),
                  child: Column(
                    children: [
                      Text('Moving Averages',
                          style: GoogleFonts.ibmPlexSans(fontSize:25.0,fontWeight: FontWeight.w500)
                      ),
                    ],
                  ),
                )
              ],
            ), //moving average
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 150.0, top: 10.0),
                      child: RaisedButton(
                        color: Colors.blueAccent,
                          onPressed: (){},
                      child: Text('Buy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                      ),
                    )
                  ],
                )
              ],
            ), //buy button
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('7',style:ktablevaluecolor),
                      Text('Buy', style: ktext),
                    ],
                  ),
                  SizedBox(width: 100),
                  Column(
                    children: [
                      Text('-',style:ktablevaluecolor),
                      Text('Neutral', style: ktext),
                    ],
                  ),
                  SizedBox(width: 100),
                  Column(
                    children: [
                      Text('5',style:ktablevaluecolor),
                      Text('Sell', style: ktext),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 100.0,top: 20.0,bottom: 10.0),
                    child: DropdownButton<String>(
                      value: dropdownValue1,
                      icon: Icon(Icons.arrow_downward_rounded),
                      iconSize: 21,
                      elevation: 18,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24.0,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue1 = newValue;
                        });
                      },
                      items: <String>['Exponential','null']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })
                          .toList(),
                    ),
                  ),
                ),
              ],
            ), //exponential button
            Row(
              children: [Padding(
                padding: const EdgeInsets.only(left: 30),
                child: DataTable(
                  dividerThickness: 0,
                  columnSpacing: 80.0,
                  showBottomBorder: false,
                  columns: [
                    DataColumn(label: Text(
                        'TITLE',
                        style: ktablehead
                    )),
                    DataColumn(label: Text(
                        'VALUE',
                        style: ktablehead
                    )),
                    DataColumn(label: Text(
                        'TYPE',
                        style: ktablehead
                    )),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('MA10',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('SELL',style: ksell)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('MA20',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('BUY',style: kbuy)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('MA50',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('BUY',style: kbuy)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('MA100',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('SELL',style: ksell)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('MA200',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('BUY',style: kbuy)),
                    ])
                  ],),
              )  ],
            ),// data table 1
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90.0,top: 20.0),
                  child: Column(
                    children: [
                      Text('Technical Indicators',
                          style: GoogleFonts.ibmPlexSans(fontSize:25.0,fontWeight: FontWeight.w500)
                      ),
                    ],
                  ),
                )
              ],
            ), //technical indicators
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 130.0, top: 10.0),
                      child: RaisedButton(
                        color: Colors.red,
                        onPressed: (){},
                        child: Text('Strong Sell',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            )),
                      ),
                    )
                  ],
                )
              ],
            ), //buy button
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('1',style:ktablevaluecolor),
                      Text('Buy', style: ktext),
                    ],
                  ),
                  SizedBox(width: 100),
                  Column(
                    children: [
                      Text('1',style:ktablevaluecolor),
                      Text('Neutral', style: ktext),
                    ],
                  ),
                  SizedBox(width: 100),
                  Column(
                    children: [
                      Text('9',style:ktablevaluecolor),
                      Text('Sell', style: ktext),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [Padding(
                padding: const EdgeInsets.only(left:5),
                child: DataTable(
                  dividerThickness: 0,
                  columnSpacing: 30.0,
                  showBottomBorder: false,
                  columns: [
                    DataColumn(label: Text(
                        'NAME',
                        style: ktablehead
                    )),
                    DataColumn(label: Text(
                        'ACTION',
                        style: ktablehead
                    )),
                    DataColumn(label: Text(
                        'VALUE',
                        style: ktablehead
                    )),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('RSI(14)',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('Neutral',style: TextStyle(color:Colors.grey,fontWeight: FontWeight.w900))),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('STOCH(9,6)',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('BUY',style: ksell)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('STOCHRSI(14)',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('BUY',style: ksell)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('MACD(12,26)',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('SELL',style: kbuy)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('ADX(14)',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('BUY',style: ksell)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Williams %R',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('BUY',style: ksell)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('CCI(14)',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('BUY',style: ksell)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('ATR(14)',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('BUY',style: ksell)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Highs/Lows(14)',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('BUY',style: ksell)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Ultimate Oscillator',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('BUY',style: ksell)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('ROC',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('BUY',style: ksell)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Bull/Bear Power(13)',style: ktablevaluecolor)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                      DataCell(Text('BUY',style: ksell)),
                    ])
                  ],),
              )  ],
            ),
            //data table 2
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 130.0,top: 20.0),
                  child: Column(
                    children: [
                      Text('Pivot Points',
                          style: GoogleFonts.ibmPlexSans(fontSize:25.0,fontWeight: FontWeight.w500)
                      ),
                    ],
                  ),
                )
              ],
            ), //Pivot points
            Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 130.0,top: 20.0),
                    child: DropdownButton<String>(
                      value: dropdownValue2,
                      icon: Icon(Icons.arrow_downward_rounded),
                      iconSize: 21,
                      elevation: 18,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24.0,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue2 = newValue;
                        });
                      },
                      items: <String>['Classic','null']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })
                          .toList(),
                    ),
                  ),
                ),
              ],
            ), //classic button
            Row(
              children: [Padding(
                padding: const EdgeInsets.only(left: 30),
                child: DataTable(
                  dividerThickness: 0,
                  columnSpacing: 150.0,
                  showBottomBorder: false,
                  columns: [
                    DataColumn(label: Text(
                        '',
                        style: ktablehead
                    )),
                    DataColumn(label: Text(
                        '',
                        style: ktablehead
                    )),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('S3',style: ktablehead)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('S2',style: ktablehead)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('PIVOT POINTS',style: ktablehead)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('R1',style: ktablehead)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('R2',style: ktablehead)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('R3',style: ktablehead)),
                      DataCell(Text('465.28',style: ktablevaluecolor)),
                    ]),


                  ],),
              )  ],
            ), //data table 3

          ],
        ),
      ),
    );
  }
}














//  Expanded(
//                       child: Container(
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 250),
//                           child: Column(
//                             children: [
//                              ListView.builder(
//                              shrinkWrap: true,
//                              itemCount: 9,
//                              itemBuilder: (context, index){
//                                return Card(
//                                  elevation: 0,
//                                  child: Text(timeframe[index]),
//                                );
//                              }
//                    ),
//                  ],
//                           ),
//                         ),
//                       ),
//                     ),