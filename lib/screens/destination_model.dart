import 'package:powers/screens/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/Maldives.jpg',
    name: 'Maldives Sri Lanka',
    type: 'SightSeeing Tour',
    startTimes: ['12 am', '12pm'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/Burj.jpg',
    name: 'Burj Khalifa',
    type: 'Good site and logging',
    startTimes: ['12 am', '12pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/Eiffel.jpg',
    name: 'The Eiffel Tower',
    type: 'SightSeeing Tour',
    startTimes: ['12 am', '12pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/GreatWall.jpg',
    city: 'Beijing',
    country: 'China',
    description: 'Visit the one of the wonders of the word and be amazed.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/Instabul.jpg',
    city: 'Instabul',
    country: 'Turkey',
    description: 'Visit one of the most beautiful cities of the word.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/MaasaiMara.jpg',
    city: 'South East Kenya',
    country: 'Kenya',
    description: 'Visit and enjoy the great site of nature and the wild.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/NrbPark.jpg',
    city: 'Nairobi',
    country: 'Kenya',
    description: 'Visit the greatest park within the city.',
    activities: activities,
  ),
];
