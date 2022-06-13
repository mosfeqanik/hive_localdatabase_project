// Home Page
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> _localItemsList = [];

  final _localSurveyBox = Hive.box('LocalSurveyBox');

  @override
  void initState() {
    super.initState();
    _refreshItems(); // Load data when app starts
  }

  // Get all items from the database
  void _refreshItems() {
    final data = _localSurveyBox.keys.map((key) {
      final value = _localSurveyBox.get(key);
      return {
        "key": key,
        "candidateName": value["candidateName"],
        "candidateMobileNumber": value['candidateName'],
        "candidateRelationshipWithCheif":
            value['candidateRelationshipWithCheif'],

        ///khana

        "khanaCheifNID": value['khanaCheifNID'],
        "khanaCheifDOB": value['khanaCheifDOB'],
        "khanaCheifNameBN": value['khanaCheifNameBN'],
        "KhanaCheifNameENG": value['KhanaCheifNameENG'],
        "KhanaCheifFatherNameBN": value['KhanaCheifFatherNameBN'],
        "KhanaCheifFatherNameENG": value['KhanaCheifFatherNameENG'],
        "KhanaCheifMotherNameBN": value['KhanaCheifMotherNameBN'],
        "KhanaCheifMotherNameENG": value['KhanaCheifMotherNameENG'],
        "KhanaCheifGender": value['KhanaCheifGender'],
        "KhanaCheifMaritalStatus": value['KhanaCheifMaritalStatus'],
        "KhanaCheifMobileNumber": value['KhanaCheifMobileNumber'],
        "KhanaVillageName": value['KhanaVillageName'],
        "KhanaParaName": value['KhanaParaName'],
        "KhanaHouseName": value['KhanaHouseName'],
        "KhanaPostCode": value['KhanaPostCode'],
        "KhanaHoldingNumber": value['KhanaHoldingNumber'],
        "KhanaHouseLocationDetails": value['KhanaHouseLocationDetails'],

        ///1st page Done

        ///House material Detail
        "KhanaHouseFloorDetails": value['KhanaHouseFloorDetails'],
        "KhanaHouseWallDetails": value['KhanaHouseWallDetails'],
        "KhanaHouseCeilingDetails": value['KhanaHouseCeilingDetails'],

        ///House benefits Detail
        "KhanaWaterSource": value['KhanaWaterSource'],
        "KhanaToiletDetail": value['KhanaToiletDetail'],
        "KhanaElectricityDetails": value['KhanaElectricityDetails'],


        ///House Property Detail
        "KhanaPropertyRickshawDetails": value['KhanaPropertyRickshawDetails'],
        "KhanaPropertyElectricVehicleDetails":
            value['KhanaPropertyElectricVehicleDetails'],
        "KhanaPropertyMotorDetails": value['KhanaPropertyMotorDetails'],
        "KhanaPropertyCNGDetails": value['KhanaPropertyCNGDetails'],
        "KhanaPropertyMobileDetails": value['KhanaPropertyMobileDetails'],
        "KhanaPropertyTelevisionDetails":
            value['KhanaPropertyTelevisionDetails'],
        "KhanaPropertyRefrigeratorDetails":
            value['KhanaPropertyRefrigeratorDetails'],
        "KhanaPropertyBostovitaDetails": value['KhanaPropertyBostovitaDetails'],
        "KhanaPropertyKrishiDetails": value['KhanaPropertyKrishiDetails'],
        "KhanaPropertyOKrishiDetails": value['KhanaPropertyOKrishiDetails'],
        "KhanaPropertyDomesticatedAnimalsDetails":
            value['KhanaPropertyDomesticatedAnimalsDetails'],


        ///Help From GOVT
        "KhanaHelpFromGovtDetails": value['KhanaHelpFromGovtDetails'],

        ///INCOME SOURCE
        "KhanaIncomeSourceDetails": value['KhanaIncomeSourceDetails'],
        "KhanaFoodCost": value['KhanaFoodCost'],
        "KhanaMedicalCost": value['KhanaMedicalCost'],
        "KhanaEducationCost": value['KhanaEducationCost'],
        "KhanaOtherCost": value['KhanaOtherCost'],
        "KhanaGovtHelpCard": value['KhanaGovtHelpCard'],
      };
    }).toList();

    setState(() {
      _localItemsList = data.reversed.toList();
      // we use "reversed" to sort items in order from the latest to the oldest
    });
  }

  // Create new item
  Future<void> _createItem(Map<String, dynamic> newItem) async {
    await _localSurveyBox.add(newItem);
    _refreshItems(); // update the UI
  }

  // Retrieve a single item from the database by using its key
  // Our app won't use this function but I put it here for your reference
  Map<String, dynamic> _readItem(int key) {
    final item = _localSurveyBox.get(key);
    return item;
  }

  // Update a single item
  Future<void> _updateItem(int itemKey, Map<String, dynamic> item) async {
    await _localSurveyBox.put(itemKey, item);
    _refreshItems(); // Update the UI
  }

  // Delete a single item
  Future<void> _deleteItem(int itemKey) async {
    await _localSurveyBox.delete(itemKey);
    _refreshItems(); // update the UI

    // Display a snackbar
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('An item has been deleted')));
  }

  // TextFields' controllers
  final TextEditingController _candidateNameController =
      TextEditingController();
  final TextEditingController _candidateMobileNumberController =
      TextEditingController();
  final TextEditingController _candidateRelationshipWithCheifController =
      TextEditingController();


  final TextEditingController _khanaCheifNIDController =
      TextEditingController();
  final TextEditingController _khanaCheifDOBController =
      TextEditingController();
  final TextEditingController _khanaCheifNameBNController =
  TextEditingController();
  final TextEditingController _khanaCheifDOBController =
  TextEditingController();
  final TextEditingController _khanaCheifDOBController =
  TextEditingController();
  final TextEditingController _khanaCheifDOBController =
  TextEditingController();
  final TextEditingController _khanaCheifDOBController =
  TextEditingController();
  final TextEditingController _khanaCheifDOBController =
  TextEditingController();
  final TextEditingController _khanaCheifDOBController =
  TextEditingController();
  final TextEditingController _khanaCheifDOBController =
  TextEditingController();
  final TextEditingController _khanaCheifDOBController =
  TextEditingController();
  final TextEditingController _khanaCheifDOBController =
  TextEditingController();
  final TextEditingController _khanaCheifDOBController =
  TextEditingController();
  final TextEditingController _khanaCheifDOBController =
  TextEditingController();


  // This function will be triggered when the floating button is pressed
  // It will also be triggered when you want to update an item
  void _showForm(BuildContext ctx, int? itemKey) async {
    // itemKey == null -> create new item
    // itemKey != null -> update an existing item

    if (itemKey != null) {
      final existingItem =
          _localItemsList.firstWhere((element) => element['key'] == itemKey);
      _candidateNameController.text = existingItem['candidateName'];
      _candidateMobileNumberController.text =
          existingItem['candidateMobileNumber'];



      _khanaCheifNIDController.text = existingItem['khanaCheifNID'];
      _khanaCheifDOBController.text = existingItem['khanaCheifDOB'];
    }

    showModalBottomSheet(
      context: ctx,
      elevation: 5,
      isScrollControlled: true,
      builder: (_) => Container(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom,
            top: 15,
            left: 15,
            right: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _candidateNameController,
              decoration: const InputDecoration(hintText: 'Candidate Name'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _candidateMobileNumberController,
              keyboardType: TextInputType.number,
              decoration:
                  const InputDecoration(hintText: 'Candidate Mobile No'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _candidateRelationshipWithCheifController,
              decoration: const InputDecoration(
                  hintText: 'candidate Relationship With Cheif'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _khanaCheifNIDController,
              decoration: const InputDecoration(hintText: '_khana Cheif NID'),
            ),
            TextField(
              controller: _khanaCheifNameBNController,
              decoration: const InputDecoration(hintText: '_khana Cheif Name BN'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                // Save new item
                if (itemKey == null) {
                  _createItem({
                    "candidateName": _candidateNameController.text,
                    "candidateMobileNumber":
                        _candidateMobileNumberController.text,
                    "candidateRelationshipWithCheif":
                        _candidateRelationshipWithCheifController.text,
                    "khanaCheifNID": _khanaCheifNIDController.text,
                    "khanaCheifNameBNController": _khanaCheifNameBNController.text,
                  });
                }

                // update an existing item
                if (itemKey != null) {
                  _updateItem(itemKey, {
                    'candidateName': _candidateNameController.text.trim(),
                    'candidateMobileNumber':
                        _candidateMobileNumberController.text.trim(),
                    'candidateRelationshipWithCheif':
                        _candidateRelationshipWithCheifController.text.trim(),
                    'khanaCheifNID': _khanaCheifNIDController.text.trim(),
                    "khanaCheifNameBNController": _khanaCheifNameBNController.text.trim(),

                  });
                }

                // Clear the text fields
                _candidateNameController.text = '';
                _candidateMobileNumberController.text = '';
                _candidateRelationshipWithCheifController.text = '';

                _khanaCheifNIDController.text = '';

                Navigator.of(context).pop(); // Close the bottom sheet
              },
              child: Text(itemKey == null ? 'Create New' : 'Update'),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive Flutter practice by anik'),
      ),
      body: _localItemsList.isEmpty
          ? const Center(
              child: Text(
                'No Data',
                style: TextStyle(fontSize: 30),
              ),
            )
          : ListView.builder(
              // the list of items
              itemCount: _localItemsList.length,
              itemBuilder: (_, index) {
                final currentItem = _localItemsList[index];
                return Card(
                  color: Colors.orange.shade100,
                  margin: const EdgeInsets.all(10),
                  elevation: 3,
                  child: ListTile(
                      title: Text(currentItem['candidateName']),
                      subtitle:
                          Text(currentItem['candidateMobileNumber'].toString()),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Edit button
                          IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () =>
                                  _showForm(context, currentItem['key'])),
                          // Delete button
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => _deleteItem(currentItem['key']),
                          ),
                        ],
                      )),
                );
              }),
      // Add new item button
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showForm(context, null),
        child: const Icon(Icons.add),
      ),
    );
  }
}
