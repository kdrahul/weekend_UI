import 'package:flutter/material.dart';

class BroadcastSender extends StatelessWidget {
  const BroadcastSender({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Send Broadcast Message'),
        ),
        body: BroadcastForm(),
        floatingActionButton: FloatingActionButton.extended(
            label: Row(children: <Widget>[
              Text(
                'Send',
                style: TextStyle(fontSize: 20),
              ),
              Icon(Icons.arrow_forward_ios)
            ]),
            onPressed: () {}),
      ),
    );
  }
}

class BroadcastForm extends StatefulWidget {
  BroadcastForm({Key key}) : super(key: key);

  @override
  _BroadcastFormState createState() => _BroadcastFormState();
}

class _BroadcastFormState extends State<BroadcastForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Title'),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'This field is required';
                  }
                  return null;
                },
                maxLength: 32,
              ),
              SizedBox(),
              Expanded(
                child: TextFormField(
                  maxLines: null,
                  decoration: InputDecoration(labelText:'Body of the Broadcast Message'),
                  
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value.length < 10) {
                      return "Description too short";
                    }
                    return null;
                  },
                ),
              )
            ],
          )),
    );
  }
}
