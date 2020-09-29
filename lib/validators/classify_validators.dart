class ClassifyValidators{

  String validateAge(String text){
    int value = int.tryParse(text);
    if(value != null){
      if(value < 0 && value > 120)
        return "Coloque sua idade";
    } else {
      return "Preencha o campo";
    }
    return null;
  }

  String validateBp(String text){
    int value = int.tryParse(text);
    if(value == null){
      return "Preencha o campo";
    }
    return null;
  }

  String validateBgr(String text){
    try{
      double value = double.tryParse(text);

      if(value == null) return "Preencha o campo";
    }catch (e){
      return "Digite um número";
    }

    return null;
  }
}