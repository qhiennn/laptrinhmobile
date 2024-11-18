//Lop Sinh Vien
class SinhVien {
  String _hoTen;
  int _tuoi;
  String _maSV;
  double _diemTB;

  // constructor
  SinhVien(this._hoTen, this._tuoi, this._maSV, this._diemTB);

  // Getters
  String get hoTen => _hoTen;
  int get tuoi => _tuoi;
  String get maSV => _maSV;
  double get diemTB => _diemTB;

  // Setters
  set hoTen(String hoTen) {
    if (hoTen.isNotEmpty) {
      _hoTen = hoTen;
    }
  }

  set tuoi(int tuoi) {
    //  if (tuoi > 0) {
    //   _tuoi = tuoi;
    // }
    _tuoi = (tuoi > 0) ? tuoi : _tuoi;
  }

  set maSV(String maSV) {
    if (maSV.isNotEmpty) {
      _maSV = maSV;
    }
  }

  set diemTB(double diemTB) {
    if (diemTB >= 0 && diemTB <= 10) {
      _diemTB = diemTB;
    }
  }

  void hienThiThongTin() {
    print('Họ tên: $_hoTen');
    print('Tuổi: $_tuoi');
    print('Mã số sinh viên: $_maSV');
    print('Điểm trung bình: $_diemTB');
  }

  String xepLoai() {
    if (_diemTB >= 8.0) return 'Giỏi';
    if (_diemTB >= 6.5) return 'Khá';
    if (_diemTB >= 5.0) return 'Trung Bình';
    return 'Yếu';
  }
}

// Lop LopHoc
class LopHoc {
  String _tenLop;
  List<SinhVien> _danhSachSV = [];

  LopHoc(this._tenLop);

  // Getters
  String get tenLop => _tenLop;
  List<SinhVien> get danhSachSV => _danhSachSV;

  // Setters
  set tenLop(String tenLop) {
    if (tenLop.isNotEmpty) {
      _tenLop = tenLop;
    }
  }

  // Thêm sinh viên
  void themSinhVien(SinhVien sv) {
    _danhSachSV.add(sv);
  }

  void hienThiDanhSach() {
    print('Danh sách sinh viên lớp $_tenLop');
    print('\n------------------------------');
    print('\n------------------------------');
    for (var sv in _danhSachSV) {
      sv.hienThiThongTin();
      print('Xếp loại: ${sv.xepLoai()}\n');
    }
  }
}

// Test
void main() {
  var sv = SinhVien('Nguyen Van A', 20, 'SV001', 8.5);
  print('Test getter: ${sv.hoTen}');
  sv.hoTen = 'Nguyen Van B';
  print('Sau khi set: ${sv.hoTen}');
  print('Xep loai: ${sv.xepLoai()}');
  print('DiemTB: ${sv.diemTB}');

  var lop = LopHoc('21DTHD5');
  lop.themSinhVien(SinhVien('Nguyen Van A', 20, 'SV001', 8.5));
  lop.themSinhVien(SinhVien('Nguyen Van B', 21, 'SV001', 6.5));
  lop.themSinhVien(SinhVien('Nguyen Van C', 22, 'SV001', 5.5));
  lop.themSinhVien(SinhVien('Nguyen Van F', 23, 'SV001', 4));
  lop.hienThiDanhSach();
}
