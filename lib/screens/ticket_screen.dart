import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/tickets_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(
                AppLayout.getHeight(40),
              ),
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              Gap(
                AppLayout.getHeight(20),
              ),
              const AppTicketsTab(firstTab: 'Upcoming', secondTab: 'Previus'),
              Gap(
                AppLayout.getHeight(20),
              ),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                color: Colors.white,
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(0)),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child:  Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout( alignment: CrossAxisAlignment.start,
                            firstText: 'Flutter DB', secondText: 'Passengers'),
                        AppColumnLayout( alignment: CrossAxisAlignment.end,
                            firstText: '5221 4567', secondText: 'passport'),
                           
                      ],
                    ),
                  const Divider(),
                  const  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                         AppColumnLayout( alignment: CrossAxisAlignment.start,
                            firstText: '0000 4444 4444 4444', secondText: 'Number of Ticket'), 
                            AppColumnLayout( alignment: CrossAxisAlignment.end,
                            firstText: 'B232323', secondText: 'Booking Code'), 
                      ],
                    ),
                  const   Divider(),
                  const  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                         AppColumnLayout( alignment: CrossAxisAlignment.start,
                            firstText:'Visa ****2462', secondText: 'Payment Method'), 
                            AppColumnLayout( alignment: CrossAxisAlignment.end,
                            firstText: '\$ 249.99', secondText: 'Price'), 
                      ],
                    ),
                   const Divider(),

                     ClipRRect(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                       child: BarcodeWidget(barcode: Barcode.code128(),
                        data: 'https://github.com/guenga1968/',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 60,
                        ),
                     ),
                  
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
