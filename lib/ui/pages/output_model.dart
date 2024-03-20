class OutputModel {
  String? uid;
  String? keterangan;
  int? titik;

  OutputModel({
    this.uid,
    this.keterangan,
    this.titik,
  });

  factory OutputModel.fromMap(map) {
    return OutputModel(
      uid: map['uid'],
      keterangan: map['keterangan'],
      titik: map['titik'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'keterangan': keterangan,
      'titik': titik,
    };
  }
}