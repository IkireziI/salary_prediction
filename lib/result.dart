import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Add back navigation logic
          },
        ),
        title: Text(
          'Your estimated salary is \$120,000',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16),
            InfoCard(
              title: 'Company Size',
              highlightedText: '10-50 employees',
              ranges: [
                'Small',
                'Mid',
                'Large',
              ],
            ),
            SizedBox(height: 16),
            InfoCard(
              title: 'Years of Experience',
              highlightedText: '6 years',
              ranges: [
                '5',
                '6',
                '7',
              ],
            ),
            SizedBox(height: 16),
            InfoCard(
              title: 'Education Level',
              highlightedText: "Master's degree",
              ranges: [
                'High School',
                "Bachelor's",
                "Master's",
              ],
            ),
            SizedBox(height: 16),
            Text(
              'The model predicts a range of salaries based on the company size, years of experience, and education level. This is not a guarantee.',
              style: TextStyle(color: Colors.grey[700], fontSize: 14),
              textAlign: TextAlign.center,
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Add your navigation logic here
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: Colors.blue,
              ),
              child: Text(
                'Explore Salary Ranges',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String highlightedText;
  final List<String> ranges;

  const InfoCard({
    required this.title,
    required this.highlightedText,
    required this.ranges,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            highlightedText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 8),
          Column(
            children: ranges.map((range) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    range,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  Expanded(
                    child: Container(
                      height: 6,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
