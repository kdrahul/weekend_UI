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
      "“Thin” and “light” are still very much the qualities that define the Air. It’s a product that trades the processing power of the rest of the MacBook family in favor of a design that slips comfortably into the seat-back pocket in front of you on the plane. Indeed, the device has never been the one you want for heavy video processing or other resource-intensive applications. And while the 2020 model gets some important internal updates, that remains the case here.If, however, you’re worried about lower-back pain, this is probably the MacBook for you",
  sender: "KD",
  givenTime: DateTime(2020, 1, 19, 18, 20),
  backgroundImage: NetworkImage(
      'https://scontent.fblr2-1.fna.fbcdn.net/v/t31.0-8/p960x960/17310137_1369535206425427_3080480981439398624_o.jpg?_nc_cat=101&_nc_sid=85a577&_nc_oc=AQmNzuKtvtz4Y54hAVWz1I1DynJeUgCZfUe_6CCoitg8RU1YQjXpCQkUpK44lFd5gVo&_nc_ht=scontent.fblr2-1.fna&_nc_tp=6&oh=7a1c99a230fa38a1378b76e5dee73dca&oe=5E990C22'),
);
