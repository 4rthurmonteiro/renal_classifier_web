import 'dart:convert' as convert;

import 'package:renal_classifier_web/model/entity.dart';

class Classify extends Entity{
  int age;
  int bp;
  double sg;
  int al;
  int su;
  int rbc;
  int pc;
  int pcc;
  int ba;
  double bgr;
  double bu;
  double sc;
  double sod;
  double pot;
  double hemo;
  double pcv;
  double wbcc;
  double rbcc;
  int htn;
  int dm;
  int cad;
  int appet;
  int pe;
  int ane;

  Classify(
      {this.age,
        this.bp,
        this.sg,
        this.al,
        this.su,
        this.rbc,
        this.pc,
        this.pcc,
        this.ba,
        this.bgr,
        this.bu,
        this.sc,
        this.sod,
        this.pot,
        this.hemo,
        this.pcv,
        this.wbcc,
        this.rbcc,
        this.htn,
        this.dm,
        this.cad,
        this.appet,
        this.pe,
        this.ane});

  Classify.fromJson(Map<String, dynamic> json) {
    age = json['age'];
    bp = json['bp'];
    sg = json['sg'];
    al = json['al'];
    su = json['su'];
    rbc = json['rbc'];
    pc = json['pc'];
    pcc = json['pcc'];
    ba = json['ba'];
    bgr = json['bgr'];
    bu = json['bu'];
    sc = json['sc'];
    sod = json['sod'];
    pot = json['pot'];
    hemo = json['hemo'];
    pcv = json['pcv'];
    wbcc = json['wbcc'];
    rbcc = json['rbcc'];
    htn = json['htn'];
    dm = json['dm'];
    cad = json['cad'];
    appet = json['appet'];
    pe = json['pe'];
    ane = json['ane'];
  }

  @override
  Map<String, dynamic> toMap() {
    // TODO: implement toMap
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['age'] = this.age;
    data['bp'] = this.bp;
    data['sg'] = this.sg;
    data['al'] = this.al;
    data['su'] = this.su;
    data['rbc'] = this.rbc;
    data['pc'] = this.pc;
    data['pcc'] = this.pcc;
    data['ba'] = this.ba;
    data['bgr'] = this.bgr;
    data['bu'] = this.bu;
    data['sc'] = this.sc;
    data['sod'] = this.sod;
    data['pot'] = this.pot;
    data['hemo'] = this.hemo;
    data['pcv'] = this.pcv;
    data['wbcc'] = this.wbcc;
    data['rbcc'] = this.rbcc;
    data['htn'] = this.htn;
    data['dm'] = this.dm;
    data['cad'] = this.cad;
    data['appet'] = this.appet;
    data['pe'] = this.pe;
    data['ane'] = this.ane;
    return data;
  }

  String toJson() {
    String json = convert.json.encode(toMap());
    return json;
  }

  @override
  String toString() {
    return 'Classify{age: $age, bp: $bp, sg: $sg, al: $al, su: $su, rbc: $rbc, pc: $pc, pcc: $pcc, ba: $ba, bgr: $bgr, bu: $bu, sc: $sc, sod: $sod, pot: $pot, hemo: $hemo, pcv: $pcv, wbcc: $wbcc, rbcc: $rbcc, htn: $htn, dm: $dm, cad: $cad, appet: $appet, pe: $pe, ane: $ane}';
  }
}

