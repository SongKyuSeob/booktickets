import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../utils/app_info_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20), // symmetric : 대칭의, horizontal : 수평
            child: Column(children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Good Morning", style: Styles.headlineStyle3),
                      const Gap(5),
                      Text("Book Tickets", style: Styles.headlineStyle1),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(
                            "assets/images/img_1.png"
                        )
                      )
                    ),
                  )
                ],
              ),
              const Gap(25),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF4F6FD)
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                    Text(
                      "Search",
                      style: Styles.headlineStyle4
                    )
                  ],
                ),
              ),
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Upcoming Flights', style: Styles.headlineStyle2,),
                  InkWell(
                    onTap: (){
                      print("You are tapped");
                    },
                      child: Text('View all', style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
                ],
              )
            ]),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket)=> TicketView(ticket: singleTicket,)).toList(),
            )
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hotels', style: Styles.headlineStyle2,),
                InkWell(
                    onTap: (){
                      print("You are tapped");
                    },
                    child: Text('View all', style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
              )),
        ],
      ),
    );
  }
}
