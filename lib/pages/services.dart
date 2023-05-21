import 'package:flutter/material.dart';
import 'package:myapp/pages/projects.dart';
import '../footer.dart';
import 'blog.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  Color _textColor1 = Colors.black54 ;
  Color _textColor2 = Colors.black54 ;
  Color _textColor3 = Colors.black54 ;
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
                      style: TextStyle(color: _textColor2, fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.pushNamed(context,'/services')
                    },
                    child: Text('Services' ,
                      style: TextStyle(color: const Color(0xEAAF8632), fontSize: MediaQuery.of(context).size.height * 0.028, fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"),),
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
                      Navigator.pushNamed(context,'/contact')
                    },
                    child: Text('Contact' ,
                      style: TextStyle(color: _textColor3, fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),),
                ),
              ),
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
                    onTap: () => {
                      Navigator.pushNamed(context,'/blog')
                    },
                    child: Text('Blog' ,
                      style: TextStyle(color: _textColor1, fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
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
                    contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.002),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: const Color(0xEAAF8632), width: MediaQuery.of(context).size.height * 0.005),
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
    body: Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/6),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width /10),
                  Text("SERVICES:", textAlign: TextAlign.left,
                    style: TextStyle(fontSize: MediaQuery.of(context).size.height* 0.053, fontFamily: "TwCenMTStd"),),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 9,),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width /6),
                  Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text("01",
                            style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.height  * 0.15,color: const Color(0xB7CBC3BD), fontFamily: "TwCenMTStd"),
                            textAlign: TextAlign.left,),
                          SizedBox(height:MediaQuery.of(context).size.height / 2.5),
                          Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width /2,
                            color: const Color(0xB7CBC3BD),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width:MediaQuery.of(context).size.width / 20 ,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("ARCHITECTURE", style: TextStyle(color: const Color(0xEAAF8632), fontSize:MediaQuery.of(context).size.height *0.045 , fontFamily: "TwCenMTStd"),
                                textAlign: TextAlign.left,),
                              SizedBox(height:MediaQuery.of(context).size.height /15),
                              SizedBox(
                                child: Text("Architecture like you’ve never experienced it. Attention\n"
                                  "to detail defines a starting point for our designers.\n"
                                  "Innovative, technological and High-End materials\n"
                                  "represent for B.S DESIGN AND ARCHITECTURE the\n"
                                  "idea of quality and refinement to bring to your space.\n"
                                  "B.S DESIGN AND ARCHITECTURE provides\n"
                                  "professional Architectural services for all, and have\n"
                                  "successfully designed and supervised many buildings\n"
                                  "and structure types. ", style: TextStyle(fontSize:MediaQuery.of(context).size.height * 0.03, fontFamily: "TwCenMTStd" ,height: 1.2),),
                              )
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width / 12,),
                          Column(
                            children: [
                              SizedBox(height:MediaQuery.of(context).size.height /9),
                              SizedBox(width:MediaQuery.of(context).size.width / 4.9 , height: MediaQuery.of(context).size.height /2,
                                  child: const Image(image: AssetImage("assets/images/services/s1.jpg"))),
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width /10),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height /6),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width /6),
                  Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text("02",
                            style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.height  * 0.15,color: const Color(0xB7CBC3BD), fontFamily: "TwCenMTStd"),
                            textAlign: TextAlign.left,),
                          SizedBox(height:MediaQuery.of(context).size.height / 2.5),
                          Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width /2,
                            color: const Color(0xB7CBC3BD),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width:MediaQuery.of(context).size.width / 20 ,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("FF & E", style: TextStyle(color: const Color(0xEAAF8632), fontSize: MediaQuery.of(context).size.height *0.045 , fontFamily: "TwCenMTStd"),
                                textAlign: TextAlign.left,),
                              SizedBox(height:MediaQuery.of(context).size.height /20),
                              SizedBox(
                                child: Text("B.S DESIGN AND ARCHITECTURE provides the best\n"
                                    "FF&E (Furniture, fixtures, and equipment ) services as\n"
                                    "we have relationships with industry-leading companies\n"
                                    "to provide attractive, pre-negotiated pricing on high\n quality products that meet every need.\n"
                                    "We offer end to end management solutions covering\n"
                                    "specification, procurement and installation.\n"
                                    "Our Expert team finding the balance between quality\n"
                                    "furniture and fixtures and price. We pride ourselves\n"
                                    "on ensuring FF&E costs and procurement match the\n"
                                    "client’s budget.", style: TextStyle(fontSize:MediaQuery.of(context).size.height * 0.03, fontFamily: "TwCenMTStd" , height: 1.1),),
                              )
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width / 12,),
                          Column(
                            children: [
                              SizedBox(height:MediaQuery.of(context).size.height /9),
                              SizedBox(width:MediaQuery.of(context).size.width / 4.9 , height: MediaQuery.of(context).size.height /2,
                                  child: const Image(image: AssetImage("assets/images/services/s2.jpg"))),
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width /10),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height /6),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width /6),
                  Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text("03",
                            style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.height  * 0.15,color: const Color(0xB7CBC3BD), fontFamily: "TwCenMTStd"),
                            textAlign: TextAlign.left,),
                          SizedBox(height:MediaQuery.of(context).size.height / 2.5),
                          Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width /2,
                            color: const Color(0xB7CBC3BD),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width:MediaQuery.of(context).size.width / 20 ,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("DESIGN", style: TextStyle(color: const Color(0xEAAF8632), fontSize: MediaQuery.of(context).size.height *0.045 , fontFamily: "TwCenMTStd"),
                                textAlign: TextAlign.left,),
                              SizedBox(height:MediaQuery.of(context).size.height /20),
                              SizedBox(
                                child: Text("B.S DESIGN AND ARCHITECTURE offers a professional,\n"
                                    "innovative and creative approach to design for both\n"
                                    "products and architecture with emphasis on detail,\n"
                                    "functionality and perfection.\n"
                                    "With advanced 3D software and a highly creative\n"
                                    "team, we try to push the boundaries of what can be\n"
                                    "done opting to ask why not!\n"
                                    "Nothing is impossible and the most complex of\n"
                                    "problems can be solved with the simplest of solutions.",
                                  style: TextStyle(fontSize:MediaQuery.of(context).size.height * 0.03, fontFamily: "TwCenMTStd", height: 1.2 ),),
                              )
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width / 12,),
                          Column(
                            children: [
                              SizedBox(height:MediaQuery.of(context).size.height /9),
                              SizedBox(width:MediaQuery.of(context).size.width / 4.9 , height: MediaQuery.of(context).size.height /2,
                                  child: const Image(image: AssetImage("assets/images/services/s3.jpg"))),
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width /10),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height /6),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width /6),
                  Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text("04",
                            style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.height  * 0.15,color: const Color(0xB7CBC3BD), fontFamily: "TwCenMTStd"),
                            textAlign: TextAlign.left,),
                          SizedBox(height:MediaQuery.of(context).size.height / 2.5),
                          Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width /2,
                            color: const Color(0xB7CBC3BD),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width:MediaQuery.of(context).size.width / 20 ,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("RENOVATIONS & FIT OUT", style: TextStyle(color: const Color(0xEAAF8632), fontSize: MediaQuery.of(context).size.height *0.045 , fontFamily: "TwCenMTStd"),
                                textAlign: TextAlign.left,),
                              SizedBox(height:MediaQuery.of(context).size.height /20),
                              SizedBox(
                                child: Text("B.S DESIGN AND ARCHITECTURE offers an All Inclusive\n"
                                    "Renovation service with turnkey contract. we will guide\n"
                                    "you through the design process, meeting all your needs\n"
                                    "and supporting your ideas with well-defined costs and\n"
                                    "times\n"
                                    "Our team will start the project once the documented\n"
                                    "details with comprehensive drawings for the design\n"
                                    "intent are completed. We will initiate the demolition\n"
                                    "process, analyze the space and provide design\n"
                                    "documents.", style: TextStyle(fontSize:MediaQuery.of(context).size.height * 0.03, fontFamily: "TwCenMTStd", height: 1.2 ),),
                              )
                            ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width / 12,),
                          Column(
                            children: [
                              SizedBox(height:MediaQuery.of(context).size.height /9),
                              SizedBox(width:MediaQuery.of(context).size.width / 4.9 , height: MediaQuery.of(context).size.height /2,
                                  child: const Image(image: AssetImage("assets/images/services/s4.jpg"))),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width /10),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height /6),
              const Footer(),
           ]
          ),
        ),
      ),
    )
    );
  }
}
