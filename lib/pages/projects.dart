import 'package:flutter/material.dart';
import '../footer.dart';
import '../project.dart';
import '../project2.dart';
import 'blog.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();


  static final List<String> _words = [
    'palm jumairah apartment' , 'palm', 'jumairah', 'apartment', 'palm jumairah', 'jumairah apartment', 'palm apartment',
    'abela and co' , 'abela & co' , 'abela' , 'co',
    'shatha tower lobby' , 'shatha' , 'tower' , 'lobby', 'shatha tower', 'shatha lobby' , 'tower lobby',
    'sharjah center washrooms' , 'sharjah' , 'center' , 'washrooms' , 'sharjah center' , 'sharjah washrooms' , 'center washrooms',
    'damac tower hotel', 'damac', 'tower', 'hotel', 'damac tower' , 'damac hotel' , 'tower hotel',
  ];

  static bool containsWord(String value) {
    return _words.map((w) => w.toLowerCase()).contains(value.toLowerCase());
  }




}

class _ProjectsState extends State<Projects> {
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
                child: GestureDetector(
                  onTap: () => {
                    Navigator.pushNamed(context,'/projects')
                  },
                  child: Text('Projects' ,
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
                    Navigator.pushNamed(context,'/services')
                  },
                  child: Text('Services' ,
                    style: TextStyle(color: _textColor2, fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
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
        width:MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height:MediaQuery.of(context).size.height/10),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width /10),
                  Text("PROJECTS:", textAlign: TextAlign.left, style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05, fontFamily: "TwCenMTStd"),),
                ],
              ),
              SizedBox( height: MediaQuery.of(context).size.height / 18,),
              SizedBox(
                width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height / 1.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                    height: MediaQuery.of(context).size.height / 1.7, width: MediaQuery.of(context).size.width * 0.66666666,
                    child: const Image(image: AssetImage("assets/images/projects/p1.jpg"),fit: BoxFit.fill),
                  ),
                  SizedBox(width:  MediaQuery.of(context).size.width * 0.33333333,
                    child: Stack(
                      children:[
                        Container(width:  MediaQuery.of(context).size.width * 0.33333333,
                        padding: EdgeInsets.only(left:  MediaQuery.of(context).size.width / 70, right:  MediaQuery.of(context).size.width / 50),
                        decoration: const BoxDecoration(color: Color(0xB7CBC3BD)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Padding(
                              padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height / 20),
                              child: Text("PALM JUMAIRAH APARTMENT" , style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.02,
                                  color: const Color(0xEAAF8632), fontFamily: "TwCenMTStd"),),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height / 30,),
                            Text("Classic soft tones feature throughout the\n"
                              "spacious apartment interiors.Design\n"
                              "elements have been selected to promote a\n"
                              "sense of luxury.\n"
                              "A opulent finish has been created through\n"
                              "internal finishes specified and they are\n"
                              "applied in a contemporary\n"
                              "way.", style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.03,
                                fontFamily: "TwCenMTStd", height: 1.1) ),
                            ]
                          ),
                        ),
                        Positioned(
                          bottom: MediaQuery.of(context).size.height / 20, right: 0,
                          child: Container(
                            height: MediaQuery.of(context).size.height / 15, width: MediaQuery.of(context).size.width *0.25,
                            decoration: const BoxDecoration(color: Colors.white),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () => {
                                  Navigator.pushNamed(context,'/see_more',
                                      arguments: Project(title: "PALM JUMAIRAH APARTMENT" ,
                                          text:
                                          "Classic soft tones feature throughout the spacious apartment interiors. Design elements have been \n"
                                          "selected to promote a sense of luxury.\n"
                                          "A opulent finish has been created through internal finishes specified and they are applied in a \n"
                                          "contemporary way." ,
                                          img1: "assets/images/see_more/p1.jpg",img2: "assets/images/see_more/p2.jpg",
                                          img3: "assets/images/see_more/p3.jpg",img4: "assets/images/see_more/p4.jpg"
                                      ))
                                },
                                child: Center(
                                    child: Text("SEE MORE", textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.035, color: Colors.grey, fontFamily: "Segoe UI"),),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                ],),
              ),
              SizedBox( height: MediaQuery.of(context).size.height / 15,),
              SizedBox(
                width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height / 1.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width:  MediaQuery.of(context).size.width * 0.33333333,
                      child: Stack(
                          children:[
                            Container(width:  MediaQuery.of(context).size.width * 0.33333333,
                              padding: EdgeInsets.only(left:  MediaQuery.of(context).size.width / 70, right:  MediaQuery.of(context).size.width / 50),
                              decoration: const BoxDecoration(color: Color(0xB7CBC3BD)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height / 20),
                                      child: Text("ABELA & CO" ,
                                        style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.02, color: const Color(0xEAAF8632), fontFamily: "TwCenMTStd"),),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height / 30,),
                                    Text("Beautifully designed, these luxurious, light-\n"
                                        "filled Ent offices are expertly arranged\n"
                                        "around a green sanctuary, replete with an\n"
                                        "air of tranquility. Impeccably designed\n"
                                        "and luxuriously finished. Extra large spaces\n"
                                        "with low maintenance entertaining.",
                                        style: TextStyle(fontSize:  MediaQuery.of(context).size.height * 0.03,fontFamily: "TwCenMTStd", height: 1.2) ),
                                  ]
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height / 20, right: 0,
                              child: Container(
                                height: MediaQuery.of(context).size.height / 15, width: MediaQuery.of(context).size.width *0.25,
                                decoration: const BoxDecoration(color: Colors.white),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () => {
                                      Navigator.pushNamed(context,'/see_more',
                                          arguments: Project(title: "ABELA & CO" ,
                                              text:
                                              "Beautifully designed, these luxurious, light-filled Ent offices are expertly arranged around a green sanctuary, \n"
                                              "replete with an air of tranquility.\n"
                                              "Impeccably designed and luxuriously finished. Extra large spaces with low maintenance entertaining." ,
                                              img1: "assets/images/see_more/a1.jpg",img2: "assets/images/see_more/a2.jpg",
                                              img3: "assets/images/see_more/a3.jpg",img4: "assets/images/see_more/a4.jpg"
                                          ))
                                    },
                                    child: Center(
                                      child: Text("SEE MORE", textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.035, color: Colors.grey, fontFamily: "Segoe UI"),),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.7, width: MediaQuery.of(context).size.width * 0.66666666,
                      child: const Image(image: AssetImage("assets/images/projects/p2.jpg"),fit: BoxFit.fill),
                    ),
                  ],),
              ),
              SizedBox( height: MediaQuery.of(context).size.height / 15,),
              SizedBox(
                width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height / 1.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.7, width: MediaQuery.of(context).size.width * 0.66666666,
                      child: const Image(image: AssetImage("assets/images/projects/p3.jpg"),fit: BoxFit.fill),
                    ),
                    SizedBox(width:  MediaQuery.of(context).size.width * 0.33333333,
                      child: Stack(
                          children:[
                            Container(width:  MediaQuery.of(context).size.width * 0.33333333,
                              padding: EdgeInsets.only(left:  MediaQuery.of(context).size.width / 70, right:  MediaQuery.of(context).size.width / 50),
                              decoration: const BoxDecoration(color: Color(0xB7CBC3BD)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height / 20),
                                      child: Text("SHATHA TOWER LOBBY" ,
                                        style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.02, color: const Color(0xEAAF8632), fontFamily: "TwCenMTStd"),),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height / 30,),
                                    Text("The custom designed Lobby of Shatha\n"
                                        "Tower boast striking veneer joinery. Clean\n"
                                        "lines and flush walls were achieved by\n"
                                        "recessing the skirting boards. Clever\n"
                                        "interior design focusing on the finer details\n"
                                        "delivered a high quality result\n"
                                        "incorporating standard products without\n"
                                        "compromise.",
                                        style: TextStyle(fontSize:  MediaQuery.of(context).size.height * 0.03, fontFamily: "TwCenMTStd", height: 1.1) ),
                                  ]
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height / 20, right: 0,
                              child: Container(
                                height: MediaQuery.of(context).size.height / 15, width: MediaQuery.of(context).size.width *0.25,
                                decoration: const BoxDecoration(color: Colors.white),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () => {
                                      Navigator.pushNamed(context,'/see_more2',
                                          arguments: Project2(title: "SHATHA TOWER LOBBY" ,
                                              text:
                                                  "The custom designed Lobby of Shatha Tower boast striking veneer joinery. Clean lines and flush walls were achieved by recessing\n"
                                                  "the skirting boards. Clever interior design focusing on the finer details delivered a high quality result\n"
                                                  "incorporating standard products without compromise." ,
                                              img1: "assets/images/see_more/s1.jpg",img2: "assets/images/see_more/s2.jpg",
                                              img3: "assets/images/see_more/s3.jpg",
                                          ))
                                    },
                                    child: Center(
                                      child: Text("SEE MORE", textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.035, color: Colors.grey, fontFamily: "Segoe UI"),),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                  ],),
              ),
              SizedBox( height: MediaQuery.of(context).size.height / 15,),
              SizedBox(
                width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height / 1.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width:  MediaQuery.of(context).size.width * 0.33333333,
                      child: Stack(
                          children:[
                            Container(width:  MediaQuery.of(context).size.width * 0.33333333,
                              padding: EdgeInsets.only(left:  MediaQuery.of(context).size.width / 70, right:  MediaQuery.of(context).size.width / 50),
                              decoration: const BoxDecoration(color: Color(0xB7CBC3BD)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height / 20),
                                      child: Text("SHARJAH CENTER WASHROOMS" ,
                                        style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.02, color: const Color(0xEAAF8632), fontFamily: "TwCenMTStd"),),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height / 30,),
                                    Text("Sharjah Center Washrooms is a commercial\n"
                                        "Project using of high quality materials and\n"
                                        "reputable brand appliances. The high\n"
                                        "quality craftsmanship and designer finishes\n"
                                        "makes your experience is unique.",
                                        style: TextStyle(fontSize:  MediaQuery.of(context).size.height * 0.03, fontFamily: "TwCenMTStd", height: 1.3) ),
                                  ]
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height / 20, right: 0,
                              child: Container(
                                height: MediaQuery.of(context).size.height / 15, width: MediaQuery.of(context).size.width *0.25,
                                decoration: const BoxDecoration(color: Colors.white),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () => {
                                      Navigator.pushNamed(context,'/see_more',
                                          arguments: Project(title: "SHARJAH CENTER WASHROOMS" ,
                                              text:
                                                  "Sharjah Center Washrooms is a commercial Project using of high quality materials and reputable brand appliances.\n"
                                                  "The high quality craftsmanship and designer finishes makes your experience is unique." ,
                                              img1: "assets/images/see_more/wc1.jpg",img2: "assets/images/see_more/wc2.jpg",
                                              img3: "assets/images/see_more/wc3.jpg",img4: "assets/images/see_more/wc4.jpg"
                                          ))
                                    },
                                    child: Center(
                                      child: Text("SEE MORE", textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.035, color: Colors.grey, fontFamily: "Segoe UI"),),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.7, width: MediaQuery.of(context).size.width * 0.66666666,
                      child: const Image(image: AssetImage("assets/images/projects/p4.jpg"),fit: BoxFit.fill),
                    ),
                  ],),
              ),
              SizedBox( height: MediaQuery.of(context).size.height / 15,),
              SizedBox(
                width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height / 1.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.7, width: MediaQuery.of(context).size.width * 0.66666666,
                      child: const Image(image: AssetImage("assets/images/projects/p5.jpg", ),fit: BoxFit.fill),
                    ),
                    SizedBox(width:  MediaQuery.of(context).size.width * 0.33333333,
                      child: Stack(
                          children:[
                            Container(width:  MediaQuery.of(context).size.width * 0.33333333,
                              padding: EdgeInsets.only(left:  MediaQuery.of(context).size.width / 70, right:  MediaQuery.of(context).size.width / 50),
                              decoration: const BoxDecoration(color: Color(0xB7CBC3BD)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Padding(
                                      padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height / 20),
                                      child: Text("DAMAC TOWERS - HOTEL" ,
                                        style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.02, color: const Color(0xEAAF8632), fontFamily: "TwCenMTStd"),),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height / 30,),
                                    Text("B.S DESIGN AND ARCHITECTURE has set\n"
                                        "new interior design benchmark standards\n"
                                        "with the detailed work completed for the\n"
                                        "Damac Towers.\n"
                                        "Careful attention and consideration to all\n"
                                        "aspects of the interior detail was required in\n"
                                        "an effort to reflect the luxury life on the city\n"
                                        "of Dubai.",
                                        style: TextStyle(fontSize:  MediaQuery.of(context).size.height * 0.03, fontFamily: "TwCenMTStd", height: 1.2) ),
                                  ]
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height / 20, right: 0,
                              child: Container(
                                height: MediaQuery.of(context).size.height / 15, width: MediaQuery.of(context).size.width *0.25,
                                decoration: const BoxDecoration(color: Colors.white),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () => {
                                      Navigator.pushNamed(context,'/see_more',
                                          arguments: Project(title: "DAMAC TOWERS - HOTEL" ,
                                              text:
                                              "B.S DESIGN AND ARCHITECTURE has set new interior design benchmark standards with the detailed work completed for the Damac Towers.\n"
                                              "Careful attention and consideration to all aspects of the interior detail was required in an effort to reflect\n"
                                              "the luxury life on the city of Dubai.",
                                              img1: "assets/images/see_more/d1.jpg",img2: "assets/images/see_more/d2.jpg",
                                              img3: "assets/images/see_more/d3.jpg",img4: "assets/images/see_more/d4.jpg"
                                          ))
                                    },
                                    child: Center(
                                      child: Text("SEE MORE", textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.035, color: Colors.grey, fontFamily: "Segoe UI"),),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                  ],),
              ),
              SizedBox( height: MediaQuery.of(context).size.height / 15,),
              SizedBox(
                width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height / 1.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width:  MediaQuery.of(context).size.width * 0.33333333,
                      child: Stack(
                          children:[
                            Container(width:  MediaQuery.of(context).size.width * 0.33333333,
                              padding: EdgeInsets.only(left:  MediaQuery.of(context).size.width / 70, right:  MediaQuery.of(context).size.width / 50),
                              decoration: const BoxDecoration(color: Color(0xB7CBC3BD)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height / 20),
                                      child: Text("PALM JUMAIRAH APARTMENT #2" ,
                                        style: TextStyle(fontSize:MediaQuery.of(context).size.width * 0.02, color: const Color(0xEAAF8632), fontFamily: "TwCenMTStd"),),
                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.height / 30,),
                                    Text("High levels of detail were required in this\n"
                                        "project with emphasis on execution and\n"
                                        "finish resulting in a sense of opulence and\n"
                                        "luxury.\n"
                                        "B.S DESIGN AND ARCHITECTURE boasts\n"
                                        "striking materials providing the finest\n"
                                        "quality in finishes and fittings also\n"
                                        "incorporated into the interior design.",
                                        style: TextStyle(fontSize:  MediaQuery.of(context).size.height * 0.03, fontFamily: "TwCenMTStd", height: 1.1) ),
                                  ]
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height / 20, right: 0,
                              child: Container(
                                height: MediaQuery.of(context).size.height / 15, width: MediaQuery.of(context).size.width *0.25,
                                decoration: const BoxDecoration(color: Colors.white),
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () => {
                                      Navigator.pushNamed(context,'/see_more',
                                          arguments: Project(title: "PALM JUMAIRAH APARTMENT #2" ,
                                              text:
                                                  "High levels of detail were required in this project with emphasis on execution and finish resulting in a sense of opulence and luxury.\n"
                                                  "B.S DESIGN AND ARCHITECTURE boasts striking materials providing the finest quality in finishes and fittings also\n"
                                                  "incorporated into the interior design." ,
                                              img1: "assets/images/see_more/a11.jpg",img2: "assets/images/see_more/a22.jpg",
                                              img3: "assets/images/see_more/a33.jpg",img4: "assets/images/see_more/a44.jpg"
                                          ))
                                    },
                                    child: Center(
                                      child: Text("SEE MORE", textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.035, color: Colors.grey, fontFamily: "Segoe UI"),),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.7, width: MediaQuery.of(context).size.width * 0.66666666,
                      child: const Image(image: AssetImage("assets/images/projects/p6.jpg"),fit: BoxFit.fill),
                    ),
                  ],),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 9,),
              const Divider(color: Colors.grey, thickness: 2.0, ),
              SizedBox(height: MediaQuery.of(context).size.height / 9,),
              const Footer(),
            ]
              ),
      ),
      ),
    ),
    );
  }
}
