import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final getHeight = mediaQuery.size.height;
    final getWidht = mediaQuery.size.width;
    final appbarHeight = mediaQuery.padding.top;
    final bottomPadding = mediaQuery.padding.bottom;
    return SafeArea(
      minimum: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://bosste.files.wordpress.com/2022/03/174675058_1597431410462111_3151516143098867568_n.jpg?w=324&h=326'),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Boseu Teera",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                InkWell(
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color(0xff161B22),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Icon(
                        Iconsax.notification,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: getWidht,
                height: 180,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SafeArea(
                  minimum: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Total Wallet Balance",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "USD",
                                  style: TextStyle(
                                    color: Color(0xFFF7931A),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Iconsax.arrow_down,
                                  color: Color(0xFFF7931A),
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "\$ 66641.20",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Monthly Profit",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          const Text(
                            "\$1850.00",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            constraints: const BoxConstraints(
                              maxHeight: double.infinity,
                            ),
                            height: 30,
                            decoration: BoxDecoration(
                              color: const Color(0xff58BD7D),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Iconsax.arrow_up,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Text(
                                  " +13%",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 20),
            const Text(
              "Portofolio",
              style: TextStyle(
                color: Colors.black,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  cardCrypto(getWidht),
                  const SizedBox(
                    width: 15,
                  ),
                  cardCrypto1(getWidht),
                  const SizedBox(
                    width: 15,
                  ),
                  cardCrypto2(getWidht),
                  const SizedBox(
                    width: 15,
                  ),
                  cardCrypto3(getWidht),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Market Trend",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            cardMarketTrend(getWidht),
            const SizedBox(height: 10),
            cardMarketTrend1(getWidht),
            const SizedBox(height: 10),
            cardMarketTrend2(getWidht),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

cardCrypto3(getWidht) {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SafeArea(
        minimum: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.icon-icons.com/icons2/1385/PNG/512/bnb-crypto-cryptocurrency-cryptocurrencies-cash-money-bank-payment_95544.png'),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text(
                  "Binance Coin",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  constraints: const BoxConstraints(
                    maxHeight: double.infinity,
                  ),
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xff58BD7D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Iconsax.arrow_up,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        " +2%",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              "\$426.3",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "BNB",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

cardCrypto2(getWidht) {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SafeArea(
        minimum: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/media/E2NyfGeVcAAeBlj.jpg'),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text(
                  "Shiba inu",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  constraints: const BoxConstraints(
                    maxHeight: double.infinity,
                  ),
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 253, 0, 0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Iconsax.arrow_circle_down,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        " -5% ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              "\$0.00002581",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "SHIB",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

cardCrypto1(getWidht) {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SafeArea(
        minimum: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/512/Ethereum-ETH-icon.png'),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text(
                  "Ethereum",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  constraints: const BoxConstraints(
                    maxHeight: double.infinity,
                  ),
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xff58BD7D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Iconsax.arrow_up,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        " +5% ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              "\$3,283.20",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "ETH",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

cardCrypto(getWidht) {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SafeArea(
        minimum: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn1.vectorstock.com/i/1000x1000/85/55/bitcoin-flat-icon-vector-19578555.jpg'),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text(
                  "Bitcoin",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  constraints: const BoxConstraints(
                    maxHeight: double.infinity,
                  ),
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xff58BD7D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Iconsax.arrow_up,
                        color: Colors.white,
                        size: 15,
                      ),
                      Text(
                        " +11% ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              "\$45,641.20",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "BTC",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 13,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

cardMarketTrend2(getWidht) {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      width: getWidht,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SafeArea(
        minimum: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://seeklogo.com/images/T/terra-coin-luna-logo-2184E9A88A-seeklogo.com.png'),
            ),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Terra",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Text(
                  "LUNA",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "\$103.36",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Iconsax.arrow_circle_down,
                      color: Color.fromARGB(255, 245, 0, 0),
                      size: 15,
                    ),
                    Text(
                      " -10%",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

cardMarketTrend1(getWidht) {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      width: getWidht,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SafeArea(
        minimum: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn4.iconfinder.com/data/icons/crypto-currency-and-coin-2/256/cardano_ada-512.png'),
            ),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Cardano",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Text(
                  "ADA",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "\$1.162",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Iconsax.arrow_circle_down,
                      color: Color.fromARGB(255, 245, 0, 0),
                      size: 15,
                    ),
                    Text(
                      " -5%",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

cardMarketTrend(getWidht) {
  return InkWell(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      width: getWidht,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: SafeArea(
        minimum: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://icons.iconarchive.com/icons/papirus-team/papirus-apps/128/bitcoin-icon.png'),
            ),
            const SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Bitcoin",
                  style: TextStyle(
                    color: Color.fromARGB(255, 96, 139, 101),
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Text(
                  "BTC",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "\$45,641.20",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Iconsax.arrow_up,
                      color: Color.fromARGB(255, 26, 255, 0),
                      size: 15,
                    ),
                    Text(
                      " +11%",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
