import 'package:coin_base_clone/models/chart_data_model.dart';
import 'package:coin_base_clone/models/fetchCoins_models/fetch_coins_models.dart';
import 'package:coin_base_clone/screens/coin_detail_screen.dart';

import 'package:coin_base_clone/widgets/coin_logo_widget.dart';
import 'package:coin_base_clone/widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoinListWidget extends StatelessWidget {
  final List<DataModel> coins;

  const CoinListWidget({
    Key? key,
    required this.coins,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text("Crypto Currency",
                style: GoogleFonts.alef(
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 49, 35, 69))),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Expanded(
            child: ListView.builder(
              itemExtent: 160,
              itemCount: coins.length,
              itemBuilder: (context, index) {
                var coin = coins[index];
                var coinPrice = coin.quoteModel.usdModel;
                var data = [
                  ChartData(coinPrice.percentChange_90d, 2160),
                  ChartData(coinPrice.percentChange_60d, 1440),
                  ChartData(coinPrice.percentChange_30d, 720),
                  ChartData(coinPrice.percentChange_24h, 24),
                  ChartData(coinPrice.percentChange_1h, 1),
                ];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CoinDetailScreen(coin: coin)),
                    );
                  },
                  child: Container(
                    height: 160.0,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CoinLogoWidget(coin: coin),
                        CoinChartWidget(
                          data: data,
                          coinPrice: coinPrice,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
