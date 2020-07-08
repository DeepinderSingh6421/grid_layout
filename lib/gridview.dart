import 'package:flutter/material.dart';

class MyGridView {
  GestureDetector getStructureGridCell(name, image) {
    // Wraopping the child under GestureDetector to setup a on click action
    return GestureDetector(
      //onTap fat error method
      onTap: () => print("onTap called"),

      child: Card(
        elevation: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image(image: AssetImage('data_repo/img/' + image)),
            Center(
              child: Text(name),
            )
          ],
        ),
      ),
    );
  }

  GridView build() {
    return GridView.count(
      primary: true,
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 0.85,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: <Widget>[
        getStructureGridCell("Facebook", "social/facebook.png"),
        getStructureGridCell("Twitter", "social/twitter.png"),
        getStructureGridCell("Instagram", "social/instagram.png"),
        getStructureGridCell("Linkedin", "social/linkedin.png"),
        getStructureGridCell("Google plus", "social/google_plus.png"),
        getStructureGridCell("Launcher Icon", "ic_launcher.png"),
      ],
    );
  }
}
