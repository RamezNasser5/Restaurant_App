import 'package:flutter/material.dart';
import 'package:restaurant_app/models/order_model.dart';
import 'package:restaurant_app/views/cart_page.dart';

class DetailesContainer extends StatelessWidget {
  const DetailesContainer({
    super.key,
    required this.orderModel,
  });
  final OrderModel orderModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(80))),
      width: double.infinity,
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: MaterialButton(
                  minWidth: 5,
                  color: const Color(0xFF3E0F96),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text(
                        '4.8',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(
                  '${orderModel.price}',
                  style: const TextStyle(color: Color(0xFFCAB91C)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  orderModel.title,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        minWidth: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                      const Text(
                        "1",
                        style: TextStyle(color: Color(0xFFCAB91C)),
                      ),
                      MaterialButton(
                        minWidth: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        child: const Icon(Icons.delete),
                      ),
                    ],
                  )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              'Ordering food is the convenient process of selecting dishes from a menu and requesting their delivery or pickup, satisfying your culinary cravings with ease.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 250.0),
            child: Text(
              'Add Ons',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/IMG-20230914-WA0008.jpg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 70,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 30, // Adjust the size as needed
                      height: 30, // Adjust the size as needed
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20, // Adjust the size of the icon as needed
                      ),
                    ),
                  ),
                ),
              ]),
              Stack(children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/IMG-20230914-WA0001.jpg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 70,
                  child: Container(
                    width: 30, // Adjust the size as needed
                    height: 30, // Adjust the size as needed
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20, // Adjust the size of the icon as needed
                    ),
                  ),
                ),
              ]),
              Stack(children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/IMG-20230914-WA0012.jpg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 70,
                  child: Container(
                    width: 30, // Adjust the size as needed
                    height: 30, // Adjust the size as needed
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20, // Adjust the size of the icon as needed
                    ),
                  ),
                ),
              ]),
            ],
          ),
          MaterialButton(
            height: 40,
            minWidth: 250,
            color: const Color(0xFF3E0F96),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const CartPage();
              }));
            },
            child: const Text(
              'Add to cart',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
