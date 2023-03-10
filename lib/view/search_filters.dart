import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../components/category_list_tile.dart';
import '../components/status_list_tile.dart';
import '../constant/const.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final List<CategoryListTile> categories = <CategoryListTile>[
    CategoryListTile(title: 'Official organization'),
    CategoryListTile(title: 'NGOs'),
    CategoryListTile(title: 'UNBorder'),
    CategoryListTile(title: 'Others')
  ];

  final List<StatusListTile> statuses = <StatusListTile>[
    StatusListTile(title: 'Inbox', color: Colors.red),
    StatusListTile(title: 'Pending', color: Colors.amber),
    StatusListTile(title: 'In Progress', color: Colors.blue),
    StatusListTile(title: 'Completed', color: Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text("Filters",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500)),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.only(left: 12),
          child: TextButton(
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: ksecColor,
                fontSize: 20,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: TextButton(
              child: const Text(
                'Done',
                style: TextStyle(
                  color: ksecColor,
                  fontSize: 20,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
              height: 265,
              // margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(left: 8, right: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: ListView.separated(
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return categories[index];
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                        color: Colors.grey,
                      ))),
          SizedBox(height: 17),
          Container(
              height: 265,
              // margin: EdgeInsets.all(24),
              padding: EdgeInsets.only(left: 8, right: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: ListView.separated(
                  itemCount: statuses.length,
                  itemBuilder: (BuildContext context, int index) {
                    return statuses[index];
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                        color: Colors.grey,
                      ))),
          ExpansionTile(
              title: const Text('Date', style: TextStyle(fontSize: 18)),
              leading: const Icon(
                Icons.date_range,
                color: Colors.red,
              ),
              subtitle: const Text(
                'Tuesday, July 5, 2022',
                style: TextStyle(color: ksecColor, fontSize: 12),
              ),
              children: [
                // SfDateRangePicker(
                //   selectionMode:
                //   DateRangePickerSelectionMode.single,
                //   initialSelectedRange: PickerDateRange(
                //       DateTime.now()
                //           .subtract(const Duration(days: 4)),
                //       DateTime.now().add(const Duration(days: 3))),
                // ),
              ]),
        ],
      ),
    );
  }
}
