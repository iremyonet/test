class dataModel {
  Null? dataTypes;
  Null? totalCount;
  List<ResultSets>? resultSets;
  String? sQL;

  dataModel({this.dataTypes, this.totalCount, this.resultSets, this.sQL});

  dataModel.fromJson(Map<String, dynamic> json) {
    dataTypes = json['DataTypes'];
    totalCount = json['TotalCount'];
    if (json['ResultSets'] != null) {
      resultSets = <ResultSets>[];
      json['ResultSets'].forEach((v) {
        resultSets!.add(new ResultSets.fromJson(v));
      });
    }
    sQL = json['SQL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DataTypes'] = this.dataTypes;
    data['TotalCount'] = this.totalCount;
    if (this.resultSets != null) {
      data['ResultSets'] = this.resultSets!.map((v) => v.toJson()).toList();
    }
    data['SQL'] = this.sQL;
    return data;
  }
}

class ResultSets {
  String? dATE;
  int? rOOMCOUNT;
  int? aDULT;
  int? cHD1;
  int? cHD2;
  int? bABY;
  String? bOARDTYPE;
  String? rOOMNO;
  String? aCCOMTYPE;
  String? cHECKIN;
  String? cHECKOUT;
  String? rESSTATE;
  String? aGENCYNAME;
  String? nATIONALITY;
  String? gUESTNAMES;
  String? cHECKINDATE;
  String? cHECKOUTDATE;
  int? pAXBREAKFAST;
  int? pAXLUNCH;
  int? pAXDINNER;
  Null? hADBREAKFAST;
  Null? hADLUNCH;
  Null? hADDINNER;
  int? iD;
  int? rOOMCOUNTTYPE;

  ResultSets(
      {this.dATE,
        this.rOOMCOUNT,
        this.aDULT,
        this.cHD1,
        this.cHD2,
        this.bABY,
        this.bOARDTYPE,
        this.rOOMNO,
        this.aCCOMTYPE,
        this.cHECKIN,
        this.cHECKOUT,
        this.rESSTATE,
        this.aGENCYNAME,
        this.nATIONALITY,
        this.gUESTNAMES,
        this.cHECKINDATE,
        this.cHECKOUTDATE,
        this.pAXBREAKFAST,
        this.pAXLUNCH,
        this.pAXDINNER,
        this.hADBREAKFAST,
        this.hADLUNCH,
        this.hADDINNER,
        this.iD,
        this.rOOMCOUNTTYPE});

  ResultSets.fromJson(Map<String, dynamic> json) {
    dATE = json['DATE'];
    rOOMCOUNT = json['ROOMCOUNT'];
    aDULT = json['ADULT'];
    cHD1 = json['CHD1'];
    cHD2 = json['CHD2'];
    bABY = json['BABY'];
    bOARDTYPE = json['BOARDTYPE'];
    rOOMNO = json['ROOMNO'];
    aCCOMTYPE = json['ACCOMTYPE'];
    cHECKIN = json['CHECKIN'];
    cHECKOUT = json['CHECKOUT'];
    rESSTATE = json['RESSTATE'];
    aGENCYNAME = json['AGENCYNAME'];
    nATIONALITY = json['NATIONALITY'];
    gUESTNAMES = json['GUESTNAMES'];
    cHECKINDATE = json['CHECKINDATE'];
    cHECKOUTDATE = json['CHECKOUTDATE'];
    pAXBREAKFAST = json['PAXBREAKFAST'];
    pAXLUNCH = json['PAXLUNCH'];
    pAXDINNER = json['PAXDINNER'];
    hADBREAKFAST = json['HADBREAKFAST'];
    hADLUNCH = json['HADLUNCH'];
    hADDINNER = json['HADDINNER'];
    iD = json['ID'];
    rOOMCOUNTTYPE = json['ROOMCOUNTTYPE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['DATE'] = this.dATE;
    data['ROOMCOUNT'] = this.rOOMCOUNT;
    data['ADULT'] = this.aDULT;
    data['CHD1'] = this.cHD1;
    data['CHD2'] = this.cHD2;
    data['BABY'] = this.bABY;
    data['BOARDTYPE'] = this.bOARDTYPE;
    data['ROOMNO'] = this.rOOMNO;
    data['ACCOMTYPE'] = this.aCCOMTYPE;
    data['CHECKIN'] = this.cHECKIN;
    data['CHECKOUT'] = this.cHECKOUT;
    data['RESSTATE'] = this.rESSTATE;
    data['AGENCYNAME'] = this.aGENCYNAME;
    data['NATIONALITY'] = this.nATIONALITY;
    data['GUESTNAMES'] = this.gUESTNAMES;
    data['CHECKINDATE'] = this.cHECKINDATE;
    data['CHECKOUTDATE'] = this.cHECKOUTDATE;
    data['PAXBREAKFAST'] = this.pAXBREAKFAST;
    data['PAXLUNCH'] = this.pAXLUNCH;
    data['PAXDINNER'] = this.pAXDINNER;
    data['HADBREAKFAST'] = this.hADBREAKFAST;
    data['HADLUNCH'] = this.hADLUNCH;
    data['HADDINNER'] = this.hADDINNER;
    data['ID'] = this.iD;
    data['ROOMCOUNTTYPE'] = this.rOOMCOUNTTYPE;
    return data;
  }
}