import '../models/product.dart';

class ProductService {
  static final List<Product> _products = [
    const Product(
      id: 1,
      name: 'Kablosuz Kulaklık Pro',
      description:
          'Aktif gürültü engelleme özelliğine sahip, 30 saat pil ömrü sunan premium bluetooth kulaklık. Üstün ses kalitesi ve konforlu tasarımıyla uzun kullanım seansları için idealdir.',
      price: 1299.99,
      category: 'Elektronik',
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/375-375/110000644767902.jpg",
      rating: 4.8,
    ),
    const Product(
      id: 2,
      name: 'Slim Fit Denim Ceket',
      description:
          'Yüksek kaliteli %100 pamuk denim kumaştan üretilmiş, modern slim fit kesimli ceket. Her kombinle uyumlu klasik mavi tonu ile sezonsuz kullanım imkânı sunar.',
      price: 459.90,
      category: 'Giyim',
      imageUrl:
          "https://ktnimg2.mncdn.com/products/2026/03/17/3217097/7a39ceb4-0b2f-40bc-9083-f7e87b0f21a5_size870x1142.jpg",
      rating: 4.5,
    ),
    const Product(
      id: 3,
      name: 'Akıllı Saat Series X',
      description:
          'Sağlık takibi, GPS, nabız ölçer ve 7 günlük pil ömrü ile donatılmış akıllı saat. Su geçirmez tasarımı ve AMOLED ekranıyla günlük hayatın vazgeçilmezi.',
      price: 2499.00,
      category: 'Elektronik',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSU150P7liHmcinvI9zHd8jlazmuvcpHAWONQ&s",
      rating: 4.7,
    ),
    const Product(
      id: 4,
      name: 'Deri Omuz Çantası',
      description:
          'El yapımı gerçek dana derisi omuz çantası. Geniş iç hacmi ve sağlam fermuarı ile hem şık hem de fonksiyonel bir aksesuar. Günlük ve profesyonel kullanıma uygundur.',
      price: 879.50,
      category: 'Aksesuar',
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6V8AZoq6tpuzRTBkA6z-TBZa03S055klOwg&s",
      rating: 4.3,
    ),
    const Product(
      id: 5,
      name: 'Mekanik Klavye RGB',
      description:
          'Cherry MX Blue switch\'li, tam boyutlu mekanik gaming klavyesi. RGB aydınlatma, alüminyum gövde ve ergonomik tasarımı ile oyunculara ve yazılımcılara özel.',
      price: 1150.00,
      category: 'Elektronik',
      imageUrl:
          'https://cdn.dsmcdn.com/mnresize/420/620/ty1811/prod/QC_ENRICHMENT/20260114/16/812ac039-e04a-3dc1-8f3c-003a2900ac37/1_org_zoom.jpg',
      rating: 4.6,
    ),
    const Product(
      id: 6,
      name: 'Yoga & Fitness Seti',
      description:
          'Kaymaz taban yoga matı, 2 adet direnç bandı ve taşıma çantasından oluşan komple fitness seti. Evde veya spor salonunda kullanıma uygun, dayanıklı malzemelerden üretilmiştir.',
      price: 345.00,
      category: 'Spor',
      imageUrl:
          'https://cdn.dsmcdn.com/mnresize/-/280/ty940/product/media/images/20230603/17/380126749/278485140/1/1_org_zoom.jpg',
      rating: 4.4,
    ),
    const Product(
      id: 7,
      name: 'Aromaterapi Seti',
      description:
          'Lavanta, okaliptüs ve gül kokularını içeren 6\'lı uçucu yağ seti. Difüzör uyumlu, %100 doğal içerik. Uyku kalitesi ve stres azaltımı için tasarlanmıştır.',
      price: 189.90,
      category: 'Yaşam',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOFuHSRHHhUGjKPVfhxdUxyNa08JEZ8fgIpg&s',
      rating: 4.2,
    ),
    const Product(
      id: 8,
      name: 'Ultra Hafif Laptop Sırtçantası',
      description:
          '15.6 inç laptop bölümü, USB şarj portu ve su geçirmez dış yüzey. Ergonomik omuz askısı ve genişletilmiş depolama alanıyla iş ve seyahat için mükemmel.',
      price: 620.00,
      category: 'Aksesuar',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRExBEw4NWbBa0_ymCGfRM4qrjgQXaH-pvGdw&s',
      rating: 4.5,
    ),
  ];

  static List<Product> getAllProducts() => List.unmodifiable(_products);

  static List<Product> getByCategory(String category) {
    if (category == 'Tümü') return getAllProducts();
    return _products.where((p) => p.category == category).toList();
  }

  static List<String> getCategories() {
    final cats = {'Tümü', ..._products.map((p) => p.category)};
    return cats.toList();
  }

  static List<Product> search(String query) {
    final q = query.toLowerCase();
    return _products
        .where((p) =>
            p.name.toLowerCase().contains(q) ||
            p.category.toLowerCase().contains(q))
        .toList();
  }
}
