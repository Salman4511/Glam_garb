import 'package:flutter/material.dart';
import 'package:glam_garb/infrastructure/service/profile/profile_repo.dart';
import 'package:glam_garb/shared/constants/constants.dart';


class OrderDetailsScreen extends StatefulWidget {
  final String id;
  final String name;
  final int mobile;
  final String area;
  final String city;
  final String state;
  final int pinCode;
  final String houseName;
  final String status;
  final int total;
  final String paymentType;
  final String returnStatus;
  final String returnReason;
  final String imgUrl;
  final String productId;
  final int quantity;
  final String size;
  final String productName;
  final String productDescription;

  const OrderDetailsScreen(
      {super.key,
      required this.mobile,
      required this.area,
      required this.city,
      required this.pinCode,
      required this.houseName,
      required this.status,
      required this.total,
      required this.paymentType,
      required this.name,
      required this.state,
      required this.id,
      required this.returnStatus,
      required this.returnReason, required this.imgUrl, required this.productId, required this.quantity, required this.size, required this.productName, required this.productDescription,});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var baseUrl = 'https://www.elegancestores.online/admin/assets/imgs/products/';
    return Scaffold(
      // backgroundColor: kblackcolor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              // color: kwhite,
            )),
        backgroundColor: kwhite,
        title: Text(
          'Order Details',
          // style: ktextStyleForAppBar,
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kheight50,
              
              Text(
                '  Customer:',
                style: ktextstyle8,
              ),
              kheight,
              Row(
                children: [
                  kwidth50,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name: ${widget.name}',
                        style: ktextstyle9,
                      ),
                      Text(
                        'Contact No.: ${widget.mobile.toString()}',
                        style: ktextstyle9,
                      ),
                    ],
                  ),
                ],
              ),
              kheight20,
              Text(
                '  Deliver To:',
                style: ktextstyle8,
              ),
              kheight,
              Row(
                children: [
                  kwidth50,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.name} ',
                        style: ktextstyle9,
                      ),
                      Text(
                        '${widget.houseName},${widget.city},${widget.area}',
                        style: ktextstyle9,
                      ),
                      Text(
                        '${widget.state},${widget.pinCode.toString()}',
                        style: ktextstyle9,
                      ),
                      Text(
                        widget.mobile.toString(),
                        style: ktextstyle9,
                      ),
                    ],
                  ),
                ],
              ),
              kheight20,
              Text(
                '  Payment Info:',
                style: ktextstyle8,
              ),
              kheight,
              Row(
                children: [
                  kwidth50,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Amount: ₹${widget.total.toString()}',
                        style: ktextstyle9,
                      ),
                      Text(
                        'Payment Methord: ${widget.paymentType}',
                        style: ktextstyle9,
                      ),
                    ],
                  ),
                ],
              ),
              kheight20,
              Text(
                '  Order Info:',
                style: ktextstyle8,
              ),
              kheight,
              Row(
                children: [
                  kwidth50,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Status: ${widget.status}',
                            style: ktextstyle9,
                          ),
                          kwidth,
                          IconButton(
                              onPressed: () {
                                _showStatusDialog(context);
                              },
                              icon: const Icon(
                                Icons.edit,
                                color: kwhite,
                              ))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          widget.returnStatus == 'Return requested'
              ? Row(
                  children: [
                    kwidth,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kheight20,
                        Text(
                          'Return Reason:',
                          style: textstyle1,
                        ),
                        kheight,
                        Row(
                          children: [
                            kwidth50,
                            Text(
                              'Reason: ${widget.returnReason}',
                              style: ktextstyle9,
                            ),
                          ],
                        ),
                        kheight20,
                        Row(
                          children: [
                           ElevatedButton(
                                  onPressed: () {
                                    // context.read<OrdersBloc>().add(
                                    //     OrdersEvent.acceptReturn(widget.id));
                                  },
                                  child: Text('Accept'),
                                ),

                            kwidth,
                            
                               ElevatedButton(
                                  onPressed: () {
                                    // context.read<OrdersBloc>().add(
                                    //     OrdersEvent.rejectReturn(widget.id));
                                  },
                                  child: Text('Reject'),
                                )
                             
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              : kheight,
          kheight20,
          Text(
            '  Product Info:',
            style: textstyle5,
          ),
          kheight,
          SizedBox(
            height: 150,
            child: Card(
      color: baseColor.shade100,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left side - Image Container

            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: NetworkImage(baseUrl + widget.imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Right side - Details and Buttons
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.productName, style: textstyle1),
                    Text(
                      widget.productDescription,
                      style: TextStyle(fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                    ),
                   
                    Text(
                      'Prize: ₹${widget.total}',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  
                    kheight20,
                  
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    )
                     



            
          ),
        ],
      ),
    );
  }

  void _showStatusDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String selectedStatus = 'Delivered'; // Default value

        return AlertDialog(
          title: const Text('Select Status'),
          content: Container(
            color: kwhite,
            child: DropdownButton<String>(
              value: selectedStatus,
              items: <String>[
                'Delivered',
                'Shipped',
              ]
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ),
                  )
                  .toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedStatus = newValue;
                  });
                }
              },
            ),
          ),
          actions: [
            ElevatedButton(
                  onPressed: () {
                    print('Selected Status: $selectedStatus');
                    // context
                    //     .read<OrdersBloc>()
                    //     .add(OrdersEvent.editOrders(widget.id, selectedStatus));
                    Navigator.pop(context);
                  },
                  child: const Text('Confirm'),
                )
            
          ],
        );
      },
    );
  }
}
