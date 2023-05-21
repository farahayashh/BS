import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:myapp/pages/projects.dart';
import '../footer.dart';
import 'blog.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
                    Navigator.pushNamed(context,'/projects')
                  },
                  child: Text('Projects' ,
                    style: TextStyle(color: _textColor1, fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
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
                child: GestureDetector(
                  onTap: () => {
                    Navigator.pushNamed(context,'/contact')
                  },
                  child: Text('Contact' ,
                    style: TextStyle(color: const Color(0xEAAF8632), fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd", fontWeight: FontWeight.bold,),),),
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
                    Navigator.pushNamed(context,'/blog')
                  },
                  child: Text('Blog' ,
                    style: TextStyle(color: _textColor3, fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
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
          width: MediaQuery.of(context).size.width ,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height:MediaQuery.of(context).size.height/10),
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 6),
                  child: Row(children: [
                    Text("Contact", style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05, fontFamily: "TwCenMTStd"),),
                    SizedBox(width: MediaQuery.of(context).size.width / 70),
                    Text("WITH US:" , style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05, fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd")),
                  ],),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/10),
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 5, right: MediaQuery.of(context).size.width/5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height /20,width: MediaQuery.of(context).size.height/20,
                                  child: const Image(image: AssetImage("assets/icons/contact/email.jpg"),),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.height/20,),
                                Text("info@bsdesign.com" ,
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize:  MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd"),),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height / 15,),
                            Row(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height /20,width: MediaQuery.of(context).size.height/20,
                                  child: const Image(image: AssetImage("assets/icons/contact/location.jpg"),),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.height/20,),
                                Text("Dubai - UAE" ,
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd" ),),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height / 15,),
                            Row(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height /20,width: MediaQuery.of(context).size.height/20,
                                  child: const Image(image: AssetImage("assets/icons/contact/phone.jpg"),),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.height/20,),
                                Text("+971 50 757 4722" , style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height * 0.028 , fontFamily: "TwCenMTStd"),),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height / 15,),
                            Row(
                              children:  [
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      const url = 'https://wa.me/+971507574722';
                                      html.window.open(url, '_blank');
                                    },
                                    child: SizedBox(
                                      height: MediaQuery.of(context).size.height /20,width: MediaQuery.of(context).size.height/20,
                                      child: const Image(image: AssetImage("assets/icons/contact/whatsapp.jpg"),),
                                ),
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.height/20,),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      const url = 'https://wa.me/+971507574722';
                                      html.window.open(url, '_blank');
                                    },
                                      child: Text("WhatsApp" ,
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd" ),)
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height / 15,),
                            Row(
                              children: [
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      const url = 'https://www.facebook.com/profile.php?id=100091442289478&mibextid=LQQJ4d';
                                      html.window.open(url, '_blank');
                                    },
                                    child: SizedBox(
                                      height: MediaQuery.of(context).size.height /20,width: MediaQuery.of(context).size.height/20,
                                      child: const Image(image: AssetImage("assets/icons/contact/facebook.jpg"),),
                                    ),
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.height/20,),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                      onTap: () {
                                        const url = 'https://www.facebook.com/profile.php?id=100091442289478&mibextid=LQQJ4d';
                                        html.window.open(url, '_blank');
                                      },
                                      child: Text("@b.sdesign_architecture" ,
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd" ),)
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height / 15,),
                            Row(
                              children: [
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      const url = 'https://instagram.com/b.sdeaign_architecture?igshid=YmMyMTA2M2Y=';
                                      html.window.open(url, '_blank');
                                    },
                                    child: SizedBox(
                                      height: MediaQuery.of(context).size.height /20,width: MediaQuery.of(context).size.height/20,
                                      child: const Image(image: AssetImage("assets/icons/contact/instagram.jpg"),),
                                    ),
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.height/20,),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      const url = 'https://instagram.com/b.sdeaign_architecture?igshid=YmMyMTA2M2Y=';
                                      html.window.open(url, '_blank');
                                    },
                                    child: Text("@b.sdesign_architecture" ,
                                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height * 0.028, fontFamily: "TwCenMTStd" ),),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      SizedBox(height: MediaQuery.of(context).size.height / 15,),
                       Container(
                         decoration: BoxDecoration(border: Border.all(color: Colors.black, )),
                        height:MediaQuery.of(context).size.height / 1.3, width: MediaQuery.of(context).size.width / 3,
                        child: const Image(image: AssetImage("assets/images/contact/googlemaps.jpg"),
                        fit: BoxFit.fill,),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 9,),
                const Divider(color: Colors.grey, thickness: 2.0, ),
                SizedBox(height: MediaQuery.of(context).size.height / 9,),
                const Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
