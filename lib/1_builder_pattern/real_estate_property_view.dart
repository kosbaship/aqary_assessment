import 'package:flutter/material.dart';

import 'helper_ui_builders.dart';

class BuilderPatternView extends StatelessWidget {
  const BuilderPatternView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Real Estate Property'),
        ),
        body: Center(
          child: CustomPropertyBuilder()
              .setName(
                CustomTextBuilder("Luxury Villa")
                    .fontSize(18.0)
                    .fontWeight(FontWeight.bold)
                    .build(),
              )
              .setDescription("Spacious 5-bedroom villa with a beautiful garden.")
              .setPrice(
                CustomTextBuilder("\$1,000,000").fontSize(16.0).build(),
              )
              .setLocation(
                CustomTextBuilder("Los Angeles").fontSize(16.0).build(),
              )
              .setImage("https://example.com/villa.jpg")
              .build(),
        ),
      ),
    );
  }
}

/// CustomDeveloperBuilder Example
//            CustomDeveloperBuilder()
//           .setType(DeveloperType.residential.name)
//           .setDescription("Building residential properties like homes and apartments.")
//           .build()

/// PropertyAdBuilder Example
//                PropertyAdBuilder()
//               .setTitle("Luxury Villa with Ocean View")
//               .setPrice(1000000.0)
//               .setDescription("Spacious 5-bedroom villa with a beautiful garden and a stunning ocean view.")
//               .setLocation("Los Angeles, CA")
//               .setImage("https://example.com/villa.jpg")
//               .setContactInfo("John Doe", "johndoe@example.com", "+1 123-456-7890")
//               .build()
