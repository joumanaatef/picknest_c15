import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF6EFEA),

    /// Header
    appBar: PreferredSize(
    preferredSize: const Size.fromHeight(130),
    child: SafeArea(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const Text(
    "PickNest",
    style: TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    color: Color(0xFF0C4B3A),
    ),
    ),

    const SizedBox(height: 12),

    /// Search + Cart
    Row(
    children: [
    Expanded(
    child: Container(
    height: 45,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(25),
    ),
    child: const TextField(
    decoration: InputDecoration(
    hintText: "what do you search for?",
    prefixIcon: Icon(Icons.search),
    border: InputBorder.none,
    contentPadding:
    EdgeInsets.symmetric(vertical: 12),
    ),
    ),
    ),
    ),

    const SizedBox(width: 12),

    Container(
    height: 45,
    width: 45,
    decoration: BoxDecoration(
    color: const Color(0xFF0C4B3A),
    borderRadius: BorderRadius.circular(14),
    ),
    child: IconButton(
    icon: const Icon(
    Icons.shopping_cart_outlined,
    color: Colors.white,
    ),
    onPressed: () {},
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    ),
    ),

    /// Body
    body: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.all(16),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Container(
    color: Colors.white,
    child: ColorFiltered(
    colorFilter: ColorFilter.mode(
    Colors.green.withOpacity(0.15),
    BlendMode.overlay,
    ),
    child: Image.asset(
    'images/pickNest.png',
    width: double.infinity,
    fit: BoxFit.contain,
    ),
    ),
    ),
    ),
    ),
    ),);}}
