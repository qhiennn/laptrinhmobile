// 2180607487 - Lê Quang Hiến - 21DTHD5
import 'dart:io';
import 'dart:math';

void main() {
  double a, b, c;

  do {
    stdout.write('Nhập hệ số a (a ≠ 0): ');
    a = double.tryParse(stdin.readLineSync()!) ?? 0;
    if (a == 0) {
      print('Hệ số a phải khác 0. Vui lòng nhập lại!');
    }
  } while (a == 0);

  // Nếu hệ số bằng null thì gán giá trị mặc định là 0
  stdout.write('Nhập hệ số b: ');
  b = double.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write('Nhập hệ số c: ');
  c = double.tryParse(stdin.readLineSync()!) ?? 0;

  // Tính delta
  double delta = b * b - 4 * a * c;

  print('\nKết quả: ');
  if (delta > 0) {
    double x1 = (-b + sqrt(delta)) / (2 * a);
    double x2 = (-b - sqrt(delta)) / (2 * a);
    print('Phương trình có 2 nghiệm phân biệt: ');
    print('x1 = $x1');
    print('x2 = $x2');
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print('Phương trình có nghiệm kép: x = $x');
  } else {
    print('Phương trình vô nghiệm');
  }
}
