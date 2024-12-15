// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:glowy/clip.dart';
import 'package:glowy_borders/glowy_borders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
    
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
     {
  

  @override
  Widget build(BuildContext context) {
    // double currentProgress = 500.5;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Anmationn(
            
              child: Center(
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      
                      "Hello Word",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              )),
        ),
      ),
    );

    // Scaffold(
    //   extendBody: true,
    //   body: SafeArea(
    //     child: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           const Column(
    //             children: [Text('Hallo Welt')],
    //           ),
    //           AnimatedGradientBorder(
    //             animationTime: 30,
    //             borderSize: 10,
    //             glowSize: 20.0,
    //             gradientColors: [
    //               const Color.fromARGB(0, 8, 242, 172),
    //               const Color.fromARGB(0, 225, 75, 175),
    //               const Color.fromARGB(0, 235, 154, 79),
    //               const Color.fromARGB(0, 8, 242, 172),
    //               const Color.fromARGB(0, 225, 75, 175),
    //               const Color.fromARGB(0, 235, 154, 79),
    //               const Color.fromARGB(0, 8, 242, 172),
    //               const Color.fromARGB(0, 225, 75, 175),
    //               const Color.fromARGB(0, 235, 154, 79),
    //             ],
    //             animationProgress: currentProgress,
    //             borderRadius: BorderRadius.all(Radius.circular(999)),
    //             child: SizedBox(
    //               width: 300,
    //               height: 300,
    //               child: Container(
    //                 decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.all(Radius.circular(999)),
    //                     color:
    //                         Theme.of(context).colorScheme.secondaryContainer),
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Text("current value: $currentProgress",
    //                         style:
    //                             TextStyle(color: Colors.white, fontSize: 30.0)),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}

class Anmationn extends StatefulWidget {
  const Anmationn({
    Key? key,
    // required this.con,
    // required this.tn,
    // required this.ln,
    this.radius = 30,
    this.blurRadius = 30,
    this.spreadRediue = 1,
    this.topClolor = Colors.red,
    this.bottomColor = Colors.blue,
    this.glowOpeacity = 0.3,
    this.duration = const Duration(milliseconds: 500),
    this.thickness = 3,
    required this.child,
  }) ;

  // final AnimationController con;
  // final Animation<Alignment> tn;
  // final Animation<Alignment> ln;

  final double radius;
  final double blurRadius;
  final double spreadRediue;
  final Color topClolor;
  final Color bottomColor;
  final double glowOpeacity;
  final Duration duration;
  final double thickness;
  final Widget child;

  @override
  State<Anmationn> createState() => _AnmationnState();
}

class _AnmationnState extends State<Anmationn>  with SingleTickerProviderStateMixin{
late AnimationController con;
  late Animation<Alignment> ln;
  late Animation<Alignment> tn;

  @override
  void initState() {
    super.initState();
    con = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    ln = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1),
    ]).animate(con);
    tn = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topLeft, end: Alignment.topRight),
          weight: 1),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.topRight, end: Alignment.bottomRight),
          weight: 1),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomRight, end: Alignment.bottomLeft),
          weight: 1),
      TweenSequenceItem<Alignment>(
          tween: Tween<Alignment>(
              begin: Alignment.bottomLeft, end: Alignment.topLeft),
          weight: 1),
    ]).animate(con);
    con.repeat();
  }


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, covariant) {
      return Stack(
        children: [

          widget.child != null
              ? ClipRRect(
                  borderRadius:
                      BorderRadius.all(Radius.circular(widget.radius)),
                  child: widget.child,
                )
              : const SizedBox.shrink(),
          ClipPath(
            clipper: _CenterCutpsath(
                redius: widget.radius, thickness: widget.thickness),
            child: AnimatedBuilder(
                animation: con,
                builder: (con, _) {
                  return Stack(
                    children: [
                      Container(
                        width: covariant.maxWidth,
                        height: covariant.maxHeight,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(
                                Radius.circular(widget.radius)),
                            boxShadow: [
                              BoxShadow(
                                color: widget.topClolor,
                                offset: const Offset(0, 0),
                                blurRadius: widget.blurRadius,
                                spreadRadius: widget.spreadRediue,
                              )
                            ]),
                      ),
                      Align(
                        alignment: tn.value,
                        child: Container(
                          width: covariant.maxWidth * 0.95,
                          height: covariant.maxWidth * 0.95,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(widget.radius)),
                              boxShadow: [
                                BoxShadow(
                                    color: widget.bottomColor,
                                    offset: const Offset(0, 0),
                                    blurRadius: widget.blurRadius,
                                    spreadRadius: widget.spreadRediue)
                              ]),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(widget.radius)),
                            gradient: LinearGradient(
                                begin: tn.value,
                                end: ln.value,
                                colors: [
                                  widget.topClolor,
                                  widget.bottomColor
                                ])),
                      ),
                    ],
                  );
                }),
          ),
        ],
      );
    });
  }
}




class _CenterCutpsath extends CustomClipper<Path> {
  final double redius;
  final double thickness;

  _CenterCutpsath({this.redius = 0, this.thickness = 1});

  @override
  Path getClip(Size size) {
    Rect rect = Rect.fromLTRB(-size.width, -size.width, size.width * 2, size.height * 2);
    final double width = size.width - thickness * 2;
    final double height = size.height - thickness * 2;
    final path = Path()
      ..fillType = PathFillType.evenOdd
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(thickness, thickness, width, height),
          Radius.circular(redius - thickness),
        ),
      )
      ..addRect(rect);

    return path;
  }

  @override
  bool shouldReclip(covariant _CenterCutpsath oldClipper) {

    return oldClipper.redius != redius || oldClipper.thickness != thickness;
  }
}
