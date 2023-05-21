import 'package:flutter/material.dart';
import 'package:myapp/pages/projects.dart';
import '../footer.dart';


class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  _BlogState createState() => _BlogState();

  static final List<String> _words = [
    'high-end', 'high-end finishing', 'luxury', 'sanitary', 'sanitary ware', 'interior', 'design', 'building of the building',
    'symmetry', 'interior design', 'lap of luxury', 'building', 'japandi', 'japandi style', 'classic', 'architecture',
    'classic architecture', 'balance', 'harmony',' the perfect blend of japanese and scandinavian design', 'the perfect blend',
    'japanese and scandinavian','japanese and scandinavian design',
  ];

  static bool containsWord(String value) {
    return _words.map((w) => w.toLowerCase()).contains(value.toLowerCase());
  }
}

class _BlogState extends State<Blog> {
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
                  child: GestureDetector(
                    onTap: () => {
                      Navigator.pushNamed(context,'/blog')
                    },
                    child: Text('Blog' ,
                      style: TextStyle(color: const Color(0xEAAF8632), fontSize: MediaQuery.of(context).size.height * 0.028, fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"),),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height:MediaQuery.of(context).size.height / 9),
                  Padding(
                    padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/15,
                        right: MediaQuery.of(context).size.width/15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 4, height : MediaQuery.of(context).size.height / 1.2,
                            child: const Image(image: AssetImage('assets/images/blog/b1.jpg',),
                          fit: BoxFit.fill,)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("High-end finishing in interior design                                                       ",
                              textAlign: TextAlign.left, style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.035, fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"),),
                            SizedBox(height: MediaQuery.of(context).size.height/40,),
                            SizedBox( width: MediaQuery.of(context).size.width/2, height: MediaQuery.of(context).size.height /1.2,
                              child: Text("High-end interior design is all about creating a luxurious and comfortable living space with the finest and most sophisticated touches. From elegant furniture to exquisite lighting, these elements all combine to create a seamless and stylish environment. One of the most important aspects of high-end interior design is the finishing, which sets the tone for the entire aesthetic and ambiance."
                                  "Here are some high-end interior design finishing ideas that can take your home to the next level:"
                                  "Fine ArtFine art pieces can add a touch of grandeur and elegance to any room. A beautiful painting or sculpture can be the center of any room and set the tone for the rest of the design. Choose art that complements the overall color scheme and theme of the room."
                                  "Intricate Wall Treatments"
                                  "High-end interior designers always strive for intricate wall treatments that add depth, texture, and interest to a room. From intricate wallpapers to hand-painted murals, unique wall treatments can create a luxurious ambiance."
                                  "Custom LightingLighting is one of the most important aspects of high-end interior design. Custom lighting fixtures, such as chandeliers or sconces, can add a touch of glamour and sophistication to any space. High-end interior designers select fixtures that complement the style and overall design of the space."
                                  "Exquisite Flooring"
                                  "The flooring of a room can significantly impact the overall aesthetic and ambiance. High-end interior designers often choose materials like marble, hardwood, or natural stone to create timeless and opulent floors. Intricate patterns, textures, and finishes all contribute to the bespoke look and feel of the space."
                                  "Custom Cabinetry and MillworkCustom cabinetry and millwork are essential in high-end interior design. Custom pieces not only provide functionality but also add elegance and glamour to the room. From custom-built shelves to bespoke cabinetry, these pieces elevate the overall aesthetic."
                                  "High-End Furniture"
                                  "No high-end interior design is complete without thoughtfully chosen furniture. Selecting the right pieces can transform a space from ordinary to extraordinary. High-end furniture should not only be stylish but also comfortable, durable and functional."
                                  "In conclusion, high-end interior design finishing is essential in creating a luxurious and sophisticated living space. From fine art to intricate wall treatments, custom lighting, exquisite flooring, custom cabinetry, and bespoke furniture, these elements all contribute to creating a cohesive and high-end look and feel. A well-executed design plan with top-quality finishing can take any space to the next level.",
                                textAlign: TextAlign.justify, maxLines: 50,
                                overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontFamily: "TwCenMTStd", fontSize: MediaQuery.of(context).size.height * 0.024855, height: 1.2),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 10),
                  Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/15,
                      right: MediaQuery.of(context).size.width/15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 4, height : MediaQuery.of(context).size.height / 1.2,
                            child: const Image(image: AssetImage('assets/images/blog/b2.jpg',),
                              fit: BoxFit.fill,)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Symmetry in Classic Architecture: A Study in Balance and Harmony         ",
                              textAlign: TextAlign.left, style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.035, fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"),),
                            SizedBox(height: MediaQuery.of(context).size.height/25,),
                            SizedBox( width: MediaQuery.of(context).size.width/2, height: MediaQuery.of(context).size.height /1.2,
                              child: Text("Throughout history, classic architecture has been celebrated for its beautiful and intricate designs "
                                  "that have stood the test of time. One essential element of classical architecture that contributes to "
                                  "its iconic appeal is symmetry. Symmetry is the balance and proportion of elements within a structure, "
                                  "and it is an essential concept in the design of classic architecture. At its most basic, symmetry is "
                                  "defined as the equal distribution of weight and force around a center point. In classical architecture, "
                                  "symmetry is achieved by using classical orders such as Doric, Ionic, or Corinthian columns, which are "
                                  "proportioned with specific ratios that ensure visual balance. The orders are used in multiples to create "
                                  "a rhythm and repetition of forms that create visual weight and balance. To achieve symmetry in classical "
                                  "architecture, the overall form of the building is often symmetrical around a central axis or line. "
                                  "The façade of a building typically has a centered entrance, a main section with repeating patterns or "
                                  "forms, and two symmetrical wings. The use of symmetrical balance in classical architecture is not just "
                                  "about creating a visually pleasing structure, but it is also about evoking symbolism and philosophical "
                                  "ideas. For example, in ancient Greek temples, symmetry was used to represent order and balance in the "
                                  "cosmos. In Renaissance architecture, symmetry was used to represent the perfection and harmony of the "
                                  "natural world. When examining classical architecture, one can see the use of symmetry in many iconic "
                                  "landmarks, such as the Parthenon, the Palace of Versailles, and the United States Capitol. "
                                  "The Parthenon in Athens, Greece, is often seen as a masterpiece of classical architecture. It has "
                                  "a symmetrical façade with eight Doric columns on each side of the entrance, creating a sense of balance "
                                  "and harmony. The columns of the Parthenon are also tapered slightly, creating the illusion of greater "
                                  "height as they soar upward towards the sky. The Palace of Versailles in France is another example "
                                  "of how symmetry was used to convey power and balance. Its grand façade features monumental columns, "
                                  "repeating vaults, and a central entrance that leads to a grand staircase. The building's symmetrical "
                                  "proportions are a testament to the skill and craftsmanship of the architects who designed it. "
                                  "In summary, symmetry is an essential concept in classical architecture that creates balance, harmony, "
                                  " and proportion. It is a principle that has been used to represent order, balance, and perfection in the "
                                  "natural world, and it has left an enduring legacy in the architectural world. Symmetry in classical "
                                  "architecture is a beautiful testament to the human desire for balance, harmony, and meaning in the world "
                                  "around us.", textAlign: TextAlign.justify, maxLines: 50,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontFamily: "TwCenMTStd", fontSize: MediaQuery.of(context).size.height * 0.0245, height: 1.2),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 10),
                  Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/15,
                      right: MediaQuery.of(context).size.width/15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 4, height : MediaQuery.of(context).size.height / 1.2,
                            child: const Image(image: AssetImage('assets/images/blog/b3.jpg',),
                              fit: BoxFit.fill,)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(" In the lap of luxury – How sanitary ware is evolving?                              ",
                              textAlign: TextAlign.left, style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.035, fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"),),
                            SizedBox(height: MediaQuery.of(context).size.height/25,),
                            SizedBox( width: MediaQuery.of(context).size.width/2, height: MediaQuery.of(context).size.height /1.2,
                              child: Text("Sanitary ware, often referred to as bathroom fittings, play an increasingly important role in interior "
                                  "design. They are not simply functional elements anymore but are also being used to redefine the aesthetics "
                                  "of bathrooms. Sanitary ware includes a wide variety of products such as toilets, bidets, washbasins, "
                                  "shower trays, bathtubs, and urinals. One of the most significant impacts of sanitary ware on interior "
                                  "design is the way they can create a mood and transform the space. The style and design of a bathroom's "
                                  "fittings can change the entire ambiance of the room. The use of modern or traditional designs, bold or "
                                  "subtle color palettes, and various textures can create different effects. For example, using a sleek and "
                                  "modern design with clean lines, minimalistic fixtures, and a monochromatic color scheme can create a "
                                  "strikingly contemporary look. On the other hand, a more traditional style with ornate fixtures, warm colors, "
                                  "and rustic finishes can evoke a cozy and inviting atmosphere. Sanitary ware can also be used to make a "
                                  "statement in the bathroom. Bold and unique designs with bright colors or unusual shapes can elevate the "
                                  "room's design, adding an artistic element to it. The use of high-quality materials like marble, granite, "
                                  "and brass can also add luxury and elegance to the space. Another impact of sanitary ware on interior design "
                                  "is the ability to create more efficient and functional bathrooms. With modern design and engineering, "
                                  " bathroom fixtures can be integrated with smart technology to conserve water, electricity, and save on space. "
                                  "For example, dual-flush toilets and low-flow faucets can significantly reduce water consumption, "
                                  "while space-saving fixtures like wall-mounted toilets and sinks can free up valuable square footage. "
                                  "In conclusion, sanitary ware is no longer just a functional aspect of bathroom design. It has evolved to become "
                                  "an integral part of interior design, impacting the overall aesthetics, mood, and functionality of the bathroom. "
                                  "With a range of designs, colors, materials, and smart technology, sanitary ware offers endless possibilities for "
                                  "creating unique and striking bathrooms.",
                                textAlign: TextAlign.justify, maxLines: 50,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontFamily: "TwCenMTStd", fontSize: MediaQuery.of(context).size.height * 0.0255, height: 1.4),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 10),
                  Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/15,
                      right: MediaQuery.of(context).size.width/15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 4, height : MediaQuery.of(context).size.height / 1.2,
                            child: const Image(image: AssetImage('assets/images/blog/b4.jpg',),
                              fit: BoxFit.fill,)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("The building of the future                                                                     ",
                              textAlign: TextAlign.left, style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.035, fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"),),
                        SizedBox(height: MediaQuery.of(context).size.height/40,),
                        SizedBox( width: MediaQuery.of(context).size.width/2, height: MediaQuery.of(context).size.height /1.2,
                              child: Text("As we peer into the future of architecture, the industry is filled with creative and innovative ideas. "
                                  "From sustainable materials to futuristic designs, let's explore some of the exciting trends happening "
                                  "in architecture Sustainable ArchitectureSustainable architecture has become increasingly popular with "
                                  "the growing concern over climate change. Architects are turning to new eco-friendly materials and "
                                  "design techniques to create buildings that emit less carbon while still looking beautiful. Expect "
                                  "to see more green roofs, solar panels, and rainwater harvesting systems in buildings across the world. "
                                  "Augmented Reality, Augmented reality is already making waves in the gaming and entertainment industry, "
                                  "but architects are now adopting this technology too. By using augmented reality, architects can create 3D "
                                  "models and immersive experiences for clients and stakeholders. They can walk through the building and see how "
                                  "it will look before it's even built, making the design process more efficient and effective. "
                                  "Smart Building SystemsAs technology continues to advance, smart building systems are becoming more popular. "
                                  "Smart buildings use sensors and data to optimize energy efficiency and improve user experience. Expect to see "
                                  "more buildings that adjust their lighting, ventilation, and heating based on user behavior or environmental "
                                  "factors. Biophilic Design, Biophilic design is an architecture trend that mimics the natural world to create "
                                  "a healthier and more sustainable environment, especially in urban areas. This design form incorporates natural "
                                  " elements such as plants and water features into building design to create a space that's inviting, relaxing, "
                                  "and healthy. Modular Construction, Modular construction is the future of building projects in urban areas, "
                                  "as it reduces the construction time and materials needed. In this method, the building is fully assembled in "
                                  "the factory and then transported to the location to be assembled on site. This means less disruption to the "
                                  "surrounding buildings and fewer emissions from transportation. In conclusion, the future of architecture is both "
                                  " exciting and sustainable. Architects are using these new technologies and materials to create buildings that "
                                  "are beautiful, functional, and environmentally responsible. Whether it's through utilizing sustainable materials "
                                  " or incorporating biophilic design, the architecture industry is committed to creating a better future for everyone. "
                                  " As an AI language model, I cannot predict what the future holds, but I can certainly say "
                                  "that the industry is dedicated to constant innovation and creativity.",
                                textAlign: TextAlign.justify, maxLines: 70,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontFamily: "TwCenMTStd", fontSize: MediaQuery.of(context).size.height * 0.02435, height: 1.3),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 10),
                  Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/15,
                      right: MediaQuery.of(context).size.width/15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 4, height : MediaQuery.of(context).size.height / 1.2,
                            child: const Image(image: AssetImage('assets/images/blog/b5.jpg',),
                              fit: BoxFit.fill,)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Japandi Style: The Perfect Blend of Japanese and Scandinavian Design   ",
                              textAlign: TextAlign.left, style: TextStyle(fontSize: MediaQuery.of(context).size.height * 0.035, fontWeight: FontWeight.bold, fontFamily: "TwCenMTStd"),),
                            SizedBox(height: MediaQuery.of(context).size.height/40,),
                            SizedBox( width: MediaQuery.of(context).size.width/2, height: MediaQuery.of(context).size.height /1.2,
                              child: Text("Japandi is a fusion of Japanese and Scandinavian design, which produces a minimalist aesthetic "
                                  "that combines the best elements of both cultures. Japandi style is known for its simplicity, "
                                  "functionality, and subtle elegance, making it a popular choice for those who love clean lines "
                                  "and natural colors. Here’s everything you need to know about this style and how to incorporate "
                                  "it into your home. What is Japandi Style? Japandi style is essentially a hybrid between two "
                                  "contrasting styles: Japanese minimalism and Scandinavian coziness. It brings together the functional "
                                  "simplicity of Japanese design with the warm, inviting comfort of Scandinavian interiors. Japanese "
                                  "design emphasizes clean lines, too, with a focus on natural materials, minimalist color palettes, "
                                  "and practical decor items. In contrast, Scandinavian design is all about creating a cozy and warm "
                                  "atmosphere with layers of textures, natural materials, and soft lighting. Japandi style, "
                                  "therefore, combines the best of both worlds. It uses simple shapes and natural materials to create "
                                  "a calming, minimalist space, but also incorporates cozy touches such as soft throws and pillows, "
                                  "to make a room inviting. The Color Palette Japandi style favors a muted color palette, featuring "
                                  "mainly natural or pale tones such as beige, black, white, and gray. Accents in copper or muted tones "
                                  "of pink, green, or blue can be added to bring a touch of color, but they should be kept to a minimum "
                                  "for an unfussy look. Furniture and Materials For Japandi style, functionality and simplicity are the most "
                                  "important qualities when choosing furniture. Opt for clean lines, simple shapes, and natural materials such "
                                  "as wood or bamboo. Minimalist furniture such as low sofas and floor cushions are also great options. "
                                  "For flooring, go with hardwood or tiles in neutral shades. Carpets and rugs provide warmth and textural "
                                  "interest, so choose them wisely. Lighting, Lighting plays an important part in Japandi style. It's "
                                  "important to create a relaxing atmosphere with warm, soft light. Paper lanterns, Pendant lights, "
                                  "or floor lamps in natural shades are perfect for this style. Natural Elements Japandi style emphasizes "
                                  "the use of natural elements such as plants, stones, and water. Zen gardens, pebble walls, and bonsai "
                                  "trees are all popular items to incorporate into a room. Final Thoughts Japandi style is perfect for "
                                  "those who enjoy the simplicity of Japanese design as well as the coziness of Scandinavian interiors. "
                                  "It combines two contrasting styles to create a beautifully harmonious space that is both functional and "
                                  "inviting. Incorporate neutral tones, natural materials, and minimalist furniture for a Japandi look that "
                                  "is soothing, calm, and stylish.",
                                textAlign: TextAlign.justify, maxLines: 50,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontFamily: "TwCenMTStd", fontSize: MediaQuery.of(context).size.height * 0.025, height: 1.2),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 6),
                  const Footer(),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
