# Durum Senaryosu
### 1. Kayıt Oluşturma

Senaryo Adı: Kullanıcı Kaydoluyor

Amaç:  Kullanıcının "PetFix" uygulamasına kaydolmasını sağlamak.

Aktörler: Kullanıcı

Ön Koşullar: Kullanıcının internet bağlantısı ve cihazı uygun şekilde çalışıyor olmalıdır.

Temel Akış:

1. Kullanıcı, "PetFix" uygulamasını indirir ve açar.
2. Uygulama açıldığında, kullanıcıya kaydolma veya giriş yapma seçenekleri sunulur.
3. Kullanıcı, "Kaydol" seçeneğine tıklar.
4. Uygulama, kullanıcıdan gerekli bilgileri (ad, e-posta, şifre, vb.) girmesini ister.
5. Kullanıcı, gerekli bilgileri girer ve "Kaydol" düğmesine tıklar.
6. Uygulama, kullanıcının verilerini doğrular ve yeni bir hesap oluşturur.
7. Başarılı bir şekilde kaydolduktan sonra, kullanıcıya otomatik olarak giriş yapılır ve ana ekrana yönlendirilir.
8. Kullanıcı, uygulamanın sunduğu özellikleri keşfetmeye başlar ve evcil hayvanlarını paylaşmaya başlayabilir.

Alternatif Akışlar:

Kullanıcı Zaten Hesap Sahibi: Kullanıcı zaten bir hesap sahibi ise, kaydolma adımları atlanır ve kullanıcı giriş yapar.

Sonuçlar: Kullanıcı başarılı bir şekilde "PetFix" uygulamasına kaydolur ve uygulamayı kullanmaya başlar.

------------



### 2. Şifre Güncelleme

Senaryo Adı: Kullanıcı Şifresini Güncelliyor

Amaç: Kullanıcının "PetFix" uygulamasında kayıtlı olan şifresini güncellemesini sağlamak.

Aktörler:  Kullanıcı

Ön Koşullar: Kullanıcı, uygulamaya başarılı bir şekilde giriş yapmış olmalıdır.

Temel Akış:

1. Kullanıcı, "PetFix" uygulamasına giriş yapar.
2. Uygulama, kullanıcıya profil veya hesap ayarlarına erişim sağlar.
3. Kullanıcı, profil veya hesap ayarlarına girer.
4. "Şifre Güncelle" veya benzeri bir seçeneği seçer.
5. Uygulama, kullanıcıdan mevcut şifresini ve yeni şifresini girmesini ister.
6. Kullanıcı, mevcut şifresini ve yeni şifresini girer.
7. Kullanıcı, "Güncelle" veya benzeri bir düğmeye tıklar.
8. Uygulama, kullanıcının yeni şifresini doğrular ve günceller.
9. Kullanıcıya başarılı bir şekilde şifrenin güncellendiğine dair bir bildirim gösterilir.

Alternatif Akışlar:

- *Geçersiz Şifre:* Kullanıcı, mevcut şifresini yanlış girerse, uygulama kullanıcıyı uyarır ve şifreyi tekrar girmesini ister.
- *Güncelleme Başarısız:* Uygulama, şifre güncelleme işlemini başarısız bir şekilde gerçekleştiremezse, kullanıcıya hata mesajı gösterir ve tekrar denemesini ister.

Sonuçlar: Kullanıcı başarılı bir şekilde "PetFix" uygulamasındaki şifresini günceller ve güncellenmiş şifre ile hesabına erişim sağlar.


------------

### 3. Giriş Yapma

Senaryo Adı: Kullanıcı Giriş Yapıyor

Amaç: Kullanıcının "PetFix" uygulamasına başarılı bir şekilde giriş yapmasını sağlamak.

Aktörler: Kullanıcı

Ön Koşullar: Kullanıcının "PetFix" uygulamasına kayıtlı bir hesabı olmalıdır.

Temel Akış:

1. Kullanıcı, "PetFix" uygulamasını açar.
2. Uygulama, kullanıcıyı giriş yapma ekranına yönlendirir.
3. Kullanıcı, kayıtlı e-posta adresi ve şifresini girerek "Giriş Yap" düğmesine tıklar.
4. Uygulama, kullanıcının girdiği bilgileri doğrular.
5. Eğer bilgiler doğru ise, kullanıcı başarılı bir şekilde giriş yapar ve ana ekranına yönlendirilir.
6. Kullanıcı, başarılı bir şekilde giriş yapmış olarak uygulamadaki işlevselliği kullanmaya başlar.

Alternatif Akışlar:

Geçersiz Giriş Bilgileri: Kullanıcı, yanlış e-posta adresi veya şifre girerse, uygulama kullanıcıyı hatalı giriş bilgileri konusunda uyarır ve bilgilerin doğru olup olmadığını kontrol etmesini ister.
Şifreyi Unutma: Kullanıcı, şifresini unutmuşsa, "Şifremi Unuttum" seçeneğine tıklayarak şifre sıfırlama işlemi yapabilir.
Sonuçlar: Kullanıcı başarılı bir şekilde "PetFix" uygulamasına giriş yapar ve uygulamayı kullanmaya başlar.

------------




### 4. Profil Oluşturma 

Senaryo Adı: Kullanıcı Profil Oluşturuyor

Amaç: Kullanıcının "PetFix" uygulamasında kendi profilini oluşturmasını sağlamak.

Aktörler: Kullanıcı

Ön Koşullar: Kullanıcının "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olması gerekmektedir.

Temel Akış:

1. Kullanıcı, "PetFix" uygulamasında ana ekran veya profil ayarları bölümüne giriş yapar.
2. Uygulama, kullanıcıya profil oluşturma seçeneği sunar.
3. Kullanıcı, profil oluşturma seçeneğine tıklar.
4. Uygulama, kullanıcıdan gerekli bilgileri (ad, soyad, profil resmi, biyografi, vb.) girmesini ister.
5. Kullanıcı, gerekli bilgileri girer ve "Profil Oluştur" düğmesine tıklar.
6. Uygulama, kullanıcının girdiği bilgileri doğrular ve yeni profil oluşturur.
7.Başarılı bir şekilde profil oluşturulduktan sonra, kullanıcıya profil sayfasına yönlendirme yapılır ve oluşturulan profil gösterilir.

Alternatif Akışlar:

Geçersiz Bilgiler: Kullanıcı, geçersiz veya eksik bilgilerle profil oluşturmaya çalışırsa, uygulama kullanıcıyı uyarmalı ve gerekli bilgilerin tam olarak girilmesini sağlamalıdır.
Profil Resmi Ekleme: Kullanıcı, profil oluşturma sürecinde profil resmi eklemeyi tercih edebilir. Bu durumda uygulama, kullanıcıya profil resmi yükleme seçeneği sunmalıdır.
Sonuçlar: Kullanıcı başarılı bir şekilde "PetFix" uygulamasında kendi profilini oluşturur ve diğer kullanıcılarla etkileşime geçmeye başlar.

------------



### 5. Takip Et

Senaryo Adı: Kullanıcı Bir Kullanıcıyı Takip Ediyor

Amaç: Kullanıcının "PetFix" uygulamasında başka bir kullanıcıyı takip etmesini sağlamak.

Aktörler: Takip eden kullanıcı, Takip edilen kullanıcı

Ön Koşullar: Kullanıcı, uygulamaya başarılı bir şekilde giriş yapmış olmalıdır.

Temel Akış:
1. Kullanıcı, uygulamanın arama veya profil bölümünde takip etmek istediği kullanıcıyı bulur.
2. Kullanıcı, takip etmek istediği kullanıcının profilini ziyaret eder.
3. Profil sayfasında, kullanıcı "Takip Et" veya benzeri bir düğmeye tıklar.
4. Uygulama, kullanıcının takip işlemini gerçekleştirir ve kullanıcının profilinde takip edilen kişi listesine ekler.
5. Takip edilen kullanıcı, takipçiler listesine eklenir ve takip eden kullanıcıya bildirim gönderilir.
6. Takip işlemi başarılı bir şekilde tamamlandıktan sonra, kullanıcı uygulamayı kullanmaya devam edebilir.

Alternatif Akışlar:

Zaten Takip Ediliyor: Kullanıcı, zaten takip etmeye çalıştığı kullanıcıyı zaten takip ediyorsa, uygulama kullanıcıyı uyarır ve bu durumu bildirir.
Takip İptali: Kullanıcı, daha önce takip ettiği bir kullanıcıyı takipten çıkarmak isterse, ilgili düğmeye tıklayarak takibi iptal edebilir.
Sonuçlar: Kullanıcı başarılı bir şekilde başka bir kullanıcıyı takip eder ve takip işlemi gerçekleşir.

------------




### 6. Beğeni Ekleme 

Senaryo Adı: Kullanıcı Gönderiye Beğeni Ekliyor

Amaç: Kullanıcının "PetFix" uygulamasında bir gönderiye beğeni eklemesini sağlamak.

Aktörler: Kullanıcı

Ön Koşullar: Kullanıcı, uygulamaya başarılı bir şekilde giriş yapmış olmalıdır ve beğeni ekleyeceği gönderiye erişim sağlamalıdır.

Temel Akış:*

1. Kullanıcı, "PetFix" uygulamasını açar ve ana ekranındaki gönderilere göz atar.
2. Kullanıcı, beğeni eklemek istediği gönderiyi bulur.
3. Gönderinin altında bulunan "Beğen" veya benzeri bir düğmeye tıklar.
4. Uygulama, kullanıcının beğenisini gönderiye ekler.
5. Gönderinin beğeni sayısı güncellenir ve kullanıcıya gönderinin beğenildiğine dair bir onay mesajı gösterilir.

Alternatif Akışlar:

Beğeni Kaldırma: Kullanıcı, daha önce beğendiği bir gönderiyi beğenmekten vazgeçmek isterse, "Beğeni" düğmesine tekrar tıklayarak beğenisini kaldırabilir.
Gönderi Yoksa: Kullanıcı, beğeni eklemek istediği bir gönderi bulamazsa, uygulama kullanıcıya uygun bir mesaj gösterir ve başka gönderilere göz atmaya teşvik eder.
Sonuçlar: Kullanıcı başarılı bir şekilde bir gönderiye beğeni ekler ve gönderinin beğeni sayısı güncellenir.


------------



### 7. Biyografi - Bağlantı 

Senaryo Adı: Kullanıcı Biyografi ve Bağlantı Ekliyor

Amaç: Kullanıcının "PetFix" profilinde biyografi ve bağlantı eklemesini sağlamak.

Aktörler: Kullanıcı

Ön Koşullar: Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalıdır.

Temel Akış:

1. Kullanıcı, "PetFix" uygulamasında kendi profil sayfasına gider.
2. Profil sayfasında, "Biyografi Düzenle" veya benzeri bir seçenek bulunur.
3. Kullanıcı, "Biyografi Düzenle" seçeneğine tıklar.
4. Uygulama, kullanıcıya bir metin alanı ve bağlantı eklemesi için bir kutucuk sunar.
5. Kullanıcı, biyografisini metin alanına girer ve isteğe bağlı olarak bir web sitesi veya sosyal medya bağlantısını kutucuğa ekler.
6. Kullanıcı, değişiklikleri kaydetmek için "Kaydet" veya benzeri bir düğmeye tıklar.
7. Uygulama, kullanıcının girdiği bilgileri kaydeder ve profil sayfasını günceller.
8. Kullanıcı, başarılı bir şekilde biyografi ve bağlantıyı profilinde görebilir.

Alternatif Akışlar:

Biyografi ve Bağlantıyı Silme: Kullanıcı, daha önce eklediği biyografiyi ve bağlantıyı silmek isterse, "Biyografi Düzenle" seçeneğinden metin alanını temizleyebilir ve bağlantı kutucuğunu boş bırakabilir.
Geçersiz Bağlantı: Kullanıcı, bağlantı eklerken geçersiz bir URL girerse, uygulama kullanıcıyı uyarır ve geçerli bir URL girmesini ister.
Sonuçlar: Kullanıcı başarılı bir şekilde "PetFix" profilinde biyografi ve bağlantı ekler ve bu bilgileri profilinde görüntüleyebilir.

------------





### 8. Raporlama/Engelleme

Senaryo Adı: Kullanıcı Raporlama ve Engelleme İşlemi Gerçekleştiriyor

Amaç:  Kullanıcının istenmeyen içerikleri raporlayarak veya kullanıcıları engelleyerek "PetFix" uygulamasındaki deneyimini güvenli hale getirmek.

Aktörler: Kullanıcı

Ön Koşullar: Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalıdır.

Temel Akış:

1. Kullanıcı, uygulamada istenmeyen bir içerik veya kullanıcı ile karşılaşır.
2. İçeriği veya kullanıcıyı raporlamak veya engellemek için ilgili işlemleri gerçekleştirmek için uygun bir seçenek arar.
3. İstenen içeriği raporlamak için, kullanıcı ilgili gönderiye veya yorumuna giderek "Rapor Et" veya benzeri bir seçeneği tıklar.
4. Uygulama, kullanıcıya raporlama nedenini seçmesi için bir liste sunar (istenmeyen içerik, taciz, şiddet içerikli vb.).
5. Kullanıcı, uygun raporlama nedenini seçer ve rapor işlemi için onay verir.
İlgili içerik veya kullanıcı raporlanır ve uygulama yöneticileri tarafından incelenir.
6. Kullanıcı, istenmeyen bir kullanıcıyı engellemek için, kullanıcının profil sayfasına veya ilgili gönderisine giderek "Engelle" veya benzeri bir seçeneği tıklar.
7. Kullanıcı, engelleme işlemi için onay verir.
8. İlgili kullanıcı artık kullanıcının içeriklerini göremez veya kullanıcıya mesaj gönderemez.
Alternatif Akışlar:

Raporlama Sonrası İletişim: Kullanıcı, raporlama işleminden sonra rahatsız edici içeriğin veya kullanıcının iletişimi devam ederse, kullanıcı destek ekibiyle iletişime geçebilir.
Sonuçlar:  Kullanıcı, istenmeyen içerikleri raporlayarak veya kullanıcıları engelleyerek "PetFix" uygulamasındaki deneyimini güvenli hale getirir.


------------

### 9. Arama 

Senaryo Adı: Kullanıcı Arama Yapıyor

Amaç: Kullanıcının "PetFix" uygulamasında arama yaparak istediği içeriği veya kullanıcıyı bulmasını sağlamak.

Aktörler: Kullanıcı

Ön Koşullar: Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalıdır.

Temel Akış:

1. Kullanıcı, "PetFix" uygulamasında arama çubuğunu bulur.
2. Arama çubuğuna, aramak istediği içerikle ilgili anahtar kelimeleri veya kullanıcı adını girer.
3. Kullanıcı, arama sonuçlarını görmek için "Ara" veya benzeri bir seçeneği tıklar.
4. Uygulama, kullanıcının girdiği anahtar kelimelere veya kullanıcı adına göre arama yapar.
5. Uygulama, ilgili sonuçları kullanıcıya gösterir.
6. Kullanıcı, arama sonuçları arasında gezinir ve istediği içeriği veya kullanıcıyı bulur.
Alternatif Akışlar:

Yetersiz Sonuçlar: Kullanıcı, arama sonuçlarının yetersiz veya istenmeyen olduğunu düşünürse, arama terimlerini veya stratejisini değiştirerek yeniden arama yapabilir.
Sonuçlar: Kullanıcı, "PetFix" uygulamasında başarılı bir şekilde arama yaparak istediği içeriği veya kullanıcıyı bulur.

------------




### 10. Filtreleme (Arama Çubuğu) 
Senaryo Adı: Kullanıcı Arama Sonuçlarını Filtreliyor

Amaç: Kullanıcının "PetFix" uygulamasında yaptığı arama sonuçlarını belirli kriterlere göre filtrelemesini sağlamak.

Aktörler: Kullanıcı

Ön Koşullar: Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış ve arama yapmış olmalıdır.

Temel Akış:

1. Kullanıcı, "PetFix" uygulamasında arama sonuçlarını incelemektedir.
2. Kullanıcı, arama sonuçlarını filtrelemek için "Filtrele" veya benzeri bir seçeneği tıklar.
3. Uygulama, kullanıcıya farklı filtreleme seçenekleri sunar (örneğin, tür, konum, yayınlama tarihi vb.).
4. Kullanıcı, istediği filtreleme seçeneklerini seçer.
5. Uygulama, kullanıcının seçtiği kriterlere göre arama sonuçlarını günceller ve yeniden gösterir.
6. Kullanıcı, filtrelenmiş sonuçlar arasında gezinir ve istediği içeriği bulur.
Alternatif Akışlar:

Filtreleme Kaldırma: Kullanıcı, filtreleme kriterlerini değiştirmek veya kaldırmak isterse, "Filtreleme Kaldır" veya benzeri bir seçeneği tıklayarak filtrelemeyi kaldırabilir.
Sonuçlar: Kullanıcı, "PetFix" uygulamasında yaptığı arama sonuçlarını belirli kriterlere göre filtreleyerek istediği içeriği daha kolay bulur.

------------

