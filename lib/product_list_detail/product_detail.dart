import 'package:classico_cmd/product_list_detail/custom_widgets/app_icon_round_bg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatelessWidget {
  Map<String, dynamic> mProduct;
  int mIndex;
  ProductDetail({required this.mProduct, required this.mIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 45,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 21),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(43),
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xffFDEEDA), Color(0xffE7F4E7)],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: AppIconRoundWidget(
                          icon: Icons.arrow_back_ios_rounded,
                          fgColor: Colors.deepOrange,
                          iconSize: 16,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Product Details",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      AppIconRoundWidget(
                        icon: Icons.share_outlined,
                        fgColor: Colors.deepOrange,
                        iconSize: 16,
                      ),
                    ],
                  ),
                  SizedBox(height: 21),
                  Hero(
                    tag: "$mIndex",
                    child: Image.network(
                      "${mProduct["images"][0]}",
                      width: 300,
                      height: 300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 55,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(mProduct["name"]),
                      subtitle: Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          SizedBox(width: 5),
                          Text('${mProduct["rating"]}'),
                          SizedBox(width: 11),
                          Text('${mProduct["reviewsCount"]} reviews'),
                        ],
                      ),
                      titleTextStyle: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      subtitleTextStyle: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                      trailing: Icon(Icons.favorite, color: Colors.red),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              text: '\$${mProduct["finalPrice"]}',
                              children: [
                                TextSpan(
                                  text: '/pack',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color(0xffFEF6F2),
                            borderRadius: BorderRadius.circular(21),
                          ),
                          child: Row(
                            children: [
                              AppIconRoundWidget(
                                icon: Icons.remove,
                                size: 25,
                                iconSize: 14,
                              ),
                              SizedBox(width: 11),
                              Text(
                                '01',
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 11),
                              AppIconRoundWidget(
                                icon: Icons.add,
                                fgColor: Colors.deepOrange,
                                size: 25,
                                iconSize: 14,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 11),
                    Divider(color: Colors.black12, thickness: 0.5),
                    Text(
                      "Description",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "${mProduct["description"]}",
                      style: GoogleFonts.poppins(
                        color: Colors.black45,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 11),
                    Divider(color: Colors.black12, thickness: 0.5),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
