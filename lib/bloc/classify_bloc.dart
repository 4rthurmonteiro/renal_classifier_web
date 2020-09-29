import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:renal_classifier_web/domain/classify_service.dart';
import 'package:renal_classifier_web/model/api_response.dart';
import 'package:renal_classifier_web/model/classify.dart';
import 'package:rxdart/rxdart.dart';

class ClassifyBloc extends BlocBase {
  final _classifyService = ClassifyService();

  final _dataController = BehaviorSubject<Classify>();
  final _loadingController = BehaviorSubject<bool>();
  final _createdController = BehaviorSubject<bool>();

  Stream<Classify> get outData => _dataController.stream;

  Stream<bool> get outLoading => _loadingController.stream;

  Stream<bool> get outCreated => _createdController.stream;

  Classify unsavedData = new Classify();

  ClassifyBloc() {
    _createdController.add(false);

    _dataController.add(unsavedData);
  }

  void saveAge(String age) {
    unsavedData.age = int.parse(age);
  }

  void saveBp(String bp) {
    unsavedData.bp = int.parse(bp);
  }

  void saveSg(String sg) {
    unsavedData.sg = double.parse(sg);
  }

  void saveAl(String al) {
    unsavedData.al = int.parse(al);
  }

  void saveSu(String su) {
    unsavedData.su = int.parse(su);
  }

  void saveRbc(String rbc) {
    unsavedData.rbc = int.parse(rbc);
  }

  void savePc(String pc) {
    unsavedData.pc = int.parse(pc);
  }

  void savePcc(String pcc) {
    unsavedData.pcc = int.parse(pcc);
  }

  void saveBa(String ba) {
    unsavedData.ba = int.parse(ba);
  }

  void saveBgr(String bgr) {
    unsavedData.bgr = double.parse(bgr);
  }

  void saveBu(String bu) {
    unsavedData.bu = double.parse(bu);
  }

  void saveSc(String sc) {
    unsavedData.sc = double.parse(sc);
  }

  void saveSod(String sod) {
    unsavedData.sod = double.parse(sod);
  }

  void savePot(String pot) {
    unsavedData.pot = double.parse(pot);
  }

  void saveHemo(String hemo) {
    unsavedData.hemo = double.parse(hemo);
  }

  void savePcv(String pcv) {
    unsavedData.pcv = double.parse(pcv);
  }

  void saveWbcc(String wbcc) {
    unsavedData.wbcc = double.parse(wbcc);
  }

  void saveRbcc(String rbcc) {
    unsavedData.rbcc = double.parse(rbcc);
  }

  void saveHtn(String htn) {
    unsavedData.htn = int.parse(htn);
  }

  void saveDm(String dm) {
    unsavedData.dm = int.parse(dm);
  }

  void saveCad(String cad) {
    unsavedData.cad = int.parse(cad);
  }

  void saveAppet(String appet) {
    unsavedData.appet = int.parse(appet);
  }

  void savePe(String pe) {
    unsavedData.pe = int.parse(pe);
  }

  void saveAne(String ane) {
    unsavedData.ane = int.parse(ane);
  }

  Future<ApiResponse> predict() async {
    _loadingController.add(true);

    try {
      ApiResponse success = await _classifyService.post(unsavedData);

      _createdController.add(true);
      _loadingController.add(false);

      return success;
    } catch (e) {
      _loadingController.add(false);

      return ApiResponse.error();
    }
  }

  @override
  void dispose() {
    super.dispose();
    // TODO: implement dispose
    _dataController.close();
    _loadingController.close();
    _createdController.close();
  }
}
