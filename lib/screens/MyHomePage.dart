import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String selectedOption = 'Overview';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/arrow.png'),
                    SizedBox(width: 15,),
                    Text(
                      'Radiology',
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Image.asset('assets/Vector.png'),
                    SizedBox(width: 15,),
                    Image.asset('assets/Frame.png'),
                    SizedBox(width: 15,),
                    Image.asset('assets/Menu 3.png'),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OptionItem(
                      title: 'Overview',
                      isSelected: selectedOption == 'Overview',
                      onTap: () {
                        setState(() {
                          selectedOption = 'Overview';
                        });
                      },
                    ),
                    OptionItem(
                      title: 'Marketplace',
                      isSelected: selectedOption == 'Marketplace',
                      onTap: () {
                        setState(() {
                          selectedOption = 'Marketplace';
                        });
                      },
                    ),
                    OptionItem(
                      title: 'News',
                      isSelected: selectedOption == 'News',
                      onTap: () {
                        setState(() {
                          selectedOption = 'News';
                        });
                      },
                    ),
                  ],
                ),
                if(selectedOption== 'Overview')...[
                  Center(
                    child:Text("Content for Overview"),
                  )
                ],
                SizedBox(height: 15,),
                if (selectedOption == 'Marketplace') ...[
                  ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context,index){
                       return  Column(
                         children: [
                           Container(
                             child: Stack(
                               alignment: Alignment.bottomLeft,
                               children: [
                                 Row(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Expanded(
                                       flex: 2,
                                       child: Container(
                                         child: Stack(
                                           alignment: Alignment.topCenter,
                                           children: [
                                             ClipRRect(
                                               borderRadius: BorderRadius.circular(10),
                                               child: Image.asset(
                                                 'assets/Rectangle 20041.png',
                                                 height: 180,
                                                 width: 250,
                                                 fit: BoxFit.cover,
                                               ),
                                             ),

                                             Positioned(
                                               top: 10,
                                               left: 10,
                                                 child: Container(
                                                   padding: EdgeInsets.only(top: 2,bottom: 2,left: 7,right: 2),
                                                   decoration: BoxDecoration(
                                                     color: Color(0xff0070CE),
                                                     borderRadius: BorderRadius.circular(20),
                                                   ),
                                                   child: Row(
                                                     children: [
                                                       Text("Verified",style: TextStyle(color: Colors.white,fontSize: 13),),
                                                       Image.asset(
                                                         'assets/image 153.png',
                                                         height: 25,
                                                       ),
                                                     ],
                                                   ),
                                                 ),

                                             ),
                                             Positioned(
                                               bottom: 0,
                                               left: 10,
                                               child: Row(
                                                 crossAxisAlignment: CrossAxisAlignment.center,
                                                 children: [
                                                   Column(
                                                     crossAxisAlignment: CrossAxisAlignment.start,
                                                     children: [
                                                       Text(
                                                         '50% off',
                                                         style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                                                       ),
                                                       Text(
                                                         'UPTO ₹1000',
                                                         style: TextStyle(color: Color(0xffFFFFFF)),
                                                       ),
                                                     ],
                                                   ),
                                                   SizedBox(width: 40,),
                                                   Column(
                                                     children: [
                                                       Image.asset("assets/Vector (1).png"),
                                                     ],
                                                   ),
                                                 ],
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),
                                     ),
                                     Expanded(
                                       flex: 3,
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                         child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Text(
                                               'Shiska Coaching Center',
                                               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                             ),
                                             SizedBox(height: 3),
                                             Row(
                                               children: [
                                                 Image.asset(
                                                   'assets/stars_FILL1_wght300_GRAD0_opsz24 1.png',
                                                   fit: BoxFit.cover,
                                                 ),
                                                 SizedBox(width: 10),
                                                 Text(
                                                   '4.5 (100+ Rating)',
                                                   style: TextStyle(fontWeight: FontWeight.w500),
                                                 ),
                                               ],
                                             ),
                                             SizedBox(height: 10),
                                             Text('All Subjects · Com · Sci'),
                                             SizedBox(height: 10),
                                             Text('Kalkaji  · 3kms away'),
                                             SizedBox(height: 10),
                                             ElevatedButton(
                                               onPressed: () {},
                                               child: Text(
                                                 'View Details',
                                                 style: TextStyle(color: Color(0xff7D23E0)),
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),

                               ],
                             ),
                           ),
                           SizedBox(height: 20),
                           Container(
                             height: 1,
                             color: Colors.grey,
                           ),
                           SizedBox(height: 20),
                         ],
                       );
                        ;
                  }),

                ],
                if (selectedOption == 'News') ...[
                  ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context,index){
                        return  Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The Economic Times  •  3 days ag',
                                style: TextStyle(color: Color(0xff4C4452)),
                              ),
                              SizedBox(height: 3),
                              SizedBox(height: 10),
                              Text('Virtual & augmented reality (VR & AR) tech is being \nadopted in radiology',style: TextStyle(color: Color(0xff4C4452)),),
                              SizedBox(height: 20,),
                              Container(
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        );
                      }),

                ],

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OptionItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function onTap;

  const OptionItem({
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: isSelected ? CupertinoColors.systemPurple : Colors.black,
              ),
            ),
            SizedBox(height: 5),
            isSelected
                ? Container(
              height: 2,
              width: 100,
              color: CupertinoColors.systemPurple,
            )
                : Container(),
          ],
        ),
      ),
    );
  }
}
