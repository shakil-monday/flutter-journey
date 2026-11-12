import 'package:classico_cmd/app_routes.dart';
import 'package:classico_cmd/details_page.dart';
import 'package:classico_cmd/setting_page.dart';
import 'package:flutter/material.dart';

class WallpaperPage extends StatelessWidget {
  List<Map<String, dynamic>> mWallCategoris = [
    {
      "name": "Nature",
      "url": "https://images.pexels.com/photos/34422180/pexels-photo-34422180.jpeg",
    },
    {
      "name": "Mountains",
      "url":
          "https://images.pexels.com/photos/1366919/pexels-photo-1366919.jpeg",
    },
    {
      "name": "City",
      "url": "https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg",
    },
    {
      "name": "Animals",
      "url":
          "https://images.pexels.com/photos/1108099/pexels-photo-1108099.jpeg",
    },
    {
      "name": "Space",
      "url":
          "https://images.pexels.com/photos/1252890/pexels-photo-1252890.jpeg",
    },
    {
      "name": "Abstract",
      "url":
          "https://images.pexels.com/photos/1103970/pexels-photo-1103970.jpeg",
    },
    {
      "name": "Sunset",
      "url":
          "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg",
    },
    {
      "name": "Aurora",
      "url":
          "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg",
    },
    {
      "name": "Lakes",
      "url": "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg",
    },
    {
      "name": "Autumn",
      "url":
          "https://images.pexels.com/photos/1563356/pexels-photo-1563356.jpeg",
    },
    {
      "name": "Waterfalls",
      "url":
          "https://images.pexels.com/photos/2387873/pexels-photo-2387873.jpeg",
    },
    {
      "name": "Dark",
      "url":
          "https://images.pexels.com/photos/2156881/pexels-photo-2156881.jpeg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Categories"),
        actions: [
          IconButton(
            onPressed: () {
              // Traditional way
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => SettingPage()),
              );

              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(builder: (_) => SettingPage()),
              // );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            // crossAxisCount: 2,
            childAspectRatio: 2 / 1,
            mainAxisSpacing: 11,
            crossAxisSpacing: 11,
          ),
          itemCount: mWallCategoris.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {
                //// Professional way
                // Navigator.pushNamed(context, AppRoutes.pageDetailRoute);
                Navigator.pushNamed(
                  context,
                  AppRoutes.pageDetailRoute,
                  arguments: {
                    "title": mWallCategoris[index]["name"],
                    "url": mWallCategoris[index]["url"],
                    "mIndex": index,
                  },
                );

                //// Traditional way to pass data using constructor
                // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(title:  mWallCategoris[index]["name"])));
              },
              child: Hero(
                tag: '$index',
                child: Material(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      image: DecorationImage(
                        image: NetworkImage(mWallCategoris[index]["url"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: double.infinity,
                        // height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          color: Colors.black.withAlpha(80),
                        ),
                        child: Center(
                          child: Text(
                            mWallCategoris[index]["name"],
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
