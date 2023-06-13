import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class ContractLaw extends StatelessWidget {
  const ContractLaw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(),
      body: ListView(
        children: [
          Column(
            children: [
              text('Contract Law: Ask the Attorney Workshop', 18,
                  weight: FontWeight.bold, top: 30, bottom: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  paddingImage(
                      'assets/tle_images/Ask the Attorney Workshop.jpg',
                      w: 175,
                      h: 179),
                  const SizedBox(width: 8),
                  paddingImage('assets/tle_images/attorney starburst.jpg',
                      w: 175, h: 179),
                ],
              ),
              text(
                  'Thursday, Oct. 11th 1:00 - 2:30 PM Center Hall with Milene Apanian, J.D.\n\nThis workshop will answer your questions regarding:\n\n• Construction Contracts: Drafting and negotiating Home Improvement Contracts, Owner/Contractor Contracts, Subcontracts, Purchase Orders, Change Orders\n\n• How to Document a Construction Project Without Regret\n\n• Getting Paid!: Preliminary Notices, Stop Payment Notice requirements, Mechanic\'s lien requirements\n\n• Bond Claims & Prompt Payment Penalties; How To Use Them to Get Paid\n\n• California Contractor License Laws: who needs to be licensed, and recent developments in the licensing law\n\n• How to Comply with CA Licensing Laws and Contractors State License Board Advertising Requirements',
                  14,
                  vertical: 20,
                  textAlign: TextAlign.center,
                  horizontal: 20),
            ],
          )
        ],
      ),
    );
  }
}
