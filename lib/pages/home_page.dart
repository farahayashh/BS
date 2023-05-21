import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "dart:html" as html;
import 'package:myapp/pages/blog.dart';
import 'package:myapp/pages/projects.dart';
import '../footer.dart';

TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController messageController = TextEditingController();

void sendEmail(String name, String email, String message) {
  final subject = Uri.encodeComponent('Message from $name');
  final body = Uri.encodeComponent(message);
  final emailUrl = Uri.encodeFull('mailto:farahayashh@hotmail.com?subject=$subject&body=$body');

  html.window.location.href = emailUrl;
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> images = [    'assets/images/homePage/homepage1.jpg',
    'assets/images/homePage/homepage2.jpg',    'assets/images/homePage/homepage3.jpg',    'assets/images/homePage/homepage4.jpg',  ];
  int _currentIndex = 0;
  final ScrollController _scrollController = ScrollController();
  Color _textColor1 = Colors.black54 ;
  Color _textColor2 = Colors.black54 ;
  Color _textColor3 = Colors.black54 ;
  Color _textColor4 = Colors.black54 ;
  Color _textColor5 = Colors.black54 ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => {
              Navigator.pushNamed(context,'/home')
            },
            child: Image.asset(
              'assets/images/homePage/logo.jpg',
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.30),
          Flexible(
            flex: 1,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (event) {
                setState(() {
                  _textColor1 = const Color(0xEAAF8632); // Change the text color when the mouse is hovering over the button
                });
              },
              onExit: (event) {
                setState(() {
                  _textColor1 = Colors.black54; // Change the text color back to the original color when the mouse exits the button region
                });
              },
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _textColor1 = const Color(0xEAAF8632); // Change the text color when the button is pressed
                  });
                _scrollController.animateTo(
                  MediaQuery.of(context).size.height * 1.1,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                );
                },
                child: Text('About' ,
                style: TextStyle(color: _textColor1, fontSize:MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),),
            ),
          ),
          Flexible(
            flex: 1,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (event) {
                setState(() {
                  _textColor2 = const Color(0xEAAF8632); // Change the text color when the mouse is hovering over the button
                });
              },
              onExit: (event) {
                setState(() {
                  _textColor2 = Colors.black54; // Change the text color back to the original color when the mouse exits the button region
                });
              },
              child: GestureDetector(
                onTap: () => {
                  Navigator.pushNamed(context,'/projects')
                },
                child: Text('Projects' ,
                  style: TextStyle( color: _textColor2, fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (event) {
                setState(() {
                  _textColor3 = const Color(0xEAAF8632); // Change the text color when the mouse is hovering over the button
                });
              },
              onExit: (event) {
                setState(() {
                  _textColor3 = Colors.black54; // Change the text color back to the original color when the mouse exits the button region
                });
              },
              child: GestureDetector(
                onTap: () => {
                  Navigator.pushNamed(context,'/services')
                },
                child: Text('Services' ,
                  style: TextStyle(color: _textColor3 , fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (event) {
                setState(() {
                  _textColor4 = const Color(0xEAAF8632); // Change the text color when the mouse is hovering over the button
                });
              },
              onExit: (event) {
                setState(() {
                  _textColor4 = Colors.black54; // Change the text color back to the original color when the mouse exits the button region
                });
              },
              child: GestureDetector(
                onTap: () => {
                  Navigator.pushNamed(context,'/contact')
                },
                child: Text('Contact' ,
                  style: TextStyle(color: _textColor4, fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),),
            ),
          ),
          Flexible(
            flex: 1,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onHover: (event) {
                setState(() {
                  _textColor5 = const Color(0xEAAF8632); // Change the text color when the mouse is hovering over the button
                });
              },
              onExit: (event) {
                setState(() {
                  _textColor5 = Colors.black54; // Change the text color back to the original color when the mouse exits the button region
                });
              },
              child: GestureDetector(
                onTap: () => {
                  Navigator.pushNamed(context,'/blog')
                },
                child: Text('Blog' ,
                  style: TextStyle(color: _textColor5, fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
              ),
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                    fontFamily: "Segoe UI"
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.002),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: const Color(0xEAAF8632), width: MediaQuery.of(context).size.width * 0.005),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: const Color(0xEAAF8632), width: MediaQuery.of(context).size.height * 0.005),
                ),
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.search, color: Colors.black87,size: MediaQuery.of(context).size.height * 0.04,),
              ),
              cursorColor: const Color(0xEAAF8632),
              onSubmitted: (value) {
                if (Blog.containsWord(value)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Blog(),
                    ),
                  );
                } else if (Projects.containsWord(value)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Projects(),
                    ),
                  );
                } else {
                  // Show a dialog to inform the user that the word was not found
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Word not found'),
                        content: Text('The word "$value" was not found.'),
                        actions: [
                          TextButton(
                            child: const Text('OK', style: TextStyle(color: Colors.black),),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],),
      ),
      body:
      Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width/30),
                  child: Stack(
                    children: [
                      CarouselSlider(
                        items: images
                            .map((image) => Image.asset(
                          image,
                          fit: BoxFit.fill,
                        ))
                            .toList(),
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 5),
                          viewportFraction: 1.0,
                          enlargeCenterPage: false,
                          enableInfiniteScroll: true,
                          aspectRatio: 2.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height * 0.09,
                        left: MediaQuery.of(context).size.width / 15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ARCHITECTURE / INTERIORS',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:  MediaQuery.of(context).size.height * 0.035, fontFamily: "TwCenMTStd"
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.width / 17),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                'All you need in\nArchitectural & Engineering\nSolution',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.height * 0.053,
                                  fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"
                                ),
                                maxLines: null,
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.width / 17),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/projects');
                              },
                              child: Text('OUR PROJECTS' , style: TextStyle(fontFamily: "TwCenMTStd", fontSize: MediaQuery.of(context).size.height * 0.045),),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                onSurface: Colors.grey,
                                padding: EdgeInsets.symmetric(
                                    horizontal: MediaQuery.of(context).size.width/30, vertical: MediaQuery.of(context).size.width/30),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                  side: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height * 0.03,
                        left: MediaQuery.of(context).size.width /2.4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: images.map((url) {
                            int index = images.indexOf(url);
                            return Container(
                              width: MediaQuery.of(context).size.width / 40,
                              height: MediaQuery.of(context).size.width * 0.009,
                              //margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(index == _currentIndex ? 0.9 : 0.4),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => {
                        Navigator.pushNamed(context,'/about')
                      },
                      child: Text("About", style: TextStyle(color: Colors.grey, fontSize: MediaQuery.of(context).size.height * 0.05, fontFamily: "TwCenMTStd"),),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                    Text('BS Design & Architecture', style: TextStyle(color: Colors.black, fontSize: MediaQuery.of(context).size.height * 0.05, fontFamily: "TwCenMTStd"),)
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
             Padding(
               padding: EdgeInsets.all(MediaQuery.of(context).size.width/30),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children:  [
                       Row(
                         children: [
                            Text("WE DON'T DESIGN SPACES, WE\nTHINK OF NEW WAYS OF\nLIVING", textAlign: TextAlign.left,
                             style: TextStyle(
                               fontSize: MediaQuery.of(context).size.height * 0.045,
                               fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"
                             ),
                           ),
                         ],
                       ),
                       SizedBox(height:  MediaQuery.of(context).size.height / 9,),
                       SizedBox(
                         width:  MediaQuery.of(context).size.width / 3,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("B.S Design and architecture is a local brand which",textAlign: TextAlign.left,
                               style: TextStyle(fontSize:  MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                             SizedBox(height:MediaQuery.of(context).size.height / 30),
                             Text("specialize in FIT-OUT, Maintenance,",textAlign: TextAlign.left,
                               style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                             SizedBox(height:MediaQuery.of(context).size.height / 30),
                             Text("project management and All engineering works,",textAlign: TextAlign.left,
                               style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                             SizedBox(height:MediaQuery.of(context).size.height / 30),
                             Text("Covering all United Arab Emirates.",textAlign: TextAlign.left,
                               style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                             SizedBox(height:MediaQuery.of(context).size.height / 30),
                             Text("Our 12 Years experience provides full architectural",textAlign: TextAlign.left,
                               style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                             SizedBox(height:MediaQuery.of(context).size.height / 30),
                             Text("design service from concept",textAlign: TextAlign.left,
                               style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                             SizedBox(height:MediaQuery.of(context).size.height / 30),
                             Text("design to construction supervision.",textAlign: TextAlign.left,
                               style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                             SizedBox(height:MediaQuery.of(context).size.height / 30),
                             Text("The quality of our surrounding has a",textAlign: TextAlign.left,
                               style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                             SizedBox(height:MediaQuery.of(context).size.height / 30),
                             Text("direct influence on the quality of",textAlign: TextAlign.left,
                               style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                             SizedBox(height:MediaQuery.of(context).size.height / 30),
                             Text("our lives.",textAlign: TextAlign.left,
                               style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                             SizedBox(height:MediaQuery.of(context).size.height / 30),
                             Text("Since the formation, we has undertaken over 20 projects",textAlign: TextAlign.left,
                               style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                             SizedBox(height:MediaQuery.of(context).size.height / 30),
                             Text("across the United Arab Emirates.",textAlign: TextAlign.left,
                               style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                           ],
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: MediaQuery.of(context).size.height ,
                       child: VerticalDivider(color: Colors.grey, width: MediaQuery.of(context).size.width/50, )),
                   Column(
                     children:  [
                       Text("Our extensive experience",
                         style: TextStyle(
                         fontSize: MediaQuery.of(context).size.height * 0.045,
                         fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"
                       ),),
                       SizedBox(height: MediaQuery.of(context).size.height / 5),
                       Row(children: [
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.03,
                           height: MediaQuery.of(context).size.width * 0.03,
                           child: Image.asset(
                             'assets/icons/homePage/11.jpg',
                             fit: BoxFit.contain,
                           ),
                         ),
                         SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                         Text("Private Houses                          ",
                         style: TextStyle(fontSize:  MediaQuery.of(context).size.height * 0.035, fontFamily: "TwCenMTStd"),),
                       ],),
                       SizedBox(height: MediaQuery.of(context).size.height / 18,),
                       Row(children: [
                         Text("                          Residential Buildings",
                           style: TextStyle(fontSize:  MediaQuery.of(context).size.height * 0.035, fontFamily: "TwCenMTStd"),),
                         SizedBox(width: MediaQuery.of(context).size.width *0.02,),
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.03,
                           height: MediaQuery.of(context).size.width * 0.03,
                           child: Image.asset(
                             'assets/icons/homePage/12.jpg',
                             fit: BoxFit.contain,
                           ),
                         ),
                       ],),
                       SizedBox(height: MediaQuery.of(context).size.height/18,),
                       Row(children: [
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.03,
                           height: MediaQuery.of(context).size.width * 0.03,
                           child: Image.asset(
                             'assets/icons/homePage/13.jpg',
                             fit: BoxFit.contain,
                           ),
                         ),
                         SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                         Text("Health Facilities                          ",
                           style: TextStyle(fontSize:  MediaQuery.of(context).size.height * 0.035, fontFamily: "TwCenMTStd"),),
                       ],),
                       SizedBox(height: MediaQuery.of(context).size.height/18,),
                       Row(children: [
                         Text("                          Hospitality Facilities",
                           style: TextStyle(fontSize:  MediaQuery.of(context).size.height * 0.035, fontFamily: "TwCenMTStd"),),
                         SizedBox(width: MediaQuery.of(context).size.width *0.02,),
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.03,
                           height: MediaQuery.of(context).size.width * 0.03,
                           child: Image.asset(
                             'assets/icons/homePage/14.jpg',
                             fit: BoxFit.contain,
                           ),
                         ),
                       ],),
                       SizedBox(height: MediaQuery.of(context).size.height/18,),
                       Row(children: [
                         SizedBox(
                           width: MediaQuery.of(context).size.width * 0.03,
                           height: MediaQuery.of(context).size.width * 0.03,
                           child: Image.asset(
                             'assets/icons/homePage/15.jpg',
                             fit: BoxFit.contain,
                           ),
                         ),
                         SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                         Text("Commercial Facilities                 ",
                           style: TextStyle(fontSize:  MediaQuery.of(context).size.height * 0.035, fontFamily: "TwCenMTStd"),),
                       ],),
                       SizedBox(height: MediaQuery.of(context).size.height / 18,),
                     ],
                   ),
                   SizedBox(width: MediaQuery.of(context).size.width * 0.03,),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       SizedBox(
                         height: MediaQuery.of(context).size.height / 1.3,
                         width: MediaQuery.of(context).size.width /5,
                         child: ShaderMask(
                           shaderCallback: (bounds) => const LinearGradient(
                             colors: [Colors.white, Colors.black],
                             stops: [0.0, 1.0],
                           ).createShader(bounds),
                           blendMode: BlendMode.saturation,
                           child: Image.asset(
                             'assets/images/homePage/bishoo.jpg',
                             fit: BoxFit.fill,
                           ),
                         ),
                       ),
                       SizedBox(height: MediaQuery.of(context).size.height * 0.009,),
                       Text("ARCHITECT BASHAR SALAMA",textAlign: TextAlign.left,
                       style: TextStyle(color: Colors.grey, fontSize: MediaQuery.of(context).size.height * 0.02, fontFamily: "TwCenMTStd"),)
                     ],
                   ),
                 ],
               ),
             ),
               SizedBox(height: MediaQuery.of(context).size.height / 9),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("OUR", style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05, fontFamily: "TwCenMTStd")),
                      SizedBox(width: MediaQuery.of(context).size.width *0.02,),
                      Text("PROJECTS" , style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05, fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"))
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 9),
                SizedBox(
                  height: MediaQuery.of(context).size.height *0.9,
                  width: MediaQuery.of(context).size.width,
                  child:
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/homePage/office.jpg',
                                  fit: BoxFit.fill,
                                  height:  MediaQuery.of(context).size.height*0.9,
                                  width: MediaQuery.of(context).size.width/4,
                                ),
                                Container(height: MediaQuery.of(context).size.height*0.9, width: MediaQuery.of(context).size.width/4,
                                  color: Colors.black.withOpacity(0.5),
                                  ),
                              ],
                            ),
                            Positioned(
                              top: MediaQuery.of(context).size.height * 0.025,
                              left: MediaQuery.of(context).size.height * 0.025,
                              child: Text(
                                'OFFICE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.height * 0.053,
                                  fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height * 0.16,
                              left: MediaQuery.of(context).size.width * 0.13,
                              child: Transform.rotate(
                                angle: 29.845,
                                child: Text(
                                  'BUSINESS BAY',
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05,
                                    color: Colors.white, fontFamily: "Segoe UI"
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/homePage/apartment.jpg',
                                  fit: BoxFit.cover,
                                  height: MediaQuery.of(context).size.height*0.9,
                                  width: MediaQuery.of(context).size.width/4,
                                ),
                                Container(height: MediaQuery.of(context).size.height*0.9, width: MediaQuery.of(context).size.width/4,
                                  color: Colors.black.withOpacity(0.5),),
                              ],
                            ),
                            Positioned(
                              top: MediaQuery.of(context).size.height * 0.025,
                              left: MediaQuery.of(context).size.height * 0.025,
                              child: Text(
                                'APARTMENT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.height * 0.053,
                                  fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height * 0.19,
                              left: MediaQuery.of(context).size.width * 0.12,
                              child: Transform.rotate(
                                angle: 29.845,
                                child: Text(
                                  'PALM JUMAIRAH',
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05,
                                    color: Colors.white, fontFamily: "Segoe UI"
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/homePage/hotel.jpg',
                                  fit: BoxFit.cover,
                                  height: MediaQuery.of(context).size.height*0.9,
                                  width: MediaQuery.of(context).size.width/4,
                                ),
                            Container(height: MediaQuery.of(context).size.height*0.9, width: MediaQuery.of(context).size.width/4,
                              color: Colors.black.withOpacity(0.5),),
                              ],
                            ),
                            Positioned(
                              top: MediaQuery.of(context).size.height * 0.025,
                              left: MediaQuery.of(context).size.height * 0.025,
                              child: Text(
                                'HOTEL',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.height * 0.053,
                                  fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height * 0.23,
                              left: MediaQuery.of(context).size.width * 0.1,
                              child: Transform.rotate(
                                angle: 29.845,
                                child: Text(
                                  'DUBAI DOWNTOWN',
                                  style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05,
                                    color: Colors.white, fontFamily: "Segoe UI",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                'assets/images/homePage/salon.jpg',
                                  fit: BoxFit.cover,
                                  height: MediaQuery.of(context).size.height*0.9,
                                  width: MediaQuery.of(context).size.width/4,
                            ),
                                Container(height: MediaQuery.of(context).size.height*0.9, width: MediaQuery.of(context).size.width/4,
                                  color: Colors.black.withOpacity(0.5),),
                              ],
                            ),
                             Positioned(
                              top: MediaQuery.of(context).size.height * 0.025,
                              left: MediaQuery.of(context).size.height * 0.025,
                              child: Text(
                                'SALON',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.height * 0.053,
                                  fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height * 0.05,
                              left: MediaQuery.of(context).size.width * 0.055,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/projects');
                                },
                                child: Text('SEE ALL', style: TextStyle(fontSize:  MediaQuery.of(context).size.height * 0.035, fontFamily: "Segoe UI"),),
                                style: TextButton.styleFrom(
                                  primary: Colors.grey,
                                  onSurface: Colors.grey,
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: MediaQuery.of(context).size.width / 25, vertical: MediaQuery.of(context).size.width / 35),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                ),
                SizedBox(height:  MediaQuery.of(context).size.height / 9,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("OUR", style: TextStyle(fontSize:  MediaQuery.of(context).size.height * 0.05, fontFamily: "TwCenMTStd")),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                      Text("SERVICES" , style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05, fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"))
                    ],
                  ),
                ),
                SizedBox(height:  MediaQuery.of(context).size.height / 9,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            height: MediaQuery.of(context).size.width / 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/icons/homePage/s1.jpg'),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height / 30,),
                          Text("ARCHITECTURE",
                            style: TextStyle(color: const Color(0xEAAF8632), fontSize:  MediaQuery.of(context).size.height * 0.035, fontFamily: "TwCenMTStd"),),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            height: MediaQuery.of(context).size.width / 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/icons/homePage/s2.jpg'),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height / 30,),
                          Text("FF & E",
                            style: TextStyle(color: const Color(0xEAAF8632), fontSize:  MediaQuery.of(context).size.height * 0.035, fontFamily: "TwCenMTStd"),),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            height: MediaQuery.of(context).size.width / 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/icons/homePage/s3.jpg'),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height / 30,),
                          Text("DESIGN",
                            style: TextStyle(color: const Color(0xEAAF8632), fontSize:  MediaQuery.of(context).size.height * 0.035, fontFamily: "TwCenMTStd"),),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 7,
                            height: MediaQuery.of(context).size.width / 8.5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('assets/icons/homePage/s4.jpg'),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height / 30,),
                          Text("RENOVATIONS",
                          style: TextStyle(color: const Color(0xEAAF8632), fontSize: MediaQuery.of(context).size.height * 0.035, fontFamily: "TwCenMTStd"),),
                          Text("FIT OUT",
                            style: TextStyle(color: const Color(0xEAAF8632), fontSize: MediaQuery.of(context).size.height * 0.035, fontFamily: "TwCenMTStd"),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height /7),
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 15),
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height/10,
                        width: MediaQuery.of(context).size.width -60,
                      color: const Color(0xB7CBC3BD),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 35),
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                            children: [  MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                  onTap: () => {
                                    Navigator.pushNamed(context,'/services')
                                  },
                                child: Text(
                                  'START EXPLORING      >       ',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize:  MediaQuery.of(context).size.height * 0.035, fontFamily: "Segoe UI"
                                  ),
                                ),
                              ),
                            ),]
                          ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height/6),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("BLOG", style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05, fontFamily: "TwCenMTStd")),
                      SizedBox(height: MediaQuery.of(context).size.height / 40,),
                      Text("SOME OF OUR LATEST NEW" , style: TextStyle(fontSize: MediaQuery.of(context).size.height*0.025, fontFamily: "TwCenMTStd"))
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/9,),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 3,width:MediaQuery.of(context).size.width/3.5,
                              child: const Image(image: AssetImage("assets/images/homePage/latenews1.jpg"),fit: BoxFit.fill,)),
                          SizedBox(height: MediaQuery.of(context).size.height/25),
                          const Text("The New Normal: Touch-free Faucets for\n"
                            "Restrooms in Public Buildings", textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"),),
                          SizedBox(height: MediaQuery.of(context).size.height /25,),
                          const Text("After a few atypical years, the hustle and bustle\n"
                            "of a day in the city is back to what it used to be:\n"
                            "leaving the house and going to the office, taking\n"
                            "the car, bus or plane, grabbing a quick bite to eat\n"
                            "in a restaurant, stopping by a museum", textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: "TwCenMTStd"),),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 3,width:MediaQuery.of(context).size.width/3.5,
                              child: const Image(image: AssetImage("assets/images/homePage/latenews2.jpg"),fit: BoxFit.fill,)),
                          SizedBox(height:MediaQuery.of(context).size.height/25),
                          const Text("Metaverse Building Concepts to Become\n"
                            "Homes for People in Need", textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"),),
                          SizedBox(height: MediaQuery.of(context).size.height/25,),
                          const Text("Red Wing Shoes has unveiled its new Builders\n"
                            "Exchange Program to bring virtual and real-world\n"
                            "builders together. Collaborating with Roblox,\n"
                            "virtual and real-world\n"
                            "builders together. ", textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: "TwCenMTStd"),),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 3,width:MediaQuery.of(context).size.width/3.5,
                              child: const Image(image: AssetImage("assets/images/homePage/latenews3.jpg"),fit: BoxFit.fill,)),
                          SizedBox(height: MediaQuery.of(context).size.height/25),
                          const Text("Can Windows Be Better Insulators?",
                          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"),),
                          SizedBox(height: MediaQuery.of(context).size.height/18.8),
                          const Text("Windows are thermal holes. In most\n"
                            "cases, the insulating capacity of glazed\n"
                            "apertures compares poorly with the\n"
                            "performance of the surrounding envelope.\n"
                            "The result is a familiar tug-of-war", textAlign: TextAlign.center,
                          style: TextStyle(fontFamily: "TwCenMTStd"),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height/9,),
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/30, right: MediaQuery.of(context).size.width/30),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                  child:
                  Center(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => {
                          Navigator.pushNamed(context,'/blog')
                        },
                        child: Text(
                          'SEE ALL',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize:  MediaQuery.of(context).size.height * 0.035, fontFamily: "Segoe UI"
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/6),
                const Footer(),
              ],
            ),
          ),
        ),
      ) ,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

