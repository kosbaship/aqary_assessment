import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class ListWithStickyHeaderView extends StatelessWidget {
  final List<String> realEstateProperties = [
    'Luxury Apartment in Downtown',
    'Cozy Family Home with a Garden',
    'Modern Condo with a View',
    'Spacious Ranch Style House',
    'Seaside Villa with Pool',
    'Charming Cottage in the Woods',
    'Urban Loft in the Heart of the City',
    'Mountain Retreat with Scenic Views',
    'Beachfront Paradise with Private Beach',
    'Historic Mansion with Elegant Architecture',
    'Contemporary Penthouse with Skyline Views',
    'Rustic Cabin in a Peaceful Setting',
    'Elegant Townhouse in a Gated Community',
    'Luxury Apartment in Downtown',
    'Cozy Family Home with a Garden',
    'Modern Condo with a View',
    'Spacious Ranch Style House',
    'Seaside Villa with Pool',
    'Charming Cottage in the Woods',
    'Urban Loft in the Heart of the City',
    'Mountain Retreat with Scenic Views',
    'Beachfront Paradise with Private Beach',
    'Historic Mansion with Elegant Architecture',
    'Contemporary Penthouse with Skyline Views',
    'Rustic Cabin in a Peaceful Setting',
    'Elegant Townhouse in a Gated Community',
    'Luxury Apartment in Downtown',
    'Cozy Family Home with a Garden',
    'Modern Condo with a View',
    'Spacious Ranch Style House',
    'Seaside Villa with Pool',
    'Charming Cottage in the Woods',
    'Urban Loft in the Heart of the City',
    'Mountain Retreat with Scenic Views',
    'Beachfront Paradise with Private Beach',
    'Historic Mansion with Elegant Architecture',
    'Contemporary Penthouse with Skyline Views',
    'Rustic Cabin in a Peaceful Setting',
    'Elegant Townhouse in a Gated Community',
    'Luxury Apartment in Downtown',
    'Cozy Family Home with a Garden',
    'Modern Condo with a View',
    'Spacious Ranch Style House',
    'Seaside Villa with Pool',
    'Charming Cottage in the Woods',
    'Urban Loft in the Heart of the City',
    'Mountain Retreat with Scenic Views',
    'Beachfront Paradise with Private Beach',
    'Historic Mansion with Elegant Architecture',
    'Contemporary Penthouse with Skyline Views',
    'Rustic Cabin in a Peaceful Setting',
    'Elegant Townhouse in a Gated Community',
    'Luxury Apartment in Downtown',
    'Cozy Family Home with a Garden',
    'Modern Condo with a View',
    'Spacious Ranch Style House',
    'Seaside Villa with Pool',
    'Charming Cottage in the Woods',
    'Urban Loft in the Heart of the City',
    'Mountain Retreat with Scenic Views',
    'Beachfront Paradise with Private Beach',
    'Historic Mansion with Elegant Architecture',
    'Contemporary Penthouse with Skyline Views',
    'Rustic Cabin in a Peaceful Setting',
    'Elegant Townhouse in a Gated Community',
  ];

    ListWithStickyHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real Estate Listings'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Real Estate Listings'),
            ),
          ),
          SliverStickyHeader(
            header: Container(
              height: 50.0,
              color: Colors.grey[300],
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.centerLeft,
              child: const Text('Filter by: Price, Location, Bedrooms'),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return ListTile(
                    title: Text(realEstateProperties[index]),
                  );
                },
                childCount: realEstateProperties.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


