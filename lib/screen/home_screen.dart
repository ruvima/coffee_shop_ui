import 'package:coffee_shop_ui/widgets/small_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C0F14),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SmallButton(
                    icon: Icon(Icons.menu),
                  ),
                  SmallButton(
                    decorationImage: DecorationImage(
                      image: AssetImage('assets/person.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 10, bottom: 20),
                child: Text(
                  'Find the best\ncoffe for you',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'BebasNeue'),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade900,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Color(0xFF0C0F14), width: 2),
                  ),
                  constraints:
                      const BoxConstraints.tightFor(width: 327, height: 54),
                  labelText: 'Find Your Cofee...',
                  labelStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
