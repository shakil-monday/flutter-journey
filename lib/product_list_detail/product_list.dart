import 'package:classico_cmd/product_list_detail/custom_widgets/app_icon_round_bg.dart';
import 'package:classico_cmd/product_list_detail/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "name": "Apple AirPods Pro (2nd Gen)",
      "brand": "Apple",
      "description": "AirPods Pro (2nd generation) feature up to 2x more Active Noise Cancellation, Adaptive Transparency, and Personalized Spatial Audio with dynamic head tracking. Powered by the Apple H2 chip, they offer up to 6 hours of listening time, touch controls, and a MagSafe charging case with a built-in speaker and lanyard loop.",
      "price": 24999,
      "discount": 0,
      "finalPrice": 22899,
      "category": "Electronics",
      "rating": 4.7,
      "reviewsCount": 21000,
      "stock": 50,
      "isFeatured": true,
      "isFavorite": true,
      "images": [
        "https://cdn.dummyjson.com/product-images/mobile-accessories/apple-airpods/1.webp",
        "https://cdn.dummyjson.com/product-images/mobile-accessories/apple-airpods/2.webp",
        "https://cdn.dummyjson.com/product-images/mobile-accessories/apple-airpods/3.webp",
      ],
      "createdAt": "2025-01-01",
    },
    {
      "id": 2,
      "name": "Apple iPhone 13 Pro",
      "brand": "Apple",
      "description": "The iPhone 13 Pro features a 6.1-inch Super Retina XDR display with ProMotion, the A15 Bionic chip, and a pro triple-camera system with macro photography and Cinematic mode.",
      "price": 119900,
      "discount": 10,
      "finalPrice": 107910,
      "category": "Smartphones",
      "rating": 4.8,
      "reviewsCount": 18500,
      "stock": 30,
      "isFeatured": true,
      "isFavorite": false,
      "images": [
        "https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/1.webp",
        "https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/2.webp",
        "https://cdn.dummyjson.com/product-images/smartphones/iphone-13-pro/3.webp",
      ],
      "createdAt": "2025-01-05",
    },
    {
      "id": 3,
      "name": "Apple iPhone X",
      "brand": "Apple",
      "description": "The iPhone X brings a bezel-less 5.8-inch OLED display, Face ID facial recognition, and dual 12MP rear cameras, marking a milestone in iPhone design.",
      "price": 64999,
      "discount": 15,
      "finalPrice": 55249,
      "category": "Smartphones",
      "rating": 4.4,
      "reviewsCount": 9200,
      "stock": 15,
      "isFeatured": false,
      "isFavorite": false,
      "images": [
        "https://cdn.dummyjson.com/product-images/smartphones/iphone-x/1.webp",
        "https://cdn.dummyjson.com/product-images/smartphones/iphone-x/2.webp",
        "https://cdn.dummyjson.com/product-images/smartphones/iphone-x/3.webp",
      ],
      "createdAt": "2025-01-10",
    },
    {
      "id": 4,
      "name": "Apple MacBook Pro 14\" Space Grey",
      "brand": "Apple",
      "description": "The 14-inch MacBook Pro in Space Grey is powered by the Apple M1 Pro chip, with a stunning Liquid Retina XDR display, up to 17 hours of battery life, and a full set of pro ports.",
      "price": 199900,
      "discount": 8,
      "finalPrice": 183908,
      "category": "Laptops",
      "rating": 4.9,
      "reviewsCount": 7600,
      "stock": 20,
      "isFeatured": true,
      "isFavorite": false,
      "images": [
        "https://cdn.dummyjson.com/product-images/laptops/apple-macbook-pro-14-inch-space-grey/1.webp",
        "https://cdn.dummyjson.com/product-images/laptops/apple-macbook-pro-14-inch-space-grey/2.webp",
        "https://cdn.dummyjson.com/product-images/laptops/apple-macbook-pro-14-inch-space-grey/3.webp",
      ],
      "createdAt": "2025-01-12",
    },
    {
      "id": 5,
      "name": "Asus Zenbook Pro Duo",
      "brand": "Asus",
      "description": "The Asus Zenbook Pro Duo is a high-performance dual-screen laptop with a 4K OLED main display and a ScreenPad Plus secondary screen, built for creators and multitaskers.",
      "price": 249990,
      "discount": 12,
      "finalPrice": 219991,
      "category": "Laptops",
      "rating": 4.5,
      "reviewsCount": 2100,
      "stock": 10,
      "isFeatured": false,
      "isFavorite": true,
      "images": [
        "https://cdn.dummyjson.com/product-images/laptops/asus-zenbook-pro-dual-screen-laptop/1.webp",
        "https://cdn.dummyjson.com/product-images/laptops/asus-zenbook-pro-dual-screen-laptop/2.webp",
        "https://cdn.dummyjson.com/product-images/laptops/asus-zenbook-pro-dual-screen-laptop/3.webp",
      ],
      "createdAt": "2025-01-15",
    },
    {
      "id": 6,
      "name": "Huawei MateBook X Pro",
      "brand": "Huawei",
      "description": "The Huawei MateBook X Pro is a slim, premium laptop with a 3K FullView touchscreen, Intel Core processors, and an all-metal body designed for professionals on the go.",
      "price": 139999,
      "discount": 10,
      "finalPrice": 125999,
      "category": "Laptops",
      "rating": 4.3,
      "reviewsCount": 3400,
      "stock": 18,
      "isFeatured": false,
      "isFavorite": false,
      "images": [
        "https://cdn.dummyjson.com/product-images/laptops/huawei-matebook-x-pro/1.webp",
        "https://cdn.dummyjson.com/product-images/laptops/huawei-matebook-x-pro/2.webp",
        "https://cdn.dummyjson.com/product-images/laptops/huawei-matebook-x-pro/3.webp",
      ],
      "createdAt": "2025-01-18",
    },
    {
      "id": 7,
      "name": "Amazon Echo Plus",
      "brand": "Amazon",
      "description": "The Amazon Echo Plus is a smart speaker with built-in Alexa voice control, premium 360° sound, and a built-in smart home hub to control compatible devices.",
      "price": 14999,
      "discount": 20,
      "finalPrice": 11999,
      "category": "Smart Home",
      "rating": 4.2,
      "reviewsCount": 12800,
      "stock": 60,
      "isFeatured": false,
      "isFavorite": false,
      "images": [
        "https://cdn.dummyjson.com/product-images/mobile-accessories/amazon-echo-plus/1.webp",
        "https://cdn.dummyjson.com/product-images/mobile-accessories/amazon-echo-plus/2.webp",
      ],
      "createdAt": "2025-01-20",
    },
    {
      "id": 8,
      "name": "Apple AirPods Max Silver",
      "brand": "Apple",
      "description": "AirPods Max are premium over-ear headphones with high-fidelity audio, Adaptive EQ, Active Noise Cancellation, and Spatial Audio, wrapped in a stainless steel and aluminium design.",
      "price": 59900,
      "discount": 5,
      "finalPrice": 56905,
      "category": "Electronics",
      "rating": 4.6,
      "reviewsCount": 8900,
      "stock": 25,
      "isFeatured": true,
      "isFavorite": true,
      "images": [
        "https://cdn.dummyjson.com/product-images/mobile-accessories/apple-airpods-max-silver/1.webp",
      ],
      "createdAt": "2025-01-22",
    },
    {
      "id": 9,
      "name": "Apple HomePod Mini Cosmic Grey",
      "brand": "Apple",
      "description": "HomePod mini is a compact smart speaker with rich 360° audio, Siri built in, and seamless integration with your Apple devices and smart home.",
      "price": 9900,
      "discount": 0,
      "finalPrice": 9900,
      "category": "Smart Home",
      "rating": 4.5,
      "reviewsCount": 6700,
      "stock": 40,
      "isFeatured": false,
      "isFavorite": false,
      "images": [
        "https://cdn.dummyjson.com/product-images/mobile-accessories/apple-homepod-mini-cosmic-grey/1.webp",
      ],
      "createdAt": "2025-01-25",
    },
    {
      "id": 10,
      "name": "Apple 20W USB-C iPhone Charger",
      "brand": "Apple",
      "description": "The Apple 20W USB-C power adapter delivers fast, efficient charging for your iPhone, iPad, and AirPods at home, in the office, or on the go.",
      "price": 1900,
      "discount": 0,
      "finalPrice": 1900,
      "category": "Accessories",
      "rating": 4.4,
      "reviewsCount": 15300,
      "stock": 120,
      "isFeatured": false,
      "isFavorite": false,
      "images": [
        "https://cdn.dummyjson.com/product-images/mobile-accessories/apple-iphone-charger/1.webp",
        "https://cdn.dummyjson.com/product-images/mobile-accessories/apple-iphone-charger/2.webp",
      ],
      "createdAt": "2025-01-28",
    },
    {
      "id": 11,
      "name": "Apple AirPower Wireless Charger",
      "brand": "Apple",
      "description": "A wireless charging mat that lets you charge compatible Apple devices at the same time. Simply place your iPhone, AirPods, or Apple Watch on the mat to charge.",
      "price": 8999,
      "discount": 10,
      "finalPrice": 8099,
      "category": "Accessories",
      "rating": 4.0,
      "reviewsCount": 1800,
      "stock": 35,
      "isFeatured": false,
      "isFavorite": true,
      "images": [
        "https://cdn.dummyjson.com/product-images/mobile-accessories/apple-airpower-wireless-charger/1.webp",
      ],
      "createdAt": "2025-02-01",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topCenter,
            radius: 1,
            colors: [Color(0xffffe2d0), Color(0xffF9F9F9)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              //// user profile row
              getProfileRow(),
              // Banner Slider
              Expanded(
                child: ListView(
                  children: [
                    getBannerSlider(),
                    SizedBox(height: 16),
                    // Search bar
                    getSearchBar(),
                    SizedBox(height: 16),
                    // Categories row
                    getCategories(),
                    SizedBox(height: 16),
                    // Product row
                    getProductRow(context: context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getProfileRow() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=12"),
      ),
      title: Text("Morning, Romania"),
      subtitle: Text('What would you buy today?'),
      titleTextStyle: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      subtitleTextStyle: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
      trailing: AppIconRoundWidget(icon: Icons.shopping_bag_outlined),
    );
  }

  Widget getBannerSlider() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enjoy the special offer up to 30%",
                maxLines: 2,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 11),
              Text(
                "From 14th June, 2025",
                style: GoogleFonts.poppins(fontSize: 12),
              ),
            ],
          ),
        ),

        Image.network(
          "https://dfl.qa/cdn/shop/files/TECHNOLOGY-PRODUCTS-ELECTRONICS.webp?v=1769784370&width=3840",
          width: 160,
          height: 80,
        ),
      ],
    );
  }

  Widget getSearchBar() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextField(
              style: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
              maxLines: 1,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                prefixIconConstraints: BoxConstraints(
                  maxWidth: 50,
                  minWidth: 50,
                  maxHeight: 50,
                  minHeight: 50,
                ),
                hintText: "Search...",
                fillColor: Colors.white,
                filled: true,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 11),
        AppIconRoundWidget(icon: Icons.display_settings_outlined, size: 50),
      ],
    );
  }

  Widget getCategories() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Categories",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text("See all", style: GoogleFonts.poppins(fontSize: 12)),
          ],
        ),
        SizedBox(height: 7),
        SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // scrollDirection: Axis.horizontal,
            children: [
              Container(
                padding: EdgeInsets.all(3),
                height: double.infinity,
                width: 65,
                decoration: BoxDecoration(
                  color: Color(0xffFEF6F2),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(60),
                    bottom: Radius.circular(60),
                  ),
                  border: Border.all(color: Color(0xffffeee6), width: 2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/195/195149.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Text("Laptop"),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(3),
                height: double.infinity,
                width: 65,
                decoration: BoxDecoration(
                  color: Color(0xffFEF6F2),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(60),
                    bottom: Radius.circular(60),
                  ),
                  border: Border.all(color: Color(0xffffeee6), width: 2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/195/195149.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Text("Laptop"),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(3),
                height: double.infinity,
                width: 65,
                decoration: BoxDecoration(
                  color: Color(0xffFEF6F2),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(60),
                    bottom: Radius.circular(60),
                  ),
                  border: Border.all(color: Color(0xffffeee6), width: 2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/195/195149.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Text("Laptop"),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(3),
                height: double.infinity,
                width: 65,
                decoration: BoxDecoration(
                  color: Color(0xffFEF6F2),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(60),
                    bottom: Radius.circular(60),
                  ),
                  border: Border.all(color: Color(0xffffeee6), width: 2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/195/195149.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Text("Laptop"),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(3),
                height: double.infinity,
                width: 65,
                decoration: BoxDecoration(
                  color: Color(0xffFEF6F2),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(60),
                    bottom: Radius.circular(60),
                  ),
                  border: Border.all(color: Color(0xffffeee6), width: 2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipOval(
                      child: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/195/195149.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Text("Laptop"),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget getProductRow({required BuildContext context}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Latest Products",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text("See all", style: GoogleFonts.poppins(fontSize: 12)),
          ],
        ),
        SizedBox(height: 7),
        GridView.builder(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 11,
            crossAxisSpacing: 11,
            childAspectRatio: 5 / 6,
          ),
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetail(mProduct: products[index], mIndex: index),
                  ),
                );
              },
              child: productCard(
                index: index,
                isFavorite: products[index]["isFavorite"],
              ),
            );
          },
        ),
        SizedBox(height: 7),
      ],
    );
  }

  Widget productCard({required int index, bool isFavorite = false}) {
    return Container(
      decoration: BoxDecoration(
        color: index % 2 == 0 ? Color(0xffD5E9E0) : Color(0xffFAF6E8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    products[index]["name"],
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.favorite,
                  size: 22,
                  color: isFavorite ? Colors.red : Colors.white,
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ClipOval(
                  child: Hero(
                    tag: "$index",
                    child: Image.network(
                      products[index]["images"][0],
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 37,
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: index % 2 == 0 ? Color(0xffEFF7ED) : Color(0xffFAEFD0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " \$${products[index]['finalPrice']}",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AppIconRoundWidget(
                      icon: Icons.shopping_bag_outlined,
                      iconSize: 16,
                      size: 30,
                      fgColor: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
