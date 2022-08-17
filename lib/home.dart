import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widget/barberman_widget.dart';
import 'widget/date_widget.dart';
import 'widget/service_widget.dart';
import 'widget/time_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedDate = 19;

  void _selectDate(int date) {
    setState(() {
      selectedDate = date;
    });
  }

  List serviceSelected = <String>[];
  void handleSelectedServices(String name) {
    if (serviceSelected.contains(name)) {
      serviceSelected.remove(name);
    } else {
      serviceSelected.add(name);
    }

    setState(() {});
  }

  var selectedBarber = 'Zaki Barberman';
  _selectBarber(name) {
    setState(() {
      selectedBarber = name;
    });
  }

  var selectedTime = '12:30';
  void _selectTime(time) {
    setState(() {
      selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'BOOKING',
          style: TextStyle(
            fontFamily: 'FirSans',
            fontSize: 16.0,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3.0,
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 4.0,
                    )
                  ],
                  color: Colors.white,
                ),
              ),
              Positioned(
                top: 20.0,
                left: 15.0,
                right: 15.0,
                child: SizedBox(
                  height: 60.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      DateWidget(
                        date: 18,
                        day: 'Tue',
                        tapHandler: _selectDate,
                        isSelected: selectedDate == 18,
                      ),
                      const SizedBox(width: 25.0),
                      DateWidget(
                        date: 19,
                        day: 'Wed',
                        tapHandler: _selectDate,
                        isSelected: selectedDate == 19,
                      ),
                      const SizedBox(width: 25.0),
                      DateWidget(
                        date: 20,
                        day: 'Thu',
                        tapHandler: _selectDate,
                        isSelected: selectedDate == 20,
                      ),
                      const SizedBox(width: 25.0),
                      DateWidget(
                        date: 21,
                        day: 'Fri',
                        tapHandler: _selectDate,
                        isSelected: selectedDate == 21,
                      ),
                      const SizedBox(width: 25.0),
                      DateWidget(
                        date: 22,
                        day: 'Sat',
                        tapHandler: _selectDate,
                        isSelected: selectedDate == 22,
                      ),
                      const SizedBox(width: 25.0),
                      DateWidget(
                        date: 23,
                        day: 'Sun',
                        tapHandler: _selectDate,
                        isSelected: selectedDate == 23,
                      ),
                      const SizedBox(width: 25.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 35.0),
          Center(
            child: Text(
              'BARBERKING',
              style: TextStyle(
                letterSpacing: 2.0,
                fontFamily: 'Nunito',
                fontSize: 30.0,
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              const SizedBox(width: 15.0),
              ServiceWidget(
                name: 'Haircut',
                price: '40.000',
                tapHandler: handleSelectedServices,
                isSelected: serviceSelected.contains('Haircut'),
              ),
              const SizedBox(width: 15.0),
              ServiceWidget(
                name: 'Creambath',
                price: '30.000',
                tapHandler: handleSelectedServices,
                isSelected: serviceSelected.contains('Creambath'),
              ),
              const SizedBox(width: 15.0),
              ServiceWidget(
                name: 'Perming',
                price: '15.000',
                tapHandler: handleSelectedServices,
                isSelected: serviceSelected.contains('Perming'),
              ),
              const SizedBox(width: 15.0),
              ServiceWidget(
                name: 'Protein',
                price: '15.000',
                tapHandler: handleSelectedServices,
                isSelected: serviceSelected.contains('Protein'),
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          SizedBox(
            height: 175.0,
            child: ListView(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              scrollDirection: Axis.horizontal,
              children: [
                BarbermanWidget(
                  imgPath: 'assets/b2.jpg',
                  name: 'Zaki Barberman',
                  tapHandler: _selectBarber,
                  isSelected: selectedBarber == 'Zaki Barberman',
                ),
                const SizedBox(width: 15.0),
                BarbermanWidget(
                  imgPath: 'assets/pesulap.jpeg',
                  name: 'Pesulap Merah',
                  tapHandler: _selectBarber,
                  isSelected: selectedBarber == 'Pesulap Merah',
                ),
                const SizedBox(width: 15.0),
                BarbermanWidget(
                  imgPath: 'assets/b1.jpg',
                  name: 'Fuad Barberman',
                  tapHandler: _selectBarber,
                  isSelected: selectedBarber == 'Fuad Barberman',
                ),
                const SizedBox(width: 15.0),
              ],
            ),
          ),
          const SizedBox(height: 15.0),
          SizedBox(
            height: 50.0,
            child: Wrap(
              spacing: 2,
              alignment: WrapAlignment.center,
              runSpacing: 10,
              children: [
                const SizedBox(
                  width: 15,
                ),
                TimeWidget(
                  time: '11.00',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '11.00',
                ),
                const SizedBox(
                  width: 25.0,
                ),
                TimeWidget(
                  time: '13.00',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '13.00',
                ),
                const SizedBox(width: 25.0),
                TimeWidget(
                  time: '15.00',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '15.00',
                ),
                const SizedBox(width: 25.0),
                TimeWidget(
                  time: '17.00',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '17.00',
                ),
                const SizedBox(width: 25.0),
                TimeWidget(
                  time: '19.00',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '19.00',
                ),
                const SizedBox(width: 25.0),
                TimeWidget(
                  time: '21.00',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '21.00',
                ),
                const SizedBox(width: 25.0),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.black),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'BOOK VIA WHATSAPP',
                        style: TextStyle(
                          letterSpacing: 2.0,
                          fontFamily: 'FirSans',
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
