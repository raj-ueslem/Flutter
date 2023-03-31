import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    // LicenseRegistry.addLicense(() async* {
    //   final license = await rootBundle.loadString('google_fonts/OFL.txt');
    //   yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    // });

    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    String loremIpsum = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.';

    Widget text(String message) {
      return Text(message);
    }

    // Widget column1Container() {
    //   return Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Container(
    //         padding: const EdgeInsets.all(10),
    //         color: Colors.green,
    //         width: _width,
    //         child: Center(
    //           child: Text('Google_fonts'),
    //         ),
    //       )
    //     ],
    //   );
    // }

    // Widget column2Container() {
    //   return Row(
    //       children: [
    //         Container(
    //           padding: const EdgeInsets.all(10),
    //           width: (_width * 100) / 100,
    //           height: (_height * 20) / 100,
    //           decoration: BoxDecoration(
    //               border: Border.all(width: 1)
    //           ),
    //           child: styleGoogleFonts()
    //         )
    //       ],
    //     );
    // }
    
    Widget textStyleGoogleFonts() {
      return Text(loremIpsum, 
        style: GoogleFonts.lato(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600
        ),
      );
    }

    Widget textStyleLatoFont() {
      return Text(loremIpsum,
        style: const TextStyle(
            fontFamily: 'Lato'),
      );
    }
    
    Widget columnTextContainer({required Widget textLorem}) {
      return Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: (_width * 100) / 100,
              height: (_height * 20) / 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 1)
              ),
              child: textLorem
            )
          ],
        );
    }

    Widget columnGreenContainer({required String message1}) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.green,
            width: _width,
            child: Center(
              child: text(message1),
            ),
          )
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: text(widget.title),
      ),
      body: Column(
        children: [
          columnGreenContainer(message1: "Google_fonts"),
          const SizedBox(height: 10,),
          columnTextContainer(textLorem: textStyleGoogleFonts()),
          const SizedBox(height: 10,),
          columnGreenContainer(message1: 'Lato_fonts'),
          const SizedBox(height: 10,),
          columnTextContainer(textLorem: textStyleLatoFont()),
        ],
      )
    );
  }
}
