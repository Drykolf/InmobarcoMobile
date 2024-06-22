class Item{
  String? title;
  String? category;
  String? thumbUrl;
  String? location;
  String? price;

  Item({this.title, this.category, this.thumbUrl, this.location, this.price});

  static List<Item> suggested = [
    Item(
      title: 'Apartamento 1',
      category: 'Apartamento',
      thumbUrl: 'https://inmobarco.arrendasoft.co/img/medium/380x212_aadb59f37eb48fa44c47bad76d13c0ec.jpeg',
      location: 'Sabaneta',
      price: '2.850.000'
      ),
    Item(
      title: 'Apartamento 2',
      category: 'Apartamento',
      thumbUrl: 'https://inmobarco.arrendasoft.co/img/medium/380x212_a5843a34ed5e76f404eeb46c5f264700.jpeg',
      location: 'Poblado',
      price: '3.700.000'
      ),
    Item(
      title: 'Apartamento 3',
      category: 'Apartamento',
      thumbUrl: 'https://inmobarco.arrendasoft.co/img/medium/380x212_915f97adf77dcbd795ddcdc54fe92f56.jpeg',
      location: 'Fatima',
      price: '2.200.000'
      )
  ];
}