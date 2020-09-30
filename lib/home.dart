import 'package:flutter/material.dart';
import 'package:renal_classifier_web/bloc/classify_bloc.dart';
import 'package:renal_classifier_web/utils/alerts.dart';
import 'package:renal_classifier_web/utils/navbar.dart';
import 'package:renal_classifier_web/utils/responsive_layout.dart';
import 'package:renal_classifier_web/validators/classify_validators.dart';

import 'model/api_response.dart';
import 'model/classify.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with ClassifyValidators {

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  ClassifyBloc _classifyBloc;

  int _sg = 0;
  int _al = 0;
  int _su = 0;
  int _rbc = 0;
  int _pc = 0;
  int _pcc = 0;
  int _ba = 0;
  int _htn = 0;
  int _dm = 0;
  int _cad = 0;
  int _appet = 0;
  int _pe = 0;
  int _ane = 0;

  @override
  void initState() {
    super.initState();

    _classifyBloc = ClassifyBloc();

  }

  final _fieldStyle = TextStyle(color: Colors.black87, fontSize: 16);


  @override
  Widget build(BuildContext context) {
    InputDecoration _buildDecoration(String label) {
      return InputDecoration(
        border:
        OutlineInputBorder(borderSide: new BorderSide(color: Colors.teal)),
        labelText: label,
        prefixIcon: Icon(
          Icons.event_note,
          color: Colors.black26,
        ),
      );
    }

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Renal Classifier"),
        ),
        key: _scaffoldKey,
        backgroundColor: Colors.transparent,
        floatingActionButton: StreamBuilder<bool>(
            stream: _classifyBloc.outLoading,
            initialData: false,
            builder: (context, snapshot) {
              return FloatingActionButton(
                onPressed: snapshot.data ? null : predict,
                child: Icon(Icons.analytics),
                backgroundColor: Colors.blue[800],
              );
            }
        ),
        body: Stack(
          children: <Widget>[
            Form(
              key: _formKey,
              child:  StreamBuilder<Classify>(
                stream: _classifyBloc.outData,
                builder: (context, snapshot){
                  if (!snapshot.hasData) return Container();

                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Dado que os rins posssuem funções especiais na manutenção da nossa saúde, o dataset traz dados sobre valores de elementos que estão presentes em nossa constituição física assim sendo o objetivo deste projeto é descobrir a correlação entre esses atributos de saúde e a doença renal crônica. Desta forma, podemos permitir detecções precoces que facilitam as intervenções médicas e assim identifiquemos os principais precursores da doença renal crônica usando as técnicas de aprendizado de máquina.",
                            style: TextStyle(fontSize: 25), textAlign: TextAlign.center,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Por favor informe seus dados:",
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Theme(
                              child: TextFormField(
                                validator: validateAge,
                                cursorColor: Colors.black87,
                                maxLines: 1,
                                style: _fieldStyle,
                                onSaved: _classifyBloc.saveAge,
                                decoration: _buildDecoration("Idade (em anos absolutos)"),
                                textCapitalization: TextCapitalization.sentences,
                              ),
                              data: ThemeData(
                                  primaryColor: Colors.black26,
                                  primaryColorDark: Colors.black87),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Gravidade Específica",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                          _sgType(),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Albumina",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                          _alType(),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Açúcar",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                          _suType(),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Glóbulos vermelhos",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                          _rbcType(),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Célula de pus",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                          _pcType(),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Aglomerados de células de pus",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                          _pccType(),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Bactérias",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                          _baType(),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Theme(
                              child: TextFormField(
                                validator: validateBgr,
                                cursorColor: Colors.black87,
                                maxLines: 1,
                                style: _fieldStyle,
                                onSaved: _classifyBloc.saveBgr,
                                decoration: _buildDecoration("Glicose no sangue aleatória (em mgs/dl)"),
                                textCapitalization: TextCapitalization.sentences,
                              ),
                              data: ThemeData(
                                  primaryColor: Colors.black26,
                                  primaryColorDark: Colors.black87),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Theme(
                              child: TextFormField(
                                validator: validateBgr,
                                cursorColor: Colors.black87,
                                maxLines: 1,
                                style: _fieldStyle,
                                onSaved: _classifyBloc.saveBu,
                                decoration: _buildDecoration("Ureia sanguínea (em mgs/dl)"),
                                textCapitalization: TextCapitalization.sentences,
                              ),
                              data: ThemeData(
                                  primaryColor: Colors.black26,
                                  primaryColorDark: Colors.black87),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Theme(
                              child: TextFormField(
                                validator: validateBgr,
                                cursorColor: Colors.black87,
                                maxLines: 1,
                                style: _fieldStyle,
                                onSaved: _classifyBloc.saveSc,
                                decoration: _buildDecoration("Creatinina sérica (em mgs/dl)"),
                                textCapitalization: TextCapitalization.sentences,
                              ),
                              data: ThemeData(
                                  primaryColor: Colors.black26,
                                  primaryColorDark: Colors.black87),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Theme(
                              child: TextFormField(
                                validator: validateBgr,
                                cursorColor: Colors.black87,
                                maxLines: 1,
                                style: _fieldStyle,
                                onSaved: _classifyBloc.saveSod,
                                decoration: _buildDecoration("Sódio (em mEq/L)"),
                                textCapitalization: TextCapitalization.sentences,
                              ),
                              data: ThemeData(
                                  primaryColor: Colors.black26,
                                  primaryColorDark: Colors.black87),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Theme(
                              child: TextFormField(
                                validator: validateBgr,
                                cursorColor: Colors.black87,
                                maxLines: 1,
                                style: _fieldStyle,
                                onSaved: _classifyBloc.savePot,
                                decoration: _buildDecoration("Potássio (em mEq/L)"),
                                textCapitalization: TextCapitalization.sentences,
                              ),
                              data: ThemeData(
                                  primaryColor: Colors.black26,
                                  primaryColorDark: Colors.black87),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Theme(
                              child: TextFormField(
                                validator: validateBgr,
                                cursorColor: Colors.black87,
                                maxLines: 1,
                                style: _fieldStyle,
                                onSaved: _classifyBloc.saveHemo,
                                decoration: _buildDecoration("Hemoglobina (em gms)"),
                                textCapitalization: TextCapitalization.sentences,
                              ),
                              data: ThemeData(
                                  primaryColor: Colors.black26,
                                  primaryColorDark: Colors.black87),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Theme(
                              child: TextFormField(
                                validator: validateBgr,
                                cursorColor: Colors.black87,
                                maxLines: 1,
                                style: _fieldStyle,
                                onSaved: _classifyBloc.savePcv,
                                decoration: _buildDecoration("Volume de células compactadas"),
                                textCapitalization: TextCapitalization.sentences,
                              ),
                              data: ThemeData(
                                  primaryColor: Colors.black26,
                                  primaryColorDark: Colors.black87),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Theme(
                              child: TextFormField(
                                validator: validateBgr,
                                cursorColor: Colors.black87,
                                maxLines: 1,
                                style: _fieldStyle,
                                onSaved: _classifyBloc.saveWbcc,
                                decoration: _buildDecoration("Contagem de glóbulos brancos"),
                                textCapitalization: TextCapitalization.sentences,
                              ),
                              data: ThemeData(
                                  primaryColor: Colors.black26,
                                  primaryColorDark: Colors.black87),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Theme(
                              child: TextFormField(
                                validator: validateBgr,
                                cursorColor: Colors.black87,
                                maxLines: 1,
                                style: _fieldStyle,
                                onSaved: _classifyBloc.saveRbcc,
                                decoration: _buildDecoration("Contagem de glóbulos vermelhos"),
                                textCapitalization: TextCapitalization.sentences,
                              ),
                              data: ThemeData(
                                  primaryColor: Colors.black26,
                                  primaryColorDark: Colors.black87),
                            ),
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Hipertensão",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                          _htnType(),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Diabetes Mellitus",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                          _dmType(),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Doença arterial coronária",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                          _cadType(),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Apetite",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                          _appetType(),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Pedal Edema",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                          _peType(),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Anemia",
                                  style: TextStyle(
                                      color: Colors.blue[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                          _aneType(),
                        ],
                      ),
                    ),
                  );
                },

              ),
            )
          ],
        ),
      ),
    );
  }

  void _onClickSgType(int value) {
    setState(() {
      _sg = value;
    });
  }

  void _onClickAlType(int value) {
    setState(() {
      _al = value;
    });
  }

  void _onClickSuType(int value) {
    setState(() {
      _su = value;
    });
  }

  void _onClickRbcType(int value) {
    setState(() {
      _rbc = value;
    });
  }

  void _onClickPcType(int value) {
    setState(() {
      _pc = value;
    });
  }

  void _onClickPccType(int value) {
    setState(() {
      _pcc = value;
    });
  }

  void _onClickBaType(int value) {
    setState(() {
      _ba = value;
    });
  }

  void _onClickHtnType(int value) {
    setState(() {
      _htn = value;
    });
  }

  void _onClickDmType(int value) {
    setState(() {
      _dm = value;
    });
  }

  void _onClickCadType(int value) {
    setState(() {
      _cad = value;
    });
  }

  void _onClickAppetType(int value) {
    setState(() {
      _appet = value;
    });
  }

  void _onClickPeType(int value) {
    setState(() {
      _pe = value;
    });
  }

  void _onClickAneType(int value) {
    setState(() {
      _ane = value;
    });
  }

  _sgType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0, // 1.005
          groupValue: _sg,
          onChanged: _onClickSgType,
        ),
        Text(
          '1.005',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 1,
          groupValue: _sg,
          onChanged: _onClickSgType,
        ),
        Text(
          '1.010',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),

        Radio(
          value: 2, // 1.005
          groupValue: _sg,
          onChanged: _onClickSgType,
        ),
        Text(
          '1.015',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 3,
          groupValue: _sg,
          onChanged: _onClickSgType,
        ),
        Text(
          '1.020',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),

        Radio(
          value: 4,
          groupValue: _sg,
          onChanged: _onClickSgType,
        ),
        Text(
          '1.025',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
      ],
    );
  }

  _alType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0, // 1.005
          groupValue: _al,
          onChanged: _onClickAlType,
        ),
        Text(
          '0',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 1,
          groupValue: _al,
          onChanged: _onClickAlType,
        ),
        Text(
          '1',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),

        Radio(
          value: 2, // 1.005
          groupValue: _al,
          onChanged: _onClickAlType,
        ),
        Text(
          '2',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 3,
          groupValue: _al,
          onChanged: _onClickAlType,
        ),
        Text(
          '3',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),

        Radio(
          value: 4,
          groupValue: _al,
          onChanged: _onClickAlType,
        ),
        Text(
          '4',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),

        Radio(
          value: 5,
          groupValue: _al,
          onChanged: _onClickAlType,
        ),
        Text(
          '5',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
      ],
    );
  }

  _suType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0, // 1.005
          groupValue: _su,
          onChanged: _onClickSuType,
        ),
        Text(
          '0',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 1,
          groupValue: _su,
          onChanged: _onClickSuType,
        ),
        Text(
          '1',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),

        Radio(
          value: 2, // 1.005
          groupValue: _su,
          onChanged: _onClickSuType,
        ),
        Text(
          '2',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 3,
          groupValue: _su,
          onChanged: _onClickSuType,
        ),
        Text(
          '3',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),

        Radio(
          value: 4,
          groupValue: _su,
          onChanged: _onClickSuType,
        ),
        Text(
          '4',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),

        Radio(
          value: 5,
          groupValue: _su,
          onChanged: _onClickSuType,
        ),
        Text(
          '5',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
      ],
    );
  }

  _rbcType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0, // 1.005
          groupValue: _rbc,
          onChanged: _onClickRbcType,
        ),
        Text(
          'Normal',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 1,
          groupValue: _rbc,
          onChanged: _onClickRbcType,
        ),
        Text(
          'Anormal',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        )
      ],
    );
  }

  _pcType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0, // 1.005
          groupValue: _pc,
          onChanged: _onClickPcType,
        ),
        Text(
          'Normal',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 1,
          groupValue: _pc,
          onChanged: _onClickPcType,
        ),
        Text(
          'Anormal',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        )
      ],
    );
  }

  _pccType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0, // 1.005
          groupValue: _pcc,
          onChanged: _onClickPccType,
        ),
        Text(
          'Normal',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 1,
          groupValue: _pcc,
          onChanged: _onClickPccType,
        ),
        Text(
          'Anormal',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        )
      ],
    );
  }

  _baType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0, // 1.005
          groupValue: _ba,
          onChanged: _onClickBaType,
        ),
        Text(
          'Normal',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 1,
          groupValue: _ba,
          onChanged: _onClickBaType,
        ),
        Text(
          'Anormal',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        )
      ],
    );
  }

  _htnType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0, // 1.005
          groupValue: _htn,
          onChanged: _onClickHtnType,
        ),
        Text(
          'Sim',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 1,
          groupValue: _htn,
          onChanged: _onClickHtnType,
        ),
        Text(
          'Não',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        )
      ],
    );
  }

  _dmType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0, // 1.005
          groupValue: _dm,
          onChanged: _onClickDmType,
        ),
        Text(
          'Sim',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 1,
          groupValue: _dm,
          onChanged: _onClickDmType,
        ),
        Text(
          'Não',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        )
      ],
    );
  }

  _cadType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0, // 1.005
          groupValue: _cad,
          onChanged: _onClickCadType,
        ),
        Text(
          'Sim',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 1,
          groupValue: _cad,
          onChanged: _onClickCadType,
        ),
        Text(
          'Não',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        )
      ],
    );
  }

  _appetType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0, // 1.005
          groupValue: _appet,
          onChanged: _onClickAppetType,
        ),
        Text(
          'Bom',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 1,
          groupValue: _appet,
          onChanged: _onClickCadType,
        ),
        Text(
          'Pouco',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        )
      ],
    );
  }

  _peType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0, // 1.005
          groupValue: _pe,
          onChanged: _onClickPeType,
        ),
        Text(
          'Sim',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 1,
          groupValue: _pe,
          onChanged: _onClickPeType,
        ),
        Text(
          'Não',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        )
      ],
    );
  }

  _aneType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          value: 0, // 1.005
          groupValue: _ane,
          onChanged: _onClickAneType,
        ),
        Text(
          'Sim',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Radio(
          value: 1,
          groupValue: _ane,
          onChanged: _onClickAneType,
        ),
        Text(
          'Não',
          style: TextStyle(color: Colors.black87, fontSize: 15),
        )
      ],
    );
  }

  double _getSg(){

    if(_sg == 0) return 1.005;
    else if(_sg == 1) return 1.010;
    else if(_sg == 2) return 1.015;
    else if(_sg == 3) return 1.020;
    else return 1.025;
  }

  int _getAl(){
    return _sg;
  }

  int _getSu(){
    return _su;
  }

  int _getRbc(){
    return _rbc;
  }

  int _getPc(){
    return _pc;
  }

  int _getPcc(){
    return _pcc;
  }

  int _getBa(){
    return _ba;
  }

  int _getHtn(){
    return _htn;
  }

  int _getDm(){
    return _dm;
  }

  int _getCad(){
    return _cad;
  }

  int _getAppet(){
    return _appet;
  }

  int _getPe(){
    return _pe;
  }

  int _getAne(){
    return _ane;
  }

  void predict() async {
    if(_formKey.currentState.validate()){

      _classifyBloc.unsavedData.sg = _getSg();
      _classifyBloc.unsavedData.al = _getAl();
      _classifyBloc.unsavedData.su = _getSu();
      _classifyBloc.unsavedData.rbc = _getRbc();
      _classifyBloc.unsavedData.pc = _getPc();
      _classifyBloc.unsavedData.pcc = _getPcc();
      _classifyBloc.unsavedData.ba = _getBa();
      _classifyBloc.unsavedData.htn = _getHtn();
      _classifyBloc.unsavedData.dm = _getDm();
      _classifyBloc.unsavedData.cad = _getCad();
      _classifyBloc.unsavedData.appet = _getAppet();
      _classifyBloc.unsavedData.pe = _getPe();
      _classifyBloc.unsavedData.ane = _getAne();

      _formKey.currentState.save();

      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(
          "Fazendo a predição ...",
          style: TextStyle(color: Colors.white),
        ),
        duration: Duration(minutes: 1),
        backgroundColor: Colors.blue[800],
      ));

      ApiResponse success = await _classifyBloc.predict();

      _scaffoldKey.currentState.removeCurrentSnackBar();

      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(
          success.ok
              ? "Predição feita com sucesso"
              : "Erro ao realizar predição",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[800],
      ));

      if (success.ok) {
        alert(context, success.msg, success.msg);
      }else{
        print(success.msg);
      }
    }
  }
}
