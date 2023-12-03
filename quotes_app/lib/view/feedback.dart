import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedbackForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          leading: InkWell(
            onTap:()=> Navigator.pop(context),
            child:const Icon(CupertinoIcons.back)),
          title:const Center(child: Text('Feedback Form')),
        ),
        body: FeedbackFormWidget(),
      ),
    );
  }
}

class FeedbackFormWidget extends StatefulWidget {
  @override
  _FeedbackFormWidgetState createState() => _FeedbackFormWidgetState();
}

class _FeedbackFormWidgetState extends State<FeedbackFormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _feedback = '';

  void _submitFeedback() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save(); // Save the form fields
      // You can handle the feedback submission here, e.g., send it to a server or store it locally.
      // For this example, we'll just print it to the console.
      print('Feedback submitted: $_feedback');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Feedback submitted!'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Your Feedback',
                hintText: 'Enter your feedback here',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your feedback';
                }
                return null;
              },
              onSaved: (value) {
                _feedback = value!;
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _submitFeedback,
              child: Text('Submit Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}
