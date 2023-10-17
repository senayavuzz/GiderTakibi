import 'package:flutter/material.dart';
import '../widgets/category_screen/category_fetcher.dart';
import '../widgets/expense_form.dart';
import 'package:calendar_appbar/calendar_appbar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  static const name = '/category_screen'; // for routes
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: CalendarAppBar(

          onDateChanged: (value) => print(value),
          firstDate: DateTime.now().subtract(Duration(days: 140)),
          lastDate: DateTime.now(),

      ),
      body: const CategoryFetcher(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (_) => const ExpenseForm(),
          );
          color: Color(0XFF8F9BFF);
        },
        child: const Icon(Icons.add),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        child: Material(
          child: SizedBox(width: double.infinity,height: 35.0),
          color: Color(0XFF8F9BFF),
        ),
      ),
    );
  }
}
