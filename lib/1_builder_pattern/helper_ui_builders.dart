import 'package:flutter/material.dart';

import 'custom_widgets.dart';

class CustomTextBuilder {
  String _text = '';
  double _fontSize = 14.0;
  FontWeight? _fontWeight;

  CustomTextBuilder(String text) {
    _text = text;
  }

  CustomTextBuilder fontSize(double fontSize) {
    _fontSize = fontSize;
    return this;
  }

  CustomTextBuilder fontWeight(FontWeight fontWeight) {
    _fontWeight = fontWeight;
    return this;
  }

  Text build() => Text(
        _text,
        style: TextStyle(fontSize: _fontSize, fontWeight: _fontWeight),
      );
}

class CustomPropertyBuilder {
  Text _name = const Text('', style: TextStyle(fontSize: 18.0));
  Text _description = const Text('');
  Text _price = const Text('', style: TextStyle(fontSize: 16.0));
  Text _location = const Text('', style: TextStyle(fontSize: 16.0));
  String _imageUrl = '';

  CustomPropertyBuilder setName(Text name) {
    _name = name;
    return this;
  }

  CustomPropertyBuilder setDescription(String description) {
    _description = Text(description);
    return this;
  }

  CustomPropertyBuilder setPrice(Text price) {
    _price = price;
    return this;
  }

  CustomPropertyBuilder setLocation(Text location) {
    _location = location;
    return this;
  }

  CustomPropertyBuilder setImage(String imageUrl) {
    _imageUrl = imageUrl;
    return this;
  }

  Property build() => Property(
        name: _name,
        description: _description,
        price: _price,
        location: _location,
        imageUrl: _imageUrl,
      );
}

class CustomDeveloperBuilder {
  Text _type = const Text('', style: TextStyle(fontSize: 18.0));
  Text _description = const Text('');

  CustomDeveloperBuilder setType(String type) {
    _type = Text(type);
    return this;
  }

  CustomDeveloperBuilder setDescription(String description) {
    _description = Text(description);
    return this;
  }

  Developer build() => Developer(type: _type, description: _description);
}

class PropertyAdBuilder {
  String _title = '';
  double _price = 0.0;
  String _description = '';
  String _location = '';
  String _imageUrl = '';
  String _contactName = '';
  String _contactEmail = '';
  String _contactPhone = '';

  PropertyAdBuilder setTitle(String title) {
    _title = title;
    return this;
  }

  PropertyAdBuilder setPrice(double price) {
    _price = price;
    return this;
  }

  PropertyAdBuilder setDescription(String description) {
    _description = description;
    return this;
  }

  PropertyAdBuilder setLocation(String location) {
    _location = location;
    return this;
  }

  PropertyAdBuilder setImage(String imageUrl) {
    _imageUrl = imageUrl;
    return this;
  }

  PropertyAdBuilder setContactInfo(String name, String email, String phone) {
    _contactName = name;
    _contactEmail = email;
    _contactPhone = phone;
    return this;
  }

  PropertyAd build() {
    return PropertyAd(
      title: _title,
      price: _price,
      description: _description,
      location: _location,
      imageUrl: _imageUrl,
      contactName: _contactName,
      contactEmail: _contactEmail,
      contactPhone: _contactPhone,
    );
  }
}
