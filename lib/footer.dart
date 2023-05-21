import 'package:flutter/material.dart';
import 'package:myapp/pages/home_page.dart';
import "dart:html" as html;

class Footer extends StatefulWidget implements PreferredSizeWidget{
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _FooterState extends State<Footer> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("OUR", style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.05, fontFamily: "TwCenMTStd")),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              Text("CLIENTS" , style: TextStyle(fontSize:MediaQuery.of(context).size.height * 0.05, fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"))
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:   [
            SizedBox(width: MediaQuery.of(context).size.width/8,),
            SizedBox(height: MediaQuery.of(context).size.width/11,width: MediaQuery.of(context).size.width/12,
              child: const Image(image:  AssetImage("assets/images/homePage/c1.jpg",),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height:MediaQuery.of(context).size.width/8, width: MediaQuery.of(context).size.width/9,
              child: const Image(image:  AssetImage("assets/images/homePage/c2.jpg"),
                fit: BoxFit.fill,),
            ),
            SizedBox(height: MediaQuery.of(context).size.width/8 ,width: MediaQuery.of(context).size.width/6,
              child: const Image(image:  AssetImage("assets/images/homePage/c3.jpg"),
                fit: BoxFit.fill,),
            ),
            SizedBox(height: MediaQuery.of(context).size.width/8 ,width: MediaQuery.of(context).size.width/9,
              child: const Image(image:  AssetImage("assets/images/homePage/c4.jpg"),
                fit: BoxFit.fill,),
            ),
            SizedBox(height: MediaQuery.of(context).size.width/12,width: MediaQuery.of(context).size.width/6,
              child: const Image(image:  AssetImage("assets/images/homePage/c5.jpg"),
                fit: BoxFit.fill,),
            ),
            SizedBox(width: MediaQuery.of(context).size.width/8,),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
        Container(
          color: const Color(0xB7CBC3BD),
          height: MediaQuery.of(context).size.height * 0.30,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Connect with us",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.height * 0.045, fontFamily: "TwCenMTStd"
                  ),),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width / 4.5),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.065, width: MediaQuery.of(context).size.width / 3.73,
                      child: TextField(
                        controller: nameController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'NAME',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize:MediaQuery.of(context).size.height * 0.032, fontFamily: "Segoe UI"
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width * 0.005),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(color: const Color(0xEAAF8632), width: MediaQuery.of(context).size.width * 0.005),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(color: const Color(0xEAAF8632), width: MediaQuery.of(context).size.width * 0.005),
                          ),
                          alignLabelWithHint: true,
                        ),
                        cursorColor: const Color(0xEAAF8632),
                      ),
                    ),
                    SizedBox(width:  MediaQuery.of(context).size.width * 0.015),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.065, width: MediaQuery.of(context).size.width / 3.73,
                      child: TextField(
                        controller: emailController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'EMAIL',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: MediaQuery.of(context).size.height * 0.032, fontFamily: "Segoe UI"
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width * 0.005),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(color: const Color(0xEAAF8632), width:  MediaQuery.of(context).size.width * 0.005),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(color: const Color(0xEAAF8632), width:  MediaQuery.of(context).size.width * 0.005),
                          ),
                          alignLabelWithHint: true,
                        ),
                        cursorColor: const Color(0xEAAF8632),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 4.5),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width / 4.5),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.065,  width: MediaQuery.of(context).size.width / 2.16,
                      child: TextField(
                        controller: messageController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'MESSAGE',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: MediaQuery.of(context).size.height * 0.032, fontFamily: "Segoe UI"
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(color: const Color(0xEAAF8632), width:  MediaQuery.of(context).size.width * 0.005),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide(color: const Color(0xEAAF8632), width:  MediaQuery.of(context).size.width * 0.005),
                          ),
                          alignLabelWithHint: true,
                        ),
                        cursorColor: const Color(0xEAAF8632),
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                      ),
                    ),
                    SizedBox(width:  MediaQuery.of(context).size.width * 0.015),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          sendEmail(
                            nameController.text,
                            emailController.text,
                            messageController.text,
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.065,  width: MediaQuery.of(context).size.width / 13.5,
                          decoration: const BoxDecoration(
                            color: Colors.black54,),
                          child: Center(
                            child: Text(
                              "SEND",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: MediaQuery.of(context).size.height * 0.032, fontFamily: "TwCenMTStd"
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 4.5),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height * 0.30,
          width:  MediaQuery.of(context).size.width,
          child: Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width / 13),
              SizedBox(height: MediaQuery.of(context).size.height * 0.25,width: MediaQuery.of(context).size.height * 0.25,
                  child: const Image(image: AssetImage("assets/icons/homePage/logo2.jpg"),
                  )),
              SizedBox(width: MediaQuery.of(context).size.width / 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.email, size: MediaQuery.of(context).size.width * 0.023, color: Colors.white,),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      Text("info@bsdesign.com", style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025, color: Colors.white, fontFamily: "TwCenMTStd"
                      ),)],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: MediaQuery.of(context).size.width * 0.023, color: Colors.white,),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      Text("Dubai - UAE", style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025, color: Colors.white, fontFamily: "TwCenMTStd"
                      ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone, size: MediaQuery.of(context).size.width * 0.023, color: Colors.white,),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      Text("+971 50 757 4722", style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025, color: Colors.white, fontFamily: "TwCenMTStd"
                      ),)],
                  ),
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.width / 2.8),
              Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.width / 10,),
                  Row(
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          child:
                           SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,width: MediaQuery.of(context).size.height * 0.05,
                            child: const Image(image: AssetImage("assets/icons/homePage/instagram.jpg"),),
                          ),
                          onTap: () {
                            const url = 'https://instagram.com/b.sdeaign_architecture?igshid=YmMyMTA2M2Y=';
                            html.window.open(url, '_blank');
                          },
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          child:
                           SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,width: MediaQuery.of(context).size.height * 0.05,
                            child: const Image(image: AssetImage("assets/icons/homePage/linkedin.jpg"),),
                          ),
                          onTap: () {
                            const url = 'https://www.linkedin.com/company/reddeer-interior/';
                            html.window.open(url, '_blank');
                          },
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          child:
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,width: MediaQuery.of(context).size.height * 0.05,
                            child: const Image(image: AssetImage("assets/icons/homePage/facebook.jpg"),),
                          ),
                          onTap: () {
                            const url = 'https://www.facebook.com/profile.php?id=100091442289478&mibextid=LQQJ4d';
                            html.window.open(url, '_blank');
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
