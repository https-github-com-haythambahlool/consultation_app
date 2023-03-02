import 'package:consultation_app/view/OfficialOrganization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrganizationCard extends StatelessWidget {
  OrganizationCard({
    super.key,
    required this.mysize,
    required this.email,
    required this.hash,
    required this.images,
    required this.orgName,
    required this.subjectName,
    required this.time,
  });

  final Size mysize;
  String orgName;
  String subjectName;
  String email;
  String hash;
  List images;
  String time;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return OfficialOrganization();
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(15),
        height: 200,
        width: mysize.width - 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 7,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      orgName,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    FaIcon(
                      FontAwesomeIcons.angleRight,
                      color: Colors.grey[400],
                      size: 15,
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 25,
              ),
              child: Text(subjectName),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Text(
                email,
                style: TextStyle(
                  color: Colors.blue[700],
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Text(
                hash,
                style: TextStyle(
                  color: Colors.blue[700],
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              width: 150, height: 40,
              padding: EdgeInsets.only(left: 25),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          width: 40,
                          height: 40,
                          image: AssetImage(
                            images[index],
                          ),
                        ),
                      ),
                    );
                  }),
              //  Row(
              //   children: [

              //   ],
            )
          ],
        ),
      ),
    );
  }
}
