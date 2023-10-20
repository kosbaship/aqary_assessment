import 'package:flutter/material.dart';

class Property extends StatefulWidget {
  final Text name;
  final Text description;
  final Text price;
  final Text location;
  final String imageUrl;

  const Property({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.location,
    required this.imageUrl,
  });

  @override
  PropertyState createState() => PropertyState();
}

class PropertyState extends State<Property> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.name,
        widget.description,
        widget.location,
        widget.price,
        Image.network(widget.imageUrl, width: 200, height: 150),
      ],
    );
  }
}

class Developer extends StatefulWidget {
  final Text type;
  final Text description;

  const Developer({
    required this.type,
    required this.description,
    super.key,
  });

  @override
  DeveloperState createState() => DeveloperState();
}

class DeveloperState extends State<Developer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.type,
        widget.description,
      ],
    );
  }
}

class PropertyAd extends StatefulWidget {
  final String title;
  final double price;
  final String description;
  final String location;
  final String imageUrl;
  final String contactName;
  final String contactEmail;
  final String contactPhone;

  PropertyAd({
    required this.title,
    required this.price,
    required this.description,
    required this.location,
    required this.imageUrl,
    required this.contactName,
    required this.contactEmail,
    required this.contactPhone,
  });

  @override
  PropertyAdState createState() => PropertyAdState();
}

class PropertyAdState extends State<PropertyAd> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(widget.imageUrl, width: 200, height: 150),
        Text("Property Title: ${widget.title}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text("Description: ${widget.description}"),
        Text("Location: ${widget.location}"),
        Text("Price: \$${widget.price.toStringAsFixed(2)}"),
        Text("Contact: ${widget.contactName}"),
        Text("Email: ${widget.contactEmail}"),
        Text("Phone: ${widget.contactPhone}"),
      ],
    );
  }
}
