import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About Us'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(projectOverview),
          ))
        ])));
  }
}

String projectOverview = """
Project Overview:

Project Name: GlamGarb
Developer: SalmanulFaris.k
Development Platform: Flutter

Ecommerce Platform Features:

User Registration and Authentication:
    - YourEcommerceHub enables users to create and manage their accounts securely.
    - User authentication ensures a safe and personalized shopping experience.

Product Catalog:
    - A comprehensive product catalog showcasing a diverse range of items.
    - Detailed product listings with images, descriptions, and prices.

Shopping Cart and Checkout:
    - Seamless shopping cart functionality for users to add, remove, and modify their selected items.
    - Secure and user-friendly checkout process for a smooth transaction.

Order Tracking:
    - Real-time order tracking to keep users informed about their purchase status.
    - Notifications for order confirmation, shipping, and delivery updates.

User Reviews and Ratings:
    - Customers can leave reviews and ratings for products they've purchased.
    - Social proof and feedback contribute to an informed shopping community.

Discounts and Promotions:
    - Periodic discounts, promotions, and special offers to enhance the shopping experience.
    - Coupon codes and loyalty programs for user engagement.

Responsive Design:
    - YourEcommerceHub is designed to be accessible across various devices with a responsive and user-friendly interface.
    - Mobile responsiveness ensures a consistent experience on smartphones, tablets, and desktops.

Purpose of the Project:

The primary goal of YourEcommerceHub is to provide users with a convenient and secure online shopping platform. We aim to offer a diverse range of high-quality products while prioritizing user experience and satisfaction. YourEcommerceHub is dedicated to creating a seamless and enjoyable online shopping journey for our customers.

Potential Learning Objectives:

- Implementing a robust ecommerce platform using Flutter.
- Creating an intuitive and responsive user interface for optimal user experience.
- Integrating secure payment gateways for seamless transactions.
- Managing product data efficiently for an extensive catalog.
- Implementing customer engagement features such as reviews, discounts, and promotions.

Note:

YourEcommerceHub is a testament to our commitment to delivering a top-notch ecommerce solution. Developed by SalmanulFaris.k, this project showcases expertise in ecommerce development, user interface design, and creating an enjoyable online shopping experience.
""";

