import 'package:flutter/material.dart';
import 'package:renal_classifier_web/bloc/classify_bloc.dart';
import 'package:renal_classifier_web/utils/navbar.dart';
import 'package:renal_classifier_web/utils/responsive_layout.dart';

import 'model/classify.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  ClassifyBloc _classifyBloc;


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
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFFF8FBFF),
            Color(0xFFFCFDFD),
          ])),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Renal Classifier"),
        ),
        key: _scaffoldKey,
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Form(
              key: _formKey,
              child:  StreamBuilder<Classify>(
                stream: _classifyBloc.outData,
                builder: (context, snapshot){
                  if (!snapshot.hasData) return Container();

                  return SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Theme(
                            child: TextFormField(
                              //validator: (text) => validateActivity(text, context),
                              cursorColor: Colors.black87,
                              maxLines: 1,
                              style: _fieldStyle,
                              onSaved: _classifyBloc.saveAge,
                              decoration: _buildDecoration("Idade"),
                              textCapitalization: TextCapitalization.sentences,
                            ),
                            data: ThemeData(
                                primaryColor: Colors.black26,
                                primaryColorDark: Colors.black87),
                          ),
                        ),
                        


                      ],
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
}




class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class BottomCopy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      color: Colors.teal,
      child: Row(
        children: [
          SizedBox(width: 20,),
          //Text("Florence Smart Health 2020. Todos os direitos reservados.", style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}

class BottomEnd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
         // Text("Av. Menino Marcelo, 7131 - Antares, Maceió - AL, 57048-375", style: TextStyle(color: Colors.white),),
         // Text("contato@florencesmarthealth.com", style: TextStyle(color: Colors.white)),

        ],
      ),
    );
  }
}


class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[



      ],

    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 32,
            ),
            //Search(),
            SizedBox(
              height: 30,
            ),


            Container(
              height: 300,
              width: 300,
              color: Colors.teal[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(Icons.timeline, color: Colors.white, size: 100,),
                  Text("Monitoramento em tempo real", style: TextStyle(color: Colors.white, fontSize: 30), textAlign: TextAlign.center,)
                ],
              ),
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.teal[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(Icons.grade, color: Colors.white, size: 100,),
                  Text("Treinamento", style: TextStyle(color: Colors.white, fontSize: 30), textAlign: TextAlign.center,)
                ],
              ),
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.teal[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(Icons.table_chart, color: Colors.white, size: 100,),
                  Text("Diagnóstico do ambiente", style: TextStyle(color: Colors.white, fontSize: 30), textAlign: TextAlign.center,)
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}