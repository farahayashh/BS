import 'package:flutter/material.dart';
import 'package:myapp/pages/projects.dart';
import 'package:myapp/project.dart';
import '../footer.dart';
import 'blog.dart';

class SeeMore extends StatefulWidget {
  const SeeMore({Key? key}) : super(key: key);

  @override
  _SeeMoreState createState() => _SeeMoreState();
}

class _SeeMoreState extends State<SeeMore> {
  Color _textColor1 = Colors.black54 ;
  Color _textColor2 = Colors.black54 ;
  Color _textColor3 = Colors.black54 ;
  @override
  Widget build(BuildContext context) {
    Project? project = ModalRoute.of(context)!.settings.arguments as Project?;
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
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              SizedBox(height:MediaQuery.of(context).size.height/10),
              Row(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width /10,),
                  Text(project!.title!, textAlign: TextAlign.left,
                      style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05, color: const Color(0xEAAF8632), fontFamily: "TwCenMTStd"),),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/6),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width /10,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/5.5,height:  MediaQuery.of(context).size.height/2,
                      child: Image(image: AssetImage(project.img1!,), fit: BoxFit.fill,),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 200,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/5.5, height:  MediaQuery.of(context).size.height/2,
                      child: Image(image: AssetImage(project.img2!,), fit: BoxFit.fill,),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 200,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/5.5, height:  MediaQuery.of(context).size.height/2,
                      child: Image(image: AssetImage(project.img3!,), fit: BoxFit.fill,),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 200,),
                    SizedBox(
                      width:MediaQuery.of(context).size.width /5.5, height: MediaQuery.of(context).size.height/2,
                      child: Image(image: AssetImage(project.img4!,), fit: BoxFit.fill,),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width /10,),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/6,),
              Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width /10,),
                    Text(project.text!, style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.03, fontFamily: "TwCenMTStd", height: 1.2),),]
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
