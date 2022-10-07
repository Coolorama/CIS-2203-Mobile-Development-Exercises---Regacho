class phoneBook {
  int idno = 0;
  String firstName = "";
  String lastName = "";
  int phNum = 0;
  String address = "";

  phoneBook(int id, String fname, String lname, int num, String addr) {
    this.idno = id;
    this.firstName = fname;
    this.lastName = lname;
    this.phNum = num;
    this.address = addr;
  }

  void show() {
    if (this.idno > 0) {
      print(this.idno);
      print(this.firstName);
      print(this.lastName);
      print(this.phNum);
      print(this.address);
    }
  }

  void remove() {
    this.idno = 0;
    this.firstName = "";
    this.lastName = "";
    this.phNum = 0;
    this.address = "";
  }
}

void main() {
  phoneBook pb1 = phoneBook(1, "Chris", "Pratt", 09876543210, "USA");
  phoneBook pb2 = phoneBook(2, "Chris", "Evans", 09876543211, "USA");
  phoneBook pb3 = phoneBook(3, "Chris", "Pine", 09876543212, "USA");
  phoneBook pb4 = phoneBook(4, "Chris", "Hemsworth", 09876543213, "Australia");
  phoneBook pb5 = phoneBook(5, "Chris", "Rock", 09876543214, "USA");
  pb1.show();
  pb2.show();
  pb3.show();
  pb4.show();
  pb5.show();
  phoneBook pb6 = phoneBook(6, "Chris", "Martin", 09876543215, "England");
  pb6.show();
  pb4.remove(); // No longer was shown
  pb4.show();
}
