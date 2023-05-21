import 'package:flutter/material.dart';
import 'package:myapp/pages/see_more.dart';
import 'package:myapp/pages/blog.dart';
import 'package:myapp/pages/contact.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/projects.dart';
import 'package:myapp/pages/see_more2.dart';
import 'package:myapp/pages/services.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => (const HomePage()),
      '/see_more': (context) => (const SeeMore()),
      '/see_more2': (context) => (const SeeMore2()),
      '/projects': (context) => (const Projects()),
      '/services': (context) => (const Services()),
      '/contact': (context) => (const Contact()),
      '/blog': (context) => (const Blog()),
    },
    debugShowCheckedModeBanner: false,
  ));
}