import 'package:flutter/material.dart';

class IAData {
  Text iaName;
  Text iaAverage;

  IAData({@required this.iaName, @required this.iaAverage});
}

List<IAData> iaDataList = [
  IAData(iaName: Text("1st Internals"), iaAverage: Text("94")),
  IAData(iaName: Text("2nd Internals"), iaAverage: Text("80")),
  IAData(iaName: Text("3rd Internals"), iaAverage: Text("72")),
];

class IAMarks extends StatelessWidget {
  const IAMarks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: iaDataList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            title: iaDataList[index].iaName,
            trailing: iaDataList[index].iaAverage,
            onTap: () {},
          );
        },
      ),
    );
  }
}
