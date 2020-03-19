import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BroadcastContent {
  String body;
  String title;
  String sender;
  DateTime givenTime;
  NetworkImage backgroundImage;

  BroadcastContent(
      {this.title,
      this.sender,
      this.givenTime,
      this.backgroundImage,
      this.body});

  String get formattedDate =>
      DateFormat('yyyy-MM-dd kk:mm').format(givenTime);
}

BroadcastContent broadcastContent = BroadcastContent(
  title: "Random Message",
  body:
      "This is a random Message broadcasted across everyone to test a feature",
  sender: "KD",
  givenTime: DateTime(2020, 1, 19, 18, 20),
  backgroundImage: NetworkImage(
      'https://scontent.fblr2-1.fna.fbcdn.net/v/t31.0-8/p960x960/17310137_1369535206425427_3080480981439398624_o.jpg?_nc_cat=101&_nc_sid=85a577&_nc_oc=AQmNzuKtvtz4Y54hAVWz1I1DynJeUgCZfUe_6CCoitg8RU1YQjXpCQkUpK44lFd5gVo&_nc_ht=scontent.fblr2-1.fna&_nc_tp=6&oh=7a1c99a230fa38a1378b76e5dee73dca&oe=5E990C22'),
);
