# Durum Senaryoları

### 1. Kayıt Oluşturma

**Senaryo Adı:** Kullanıcı Kaydoluyor

**Amaç:** Kullanıcının "PetFix" uygulamasına kaydolmasını sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcının internet bağlantısı ve cihazı uygun şekilde çalışıyor olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasını indirir ve açar.
2. Uygulama açıldığında, kullanıcıya kaydolma veya giriş yapma seçenekleri sunulur.
3. Kullanıcı, "Kaydol" seçeneğine tıklar.
4. Uygulama, kullanıcıdan gerekli bilgileri (ad, e-posta, şifre, vb.) girmesini ister.
5. Kullanıcı, gerekli bilgileri girer ve "Kaydol" düğmesine tıklar.
6. Uygulama, kullanıcının verilerini doğrular ve yeni bir hesap oluşturur.
7. Başarılı bir şekilde kaydolduktan sonra, kullanıcıya otomatik olarak giriş yapılır ve ana ekrana yönlendirilir.
8. Kullanıcı, uygulamanın sunduğu özellikleri keşfetmeye başlar ve evcil hayvanlarını paylaşmaya başlayabilir.

**Alternatif Akışlar:**

* **Kullanıcı Zaten Hesap Sahibi:** Kullanıcı zaten bir hesap sahibi ise, kaydolma adımları atlanır ve kullanıcı giriş yapar.

**Sonuçlar:** Kullanıcı başarılı bir şekilde "PetFix" uygulamasına kaydolur ve uygulamayı kullanmaya başlar.

---

### 2. Şifre Güncelleme

**Senaryo Adı:** Kullanıcı Şifresini Güncelliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında kayıtlı olan şifresini güncellemesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, uygulamaya başarılı bir şekilde giriş yapmış olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasına giriş yapar.
2. Uygulama, kullanıcıya profil veya hesap ayarlarına erişim sağlar.
3. Kullanıcı, profil veya hesap ayarlarına girer.
4. "Şifre Güncelle" veya benzeri bir seçeneği seçer.
5. Uygulama, kullanıcıdan mevcut şifresini ve yeni şifresini girmesini ister.
6. Kullanıcı, mevcut şifresini ve yeni şifresini girer.
7. Kullanıcı, "Güncelle" veya benzeri bir düğmeye tıklar.
8. Uygulama, kullanıcının yeni şifresini doğrular ve günceller.
9. Kullanıcıya başarılı bir şekilde şifrenin güncellendiğine dair bir bildirim gösterilir.

**Alternatif Akışlar:**

- *Geçersiz Şifre:* Kullanıcı, mevcut şifresini yanlış girerse, uygulama kullanıcıyı uyarır ve şifreyi tekrar girmesini ister.
- *Güncelleme Başarısız:* Uygulama, şifre güncelleme işlemini başarısız bir şekilde gerçekleştiremezse, kullanıcıya hata mesajı gösterir ve tekrar denemesini ister.

**Sonuçlar:** Kullanıcı başarılı bir şekilde "PetFix" uygulamasındaki şifresini günceller ve güncellenmiş şifre ile hesabına erişim sağlar.

---

### 3. Giriş Yapma

**Senaryo Adı:** Kullanıcı Giriş Yapıyor

**Amaç:** Kullanıcının "PetFix" uygulamasına başarılı bir şekilde giriş yapmasını sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcının "PetFix" uygulamasına kayıtlı bir hesabı olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasını açar.
2. Uygulama, kullanıcıyı giriş yapma ekranına yönlendirir.
3. Kullanıcı, kayıtlı e-posta adresi ve şifresini girerek "Giriş Yap" düğmesine tıklar.
4. Uygulama, kullanıcının girdiği bilgileri doğrular.
5. Eğer bilgiler doğru ise, kullanıcı başarılı bir şekilde giriş yapar ve ana ekranına yönlendirilir.
6. Kullanıcı, başarılı bir şekilde giriş yapmış olarak uygulamadaki işlevselliği kullanmaya başlar.

**Alternatif Akışlar:**

* **Geçersiz Giriş Bilgileri:** Kullanıcı, yanlış e-posta adresi veya şifre girerse, uygulama kullanıcıyı hatalı giriş bilgileri konusunda uyarır ve bilgilerin doğru olup olmadığını kontrol etmesini ister.
* **Şifreyi Unutma:** Kullanıcı, şifresini unutmuşsa, "Şifremi Unuttum" seçeneğine tıklayarak şifre sıfırlama işlemi yapabilir.

**Sonuçlar:** Kullanıcı başarılı bir şekilde "PetFix" uygulamasına giriş yapar ve uygulamayı kullanmaya başlar.

---

### 4. Profil Oluşturma

**Senaryo Adı:** Kullanıcı Profil Oluşturuyor

**Amaç:** Kullanıcının "PetFix" uygulamasında kendi profilini oluşturmasını sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcının "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olması gerekmektedir.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında ana ekran veya profil ayarları bölümüne giriş yapar.
2. Uygulama, kullanıcıya profil oluşturma seçeneği sunar.
3. Kullanıcı, profil oluşturma seçeneğine tıklar.
4. Uygulama, kullanıcıdan gerekli bilgileri (ad, soyad, profil resmi, biyografi, vb.) girmesini ister.
5. Kullanıcı, gerekli bilgileri girer ve "Profil Oluştur" düğmesine tıklar.
6. Uygulama, kullanıcının girdiği bilgileri doğrular ve yeni profil oluşturur.
   7.Başarılı bir şekilde profil oluşturulduktan sonra, kullanıcıya profil sayfasına yönlendirme yapılır ve oluşturulan profil gösterilir.

**Alternatif Akışlar:**

* **Geçersiz Bilgiler:** Kullanıcı, geçersiz veya eksik bilgilerle profil oluşturmaya çalışırsa, uygulama kullanıcıyı uyarmalı ve gerekli bilgilerin tam olarak girilmesini sağlamalıdır.
* **Profil Resmi Ekleme:** Kullanıcı, profil oluşturma sürecinde profil resmi eklemeyi tercih edebilir. Bu durumda uygulama, kullanıcıya profil resmi yükleme seçeneği sunmalıdır.

**Sonuçlar:** Kullanıcı başarılı bir şekilde "PetFix" uygulamasında kendi profilini oluşturur ve diğer kullanıcılarla etkileşime geçmeye başlar.

---

### 5. Takip Et

**Senaryo Adı:** Kullanıcı Bir Kullanıcıyı Takip Ediyor

**Amaç:** Kullanıcının "PetFix" uygulamasında başka bir kullanıcıyı takip etmesini sağlamak.

**Aktörler:** Takip eden kullanıcı, Takip edilen kullanıcı

**Ön Koşullar:** Kullanıcı, uygulamaya başarılı bir şekilde giriş yapmış olmalıdır.

**Temel Akış:**

1. Kullanıcı, uygulamanın arama veya profil bölümünde takip etmek istediği kullanıcıyı bulur.
2. Kullanıcı, takip etmek istediği kullanıcının profilini ziyaret eder.
3. Profil sayfasında, kullanıcı "Takip Et" veya benzeri bir düğmeye tıklar.
4. Uygulama, kullanıcının takip işlemini gerçekleştirir ve kullanıcının profilinde takip edilen kişi listesine ekler.
5. Takip edilen kullanıcı, takipçiler listesine eklenir ve takip eden kullanıcıya bildirim gönderilir.
6. Takip işlemi başarılı bir şekilde tamamlandıktan sonra, kullanıcı uygulamayı kullanmaya devam edebilir.

**Alternatif Akışlar:**

* **Zaten Takip Ediliyor:** Kullanıcı, zaten takip etmeye çalıştığı kullanıcıyı zaten takip ediyorsa, uygulama kullanıcıyı uyarır ve bu durumu bildirir.
* **Takip İptali:** Kullanıcı, daha önce takip ettiği bir kullanıcıyı takipten çıkarmak isterse, ilgili düğmeye tıklayarak takibi iptal edebilir.

**Sonuçlar:** Kullanıcı başarılı bir şekilde başka bir kullanıcıyı takip eder ve takip işlemi gerçekleşir.

---

### 6. Beğeni Ekleme

**Senaryo Adı:** Kullanıcı Gönderiye Beğeni Ekliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında bir gönderiye beğeni eklemesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, uygulamaya başarılı bir şekilde giriş yapmış olmalıdır ve beğeni ekleyeceği gönderiye erişim sağlamalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasını açar ve ana ekranındaki gönderilere göz atar.
2. Kullanıcı, beğeni eklemek istediği gönderiyi bulur.
3. Gönderinin altında bulunan "Beğen" veya benzeri bir düğmeye tıklar.
4. Uygulama, kullanıcının beğenisini gönderiye ekler.
5. Gönderinin beğeni sayısı güncellenir ve kullanıcıya gönderinin beğenildiğine dair bir onay mesajı gösterilir.

**Alternatif Akışlar:**

* **Beğeni Kaldırma:** Kullanıcı, daha önce beğendiği bir gönderiyi beğenmekten vazgeçmek isterse, "Beğeni" düğmesine tekrar tıklayarak beğenisini kaldırabilir.
* **Gönderi Yoksa:** Kullanıcı, beğeni eklemek istediği bir gönderi bulamazsa, uygulama kullanıcıya uygun bir mesaj gösterir ve başka gönderilere göz atmaya teşvik eder.

**Sonuçlar:** Kullanıcı başarılı bir şekilde bir gönderiye beğeni ekler ve gönderinin beğeni sayısı güncellenir.

---

### 7. Biyografi - Bağlantı

**Senaryo Adı:** Kullanıcı Biyografi ve Bağlantı Ekliyor

**Amaç:** Kullanıcının "PetFix" profilinde biyografi ve bağlantı eklemesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında kendi profil sayfasına gider.
2. Profil sayfasında, "Biyografi Düzenle" veya benzeri bir seçenek bulunur.
3. Kullanıcı, "Biyografi Düzenle" seçeneğine tıklar.
4. Uygulama, kullanıcıya bir metin alanı ve bağlantı eklemesi için bir kutucuk sunar.
5. Kullanıcı, biyografisini metin alanına girer ve isteğe bağlı olarak bir web sitesi veya sosyal medya bağlantısını kutucuğa ekler.
6. Kullanıcı, değişiklikleri kaydetmek için "Kaydet" veya benzeri bir düğmeye tıklar.
7. Uygulama, kullanıcının girdiği bilgileri kaydeder ve profil sayfasını günceller.
8. Kullanıcı, başarılı bir şekilde biyografi ve bağlantıyı profilinde görebilir.

**Alternatif Akışlar:**

* **Biyografi ve Bağlantıyı Silme:** Kullanıcı, daha önce eklediği biyografiyi ve bağlantıyı silmek isterse, "Biyografi Düzenle" seçeneğinden metin alanını temizleyebilir ve bağlantı kutucuğunu boş bırakabilir.
* **Geçersiz Bağlantı:** Kullanıcı, bağlantı eklerken geçersiz bir URL girerse, uygulama kullanıcıyı uyarır ve geçerli bir URL girmesini ister.

**Sonuçlar:** Kullanıcı başarılı bir şekilde "PetFix" profilinde biyografi ve bağlantı ekler ve bu bilgileri profilinde görüntüleyebilir.

---

### 8. Raporlama/Engelleme

**Senaryo Adı:** Kullanıcı Raporlama ve Engelleme İşlemi Gerçekleştiriyor

**Amaç:** Kullanıcının istenmeyen içerikleri raporlayarak veya kullanıcıları engelleyerek "PetFix" uygulamasındaki deneyimini güvenli hale getirmek.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalıdır.

**Temel Akış:**

1. Kullanıcı, uygulamada istenmeyen bir içerik veya kullanıcı ile karşılaşır.
2. İçeriği veya kullanıcıyı raporlamak veya engellemek için ilgili işlemleri gerçekleştirmek için uygun bir seçenek arar.
3. İstenen içeriği raporlamak için, kullanıcı ilgili gönderiye veya yorumuna giderek "Rapor Et" veya benzeri bir seçeneği tıklar.
4. Uygulama, kullanıcıya raporlama nedenini seçmesi için bir liste sunar (istenmeyen içerik, taciz, şiddet içerikli vb.).
5. Kullanıcı, uygun raporlama nedenini seçer ve rapor işlemi için onay verir.
6. İlgili içerik veya kullanıcı raporlanır ve uygulama yöneticileri tarafından incelenir.
7. Kullanıcı, istenmeyen bir kullanıcıyı engellemek için, kullanıcının profil sayfasına veya ilgili gönderisine giderek "Engelle" veya benzeri bir seçeneği tıklar.
8. Kullanıcı, engelleme işlemi için onay verir.
9. İlgili kullanıcı artık kullanıcının içeriklerini göremez veya kullanıcıya mesaj gönderemez.

**Alternatif Akışlar:**

* Raporlama Sonrası İletişim: Kullanıcı, raporlama işleminden sonra rahatsız edici içeriğin veya kullanıcının iletişimi devam ederse, kullanıcı destek ekibiyle iletişime geçebilir.

**Sonuçlar:** Kullanıcı, istenmeyen içerikleri raporlayarak veya kullanıcıları engelleyerek "PetFix" uygulamasındaki deneyimini güvenli hale getirir.

---

### 9. Arama

**Senaryo Adı:** Kullanıcı Arama Yapıyor

**Amaç:** Kullanıcının "PetFix" uygulamasında arama yaparak istediği içeriği veya kullanıcıyı bulmasını sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında arama çubuğunu bulur.
2. Arama çubuğuna, aramak istediği içerikle ilgili anahtar kelimeleri veya kullanıcı adını girer.
3. Kullanıcı, arama sonuçlarını görmek için "Ara" veya benzeri bir seçeneği tıklar.
4. Uygulama, kullanıcının girdiği anahtar kelimelere veya kullanıcı adına göre arama yapar.
5. Uygulama, ilgili sonuçları kullanıcıya gösterir.
6. Kullanıcı, arama sonuçları arasında gezinir ve istediği içeriği veya kullanıcıyı bulur.

**Alternatif Akışlar:**

**Yetersiz Sonuçlar:** Kullanıcı, arama sonuçlarının yetersiz veya istenmeyen olduğunu düşünürse, arama terimlerini veya stratejisini değiştirerek yeniden arama yapabilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında başarılı bir şekilde arama yaparak istediği içeriği veya kullanıcıyı bulur.

---

### 10. Filtreleme (Arama Çubuğu)

**Senaryo Adı:** Kullanıcı Arama Sonuçlarını Filtreliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında yaptığı arama sonuçlarını belirli kriterlere göre filtrelemesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış ve arama yapmış olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında arama sonuçlarını incelemektedir.
2. Kullanıcı, arama sonuçlarını filtrelemek için "Filtrele" veya benzeri bir seçeneği tıklar.
3. Uygulama, kullanıcıya farklı filtreleme seçenekleri sunar (örneğin, tür, konum, yayınlama tarihi vb.).
4. Kullanıcı, istediği filtreleme seçeneklerini seçer.
5. Uygulama, kullanıcının seçtiği kriterlere göre arama sonuçlarını günceller ve yeniden gösterir.
6. Kullanıcı, filtrelenmiş sonuçlar arasında gezinir ve istediği içeriği bulur.

**Alternatif Akışlar:**

* **Filtreleme Kaldırma:** Kullanıcı, filtreleme kriterlerini değiştirmek veya kaldırmak isterse, "Filtreleme Kaldır" veya benzeri bir seçeneği tıklayarak filtrelemeyi kaldırabilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında yaptığı arama sonuçlarını belirli kriterlere göre filtreleyerek istediği içeriği daha kolay bulur.

---

### 11. Gönderi Listeleme

**Senaryo Adı:** Kullanıcı Gönderileri Listeliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında gönderileri listelemesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" ana ekranına veya keşfetme bölümüne gider.
2. Uygulama, kullanıcıya gönderileri listeleyen bir akış sunar.
3. Kullanıcı, gönderileri görmek için akışı aşağı kaydırır veya öne doğru kaydırarak yeni gönderileri yükler.
4. Uygulama, kullanıcının isteğine göre gönderileri yeniler ve günceller.
5. Kullanıcı, gönderiler arasında gezinir ve ilginç bulduğu gönderilere tıklar.
6. Uygulama, kullanıcının tıkladığı gönderiyi görüntüler ve ilgili içeriği detaylı olarak gösterir.

**Alternatif Akışlar:**

* *Gönderi Türüne Göre Filtreleme:* Kullanıcı, belirli bir türdeki gönderileri görmek isterse (örneğin, fotoğraflar, videolar, metin gönderileri), filtreleme seçeneklerini kullanarak gönderi türlerini filtreleyebilir.
* *Kullanıcının Takip Ettiği Kişilere Göre Filtreleme:* Kullanıcı, sadece takip ettiği kişilerin gönderilerini görmek isteyebilir. Bu durumda, "Takip Edilenler" sekmesi veya benzeri bir seçenek kullanılabilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında gönderileri listeler ve ilginç bulduğu içeriklere kolayca erişir.

---

### 12. Gönderi Ekleme

**Senaryo Adı:** Kullanıcı Gönderi Ekliyor

**Amaç:** Kullanıcının "PetFix" uygulamasına yeni bir gönderi eklemesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalı ve gönderi eklemek için gerekli izinlere sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" ana ekranında veya profil sayfasında "Yeni Gönderi Ekle" veya benzeri bir seçeneği bulur.
2. Kullanıcı, gönderi eklemek için tıkladığı seçeneği seçer.
3. Uygulama, kullanıcıya gönderi eklemek için bir arayüz sunar. Bu arayüz genellikle metin kutusu, medya yükleme düğmeleri ve ilgili diğer seçeneklerden oluşur.
4. Kullanıcı, gönderisi için metin girer ve isteğe bağlı olarak medya dosyaları (fotoğraf, video) yükler.
5. Kullanıcı, gönderisini tamamladıktan sonra "Paylaş" veya benzeri bir düğmeye tıklar.
6. Uygulama, kullanıcının gönderisini yükler ve onaylar.
7. Yeni gönderi, kullanıcının profilinde veya ana akışta görünür.

**Alternatif Akışlar:**

* *Medya Yükleme Başarısızlığı:* Kullanıcı, medya yüklerken bir hata ile karşılaşırsa, uygulama kullanıcıya hata mesajı gösterir ve medya dosyasının yeniden yüklenmesini ister.
* *İzinlerin Reddedilmesi:* Kullanıcı, gönderi eklemek için gereken izinleri reddederse, uygulama kullanıcıya gerekli izinlerin verilmesini hatırlatan bir ileti gönderir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde yeni bir gönderi ekler ve bu gönderiyi uygulama içindeki diğer kullanıcılarla paylaşır.

---

### 13. Gönderi Silme

**Senaryo Adı:** Kullanıcı Gönderi Siliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında kendi gönderisini silmesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalı ve silmek istediği gönderiye sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, kendi profiline veya gönderisine gider ve silmek istediği gönderiyi bulur.
2. Kullanıcı, silmek istediği gönderiye tıklar.
3. Gönderinin ayrıntılarını görüntüledikten sonra, kullanıcı gönderiyi silmek için "Sil" veya benzeri bir seçeneği seçer.
4. Uygulama, kullanıcıyı gönderiyi silmek istediğinden emin olmak için onaylar.
5. Kullanıcı, gönderiyi silmeyi onayladıktan sonra, uygulama gönderiyi kalıcı olarak siler.
6. Silme işlemi başarılı olduğunda, kullanıcıya bir onay mesajı gösterilir ve kullanıcı ana ekranına yönlendirilir.

**Alternatif Akışlar:**

* *Silme İşleminin İptali:* Kullanıcı, gönderiyi silmekten vazgeçerse, "Sil" işleminden önce iptal seçeneğine tıklayarak işlemi iptal edebilir.
* *Silme İşleminin Başarısızlığı:* Kullanıcı, gönderiyi silmeye çalıştığında bir hata oluşursa, uygulama kullanıcıya bir hata mesajı gösterir ve silme işleminin tekrar denenmesini ister.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında kendi gönderisini başarılı bir şekilde siler ve gönderi artık kullanıcı profili veya uygulama akışında görünmez.

---

### 14. Gönderi Güncelleme

**Senaryo Adı:** Kullanıcı Gönderiyi Güncelliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında daha önce paylaştığı bir gönderiyi güncellemesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalı ve güncellemek istediği gönderiye sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, kendi profiline veya gönderisine gider ve güncellemek istediği gönderiyi bulur.
2. Kullanıcı, güncellemek istediği gönderiye tıklar.
3. Gönderinin ayrıntılarını görüntüledikten sonra, kullanıcı gönderiyi güncellemek için "Düzenle" veya benzeri bir seçeneği seçer.
4. Uygulama, kullanıcıyı gönderiyi düzenlemek istediğinden emin olmak için onaylar.
5. Kullanıcı, gönderinin içeriğini veya detaylarını düzenler.
6. Düzenleme işleminden sonra, kullanıcı "Kaydet" veya benzeri bir düğmeye tıklar.
7. Uygulama, güncellenmiş gönderiyi kaydeder ve kullanıcıya bir onay mesajı gösterir.
8. Kullanıcı, onay mesajını görür ve güncellenmiş gönderiyi gözden geçirebilir.

**Alternatif Akışlar:**

* *Güncelleme İşleminin İptali:* Kullanıcı, gönderiyi güncellemekten vazgeçerse, "Düzenle" işleminden önce iptal seçeneğine tıklayarak işlemi iptal edebilir.
* *Güncelleme İşleminin Başarısızlığı:* Kullanıcı, gönderiyi güncellemeye çalıştığında bir hata oluşursa, uygulama kullanıcıya bir hata mesajı gösterir ve güncelleme işleminin tekrar denenmesini ister.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında daha önce paylaştığı bir gönderiyi başarılı bir şekilde günceller ve güncellenmiş gönderi kullanıcı ve diğer kullanıcılar tarafından görüntülenir.

---

### 15. Yorum Listeleme

**Senaryo Adı:** Kullanıcı Yorumları Görüntülüyor

**Amaç:** Kullanıcının "PetFix" uygulamasında bir gönderiye yapılan yorumları görüntülemesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalı ve yorumları görüntülemek istediği bir gönderiye sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında bir gönderiye gider.
2. Gönderinin ayrıntılarını gördükten sonra, kullanıcı gönderi altında bulunan yorumları görüntülemek için "Yorumlar" veya benzeri bir seçeneği tıklar.
3. Uygulama, kullanıcının tıkladığı gönderiye yapılan yorumları listeler.
4. Kullanıcı, yorumları okur ve gönderi hakkında diğer kullanıcıların görüşlerini gözden geçirir.

**Alternatif Akışlar:**

* *Yorum Olmaması Durumu:* Kullanıcı, tıkladığı gönderiye henüz yapılmış bir yorum olmadığını fark ederse, uygulama kullanıcıya bu durumu bildiren bir mesaj gösterir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında bir gönderiye yapılan yorumları başarılı bir şekilde görüntüler ve diğer kullanıcıların görüşlerini inceler.

---

### 16. Yorum Ekleme

**Senaryo Adı:** Kullanıcı Yorum Yapıyor

**Amaç:** Kullanıcının "PetFix" uygulamasında bir gönderiye yorum yapmasını sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalı ve yorum yapmak istediği bir gönderiye sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında bir gönderiye gider.
2. Gönderinin ayrıntılarını gördükten sonra, kullanıcı gönderi altında bulunan yorumlar bölümüne ulaşır.
3. Kullanıcı, yorum yapmak için "Yorum Yap" veya benzeri bir seçeneği tıklar.
4. Uygulama, kullanıcıya yorum yapmak için bir metin kutusu sunar.
5. Kullanıcı, metin kutusuna yorumunu yazar.
6. Yorumunu tamamladıktan sonra, kullanıcı "Gönder" veya benzeri bir düğmeye tıklar.
7. Uygulama, kullanıcının yorumunu gönderir ve gönderinin altında görüntüler.

**Alternatif Akışlar:**

* *Yorumunun İptali:* Kullanıcı, yorum yapmayı iptal etmek isterse, "İptal" veya benzeri bir seçeneği tıklayarak işlemi iptal edebilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında bir gönderiye başarılı bir şekilde yorum yapar ve diğer kullanıcılarla düşüncelerini paylaşır.

---

### 17. Yorum Silme

**Senaryo Adı:** Kullanıcı Yorumunu Siliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında kendi yorumunu silmesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalı ve silmek istediği yoruma sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında bir gönderiye yorum yapmıştır ve bu yorumu silmek istemektedir.
2. Kullanıcı, kendi yorumunu bulmak için ilgili gönderiye gider.
3. Gönderi altında bulunan yorumlar bölümünde, kullanıcı kendi yorumunu bulur.
4. Kullanıcı, kendi yorumunun yanında bulunan "Sil" veya benzeri bir seçeneği tıklar.
5. Uygulama, kullanıcının yorumu silmek istediğinden emin olmak için onay ister.
6. Kullanıcı, silme işlemini onaylar ve "Evet" seçeneğini tıklar.
7. Uygulama, kullanıcının yorumunu başarıyla siler ve kullanıcıya bir onay mesajı gösterir.

**Alternatif Akışlar:**

* *Silme İşleminin İptali:* Kullanıcı, yorumunu silmekten vazgeçerse, "Sil" işleminden önce iptal seçeneğine tıklayarak işlemi iptal edebilir.
* *Silme İşleminin Başarısızlığı:* Uygulama, kullanıcının yorumunu silerken bir hata oluşursa, kullanıcıya bir hata mesajı gösterir ve işlemi tekrar denemesi için yönlendirir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında kendi yorumunu başarılı bir şekilde siler ve bu yorum artık gönderi altında görüntülenmez.

---

### 18. Yorum Güncelleme

**Senaryo Adı:** Kullanıcı Yorumunu Güncelliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında daha önce yaptığı bir yorumu güncellemesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış ve güncellemek istediği yoruma sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, daha önce yaptığı yorumu güncellemek istediği bir gönderiye gider.
2. Gönderinin altında bulunan yorumlar bölümünde kendi yorumunu bulur.
3. Kullanıcı, yorumunun yanında bulunan "Düzenle" veya benzeri bir seçeneği tıklar.
4. Uygulama, kullanıcının yorumunu güncellemesi için bir metin kutusu sunar.
5. Kullanıcı, metin kutusuna güncellemek istediği yorumu yazar.
6. Yorumunu güncelledikten sonra, kullanıcı "Güncelle" veya benzeri bir düğmeye tıklar.
7. Uygulama, kullanıcının yorumunu günceller ve güncellenmiş yorumu gönderinin altında görüntüler.

**Alternatif Akışlar:**

* *Güncelleme İşleminin İptali:* Kullanıcı, yorumu güncellemekten vazgeçerse, "Düzenle" işleminden önce iptal seçeneğine tıklayarak işlemi iptal edebilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında daha önce yaptığı bir yorumu başarılı bir şekilde günceller ve güncellenmiş yorum kullanıcılar tarafından görüntülenir.

---

### 19. Sahiplendirme Formu Listeleme

**Senaryo Adı:** Kullanıcı Sahiplendirme Formlarını Listeliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında mevcut olan sahiplendirme formlarını görüntülemesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" ana ekranında veya ilgili menülerde sahiplendirme formlarını gösteren bir seçenek arar.
2. Uygulama, kullanıcıya mevcut sahiplendirme formlarını listelemek için bir arayüz sunar.
3. Kullanıcı, sahiplendirme formlarını gözden geçirir ve ilgilendiği formlara tıklar.
4. Uygulama, kullanıcının tıkladığı formu ayrıntılı olarak gösterir.

**Alternatif Akışlar:**

* *Sıralama ve Filtreleme:* Kullanıcı, sahiplendirme formlarını sıralamak veya belirli kriterlere göre filtrelemek isterse, uygulama kullanıcıya sıralama ve filtreleme seçenekleri sunar.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında mevcut sahiplendirme formlarını başarılı bir şekilde görüntüler ve ilgili formlara erişir.

---

### 20. Sahiplendirme Formuna Ekleme

**Senaryo Adı:** Kullanıcı Sahiplendirme Formuna Yeni Bir Kayıt Ekliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında sahiplendirme formuna yeni bir kayıt eklemesini sağlamak.

**Aktörler:** Kullanıcı, Sahiplendirme Formu

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalı ve sahiplendirme formu oluşturma iznine sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında sahiplendirme bölümüne gider.
2. Sahiplendirme formunu oluşturmak için "Yeni Kayıt Ekle" veya benzeri bir seçeneği tıklar.
3. Uygulama, kullanıcıya sahiplendirme formu oluşturma arayüzünü sunar.
4. Kullanıcı, sahiplendirme formunda istenen bilgileri doldurur. Bu bilgiler genellikle hayvanın türü, yaş, cinsiyet, sağlık durumu, iletişim bilgileri gibi detayları içerir.
5. Kullanıcı, formu doldurduktan sonra "Kaydet" veya benzeri bir düğmeye tıklar.
6. Uygulama, kullanıcının girdiği bilgileri kullanarak yeni sahiplendirme kaydını oluşturur ve veritabanına kaydeder.
7. Kayıt başarıyla oluşturulduğunda, kullanıcıya bir onay mesajı gösterilir ve kullanıcı ana ekrana yönlendirilir.

**Alternatif Akışlar:**

* *Formun Eksik veya Yanlış Bilgi İle Doldurulması:* Kullanıcı, formu eksik veya yanlış bilgilerle doldurduğunda, uygulama kullanıcıya gerekli alanları doldurması veya yanlış bilgileri düzeltmesi konusunda uyarı mesajları gösterebilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında başarılı bir şekilde yeni bir sahiplendirme kaydı oluşturur ve bu kayıt diğer kullanıcılar tarafından görüntülenebilir hale gelir.

---

### 21. Sahiplendirme Formundan Silme

**Senaryo Adı:** Kullanıcı Sahiplendirme Formundan Kayıt Siliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında sahiplendirme formundan bir kaydı silmesini sağlamak.

**Aktörler:** Kullanıcı, Sahiplendirme Formu

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalı ve sahiplendirme formunu düzenleme veya silme iznine sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında sahiplendirme bölümüne gider.
2. Silmek istediği kaydı bulur ve üzerine tıklar.
3. Kullanıcı, kaydı silmek için "Sil" veya benzeri bir seçeneği tıklar.
4. Uygulama, kullanıcının silme işlemini onaylamasını ister.
5. Kullanıcı, silme işlemini onayladıktan sonra "Evet" veya benzeri bir düğmeye tıklar.
6. Uygulama, kaydı veritabanından siler.
7. Kayıt başarıyla silindiğinde, kullanıcıya bir onay mesajı gösterilir ve kullanıcı ana ekrana yönlendirilir.

**Alternatif Akışlar:**

* *Silme İşleminin İptali:* Kullanıcı, kaydı silmekten vazgeçerse, "Sil" işleminden önce iptal seçeneğine tıklayarak işlemi iptal edebilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında başarılı bir şekilde sahiplendirme formundan bir kaydı sildiğinde, kayıt artık diğer kullanıcılar tarafından görüntülenmez.

---

### 22. Sahiplendirme Formunda Güncelleme

**Senaryo Adı:** Kullanıcı Sahiplendirme Formundaki Kaydı Güncelliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında sahiplendirme formundaki bir kaydı güncellemesini sağlamak.

**Aktörler:** Kullanıcı, Sahiplendirme Formu

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış ve güncellemek istediği sahiplendirme kaydına sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında sahiplendirme bölümüne gider.
2. Güncellemek istediği kaydı bulur ve üzerine tıklar.
3. Kullanıcı, kaydı düzenlemek için "Düzenle" veya benzeri bir seçeneği tıklar.
4. Uygulama, kullanıcıya kaydı güncellemesi için bir düzenleme arayüzü sunar.
5. Kullanıcı, kaydın içeriğini günceller ve istediği değişiklikleri yapar.
6. Güncelleme işleminden sonra, kullanıcı "Kaydet" veya benzeri bir düğmeye tıklar.
7. Uygulama, kullanıcının yaptığı güncellemeleri kaydeder ve veritabanında güncellenmiş kaydı saklar.
8. Güncelleme işlemi başarılı olduğunda, kullanıcıya bir onay mesajı gösterilir ve kullanıcı ana ekrana yönlendirilir.

**Alternatif Akışlar:**

* *Güncelleme İşleminin İptali:* Kullanıcı, güncelleme işlemini iptal etmek isterse, "Düzenle" işleminden önce iptal seçeneğine tıklayarak işlemi iptal edebilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında sahiplendirme formundaki bir kaydı başarılı bir şekilde günceller ve güncellenmiş kayıt diğer kullanıcılar tarafından görüntülenebilir hale gelir.

---


### 23. Eşleştirme Formu Listeleme 

**Senaryo Adı:** Kullanıcı Eşleştirme Formunu Görüntülüyor

**Amaç:** Kullanıcının "PetFix" uygulamasında mevcut eşleştirme formlarını görüntülemesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında eşleştirme bölümüne gider.
2. Mevcut eşleştirme formlarını görüntülemek için uygun bir seçeneği tıklar.
3. Uygulama, kullanıcının talebini işler ve mevcut eşleştirme formlarını listeler.
4. Kullanıcı, eşleştirme formlarını gözden geçirir ve ilgilendiği formları seçer.
5. Kullanıcı, seçtiği formu daha detaylı incelemek için ilgili formun üzerine tıklar.
6. Uygulama, seçilen eşleştirme formunun ayrıntılarını gösterir.

**Alternatif Akışlar:**

* *Eşleştirme Formunun Bulunamaması:* Kullanıcı, eşleştirme bölümüne girdiğinde hiçbir eşleştirme formu bulunamazsa, uygulama kullanıcıya bu durumu bildiren bir mesaj gösterir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında mevcut eşleştirme formlarını başarılı bir şekilde görüntüler ve ilgilendiği formları inceleyebilir.

---



### 24. Eşleştirme Formuna Ekleme 

**Senaryo Adı:** Kullanıcı Eşleştirme Formuna Yeni Bir Kayıt Ekliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında eşleştirme formuna yeni bir kayıt eklemesini sağlamak.

**Aktörler:** Kullanıcı, Eşleştirme Formu

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış ve eşleştirme formu oluşturma iznine sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında eşleştirme bölümüne gider.
2. Ekleme işlemi için "Yeni Kayıt Ekle" veya benzeri bir seçeneği tıklar.
3. Uygulama, kullanıcıya yeni bir eşleştirme formu oluşturma arayüzünü sunar.
4. Kullanıcı, eşleştirme formunda istenen bilgileri doldurur. Bu bilgiler genellikle eşleştirilmek istenen hayvanın türü, yaş, cinsiyet, sağlık durumu, iletişim bilgileri gibi detayları içerir.
5. Kullanıcı, formu doldurduktan sonra "Kaydet" veya benzeri bir düğmeye tıklar.
6. Uygulama, kullanıcının girdiği bilgileri kullanarak yeni eşleştirme kaydını oluşturur ve veritabanına kaydeder.
7. Kayıt başarıyla oluşturulduğunda, kullanıcıya bir onay mesajı gösterilir ve kullanıcı ana ekrana yönlendirilir.

**Alternatif Akışlar:**

* *Formun Eksik veya Yanlış Bilgi İle Doldurulması:* Kullanıcı, formu eksik veya yanlış bilgilerle doldurduğunda, uygulama kullanıcıya gerekli alanları doldurması veya yanlış bilgileri düzeltmesi konusunda uyarı mesajları gösterebilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında başarılı bir şekilde yeni bir eşleştirme kaydı oluşturur ve bu kayıt diğer kullanıcılar tarafından görüntülenebilir hale gelir.

---



### 25. Eşleştirme Formundan Silme 

**Senaryo Adı:** Kullanıcı Eşleştirme Formundan Kayıt Siliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında eşleştirme formundan bir kaydı silmesini sağlamak.

**Aktörler:** Kullanıcı, Eşleştirme Formu

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış ve silmek istediği eşleştirme kaydına sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında eşleştirme bölümüne gider.
2. Silmek istediği kaydı bulur ve üzerine tıklar.
3. Kullanıcı, kaydı silmek için "Sil" veya benzeri bir seçeneği tıklar.
4. Uygulama, kullanıcının silme işlemini onaylamasını ister.
5. Kullanıcı, silme işlemini onayladıktan sonra "Evet" veya benzeri bir düğmeye tıklar.
6. Uygulama, kaydı veritabanından siler.
7. Kayıt başarıyla silindiğinde, kullanıcıya bir onay mesajı gösterilir ve kullanıcı ana ekrana yönlendirilir.

**Alternatif Akışlar:**

* *Silme İşleminin İptali:* Kullanıcı, kaydı silmekten vazgeçerse, "Sil" işleminden önce iptal seçeneğine tıklayarak işlemi iptal edebilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında başarılı bir şekilde eşleştirme formundan bir kaydı sildiğinde, kayıt artık diğer kullanıcılar tarafından görüntülenmez.

---



### 26. Eşleştirme Formunda Güncelleme

**Senaryo Adı:** Kullanıcı Eşleştirme Formundaki Kaydı Güncelliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında eşleştirme formundaki bir kaydı güncellemesini sağlamak.

**Aktörler:** Kullanıcı, Eşleştirme Formu

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış ve güncellemek istediği eşleştirme kaydına sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında eşleştirme bölümüne gider.
2. Güncellemek istediği kaydı bulur ve üzerine tıklar.
3. Kullanıcı, kaydı düzenlemek için "Düzenle" veya benzeri bir seçeneği tıklar.
4. Uygulama, kullanıcıya kaydı güncellemesi için bir düzenleme arayüzü sunar.
5. Kullanıcı, kaydın içeriğini günceller ve istediği değişiklikleri yapar.
6. Güncelleme işleminden sonra, kullanıcı "Kaydet" veya benzeri bir düğmeye tıklar.
7. Uygulama, kullanıcının yaptığı güncellemeleri kaydeder ve veritabanında güncellenmiş kaydı saklar.
8. Güncelleme işlemi başarılı olduğunda, kullanıcıya bir onay mesajı gösterilir ve kullanıcı ana ekrana yönlendirilir.

**Alternatif Akışlar:**

* *Güncelleme İşleminin İptali:* Kullanıcı, güncelleme işlemini iptal etmek isterse, "Düzenle" işleminden önce iptal seçeneğine tıklayarak işlemi iptal edebilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında eşleştirme formundaki bir kaydı başarılı bir şekilde günceller ve güncellenmiş kayıt diğer kullanıcılar tarafından görüntülenebilir hale gelir.

---



### 27. Etkinlik Formu Listeleme

**Senaryo Adı:** Kullanıcı Etkinlik Formlarını Görüntülüyor

**Amaç:** Kullanıcının "PetFix" uygulamasında mevcut etkinlik formlarını görüntülemesini sağlamak.

**Aktörler:** Kullanıcı

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında etkinlik bölümüne gider.
2. Mevcut etkinlik formlarını görüntülemek için uygun bir seçeneği tıklar.
3. Uygulama, kullanıcının talebini işler ve mevcut etkinlik formlarını listeler.
4. Kullanıcı, etkinlik formlarını gözden geçirir ve ilgilendiği formları seçer.
5. Kullanıcı, seçtiği formu daha detaylı incelemek için ilgili formun üzerine tıklar.
6. Uygulama, seçilen etkinlik formunun ayrıntılarını gösterir.

**Alternatif Akışlar:**

* *Etkinlik Formunun Bulunamaması:* Kullanıcı, etkinlik bölümüne girdiğinde hiçbir etkinlik formu bulunamazsa, uygulama kullanıcıya bu durumu bildiren bir mesaj gösterir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında mevcut etkinlik formlarını başarılı bir şekilde görüntüler ve ilgilendiği formları inceleyebilir.

---



### 28. Etkinlik Formuna Ekleme

**Senaryo Adı:** Kullanıcı Etkinlik Formuna Yeni Bir Kayıt Ekliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında etkinlik formuna yeni bir kayıt eklemesini sağlamak.

**Aktörler:** Kullanıcı, Etkinlik Formu

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış ve etkinlik formu oluşturma iznine sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında etkinlik bölümüne gider.
2. Ekleme işlemi için "Yeni Kayıt Ekle" veya benzeri bir seçeneği tıklar.
3. Uygulama, kullanıcıya yeni bir etkinlik formu oluşturma arayüzünü sunar.
4. Kullanıcı, etkinlik formunda istenen bilgileri doldurur. Bu bilgiler genellikle etkinliğin adı, tarihi, saati, yeri, açıklaması, iletişim bilgileri gibi detayları içerir.
5. Kullanıcı, formu doldurduktan sonra "Kaydet" veya benzeri bir düğmeye tıklar.
6. Uygulama, kullanıcının girdiği bilgileri kullanarak yeni etkinlik kaydını oluşturur ve veritabanına kaydeder.
7. Kayıt başarıyla oluşturulduğunda, kullanıcıya bir onay mesajı gösterilir ve kullanıcı ana ekrana yönlendirilir.

**Alternatif Akışlar:**

* *Formun Eksik veya Yanlış Bilgi İle Doldurulması:* Kullanıcı, formu eksik veya yanlış bilgilerle doldurduğunda, uygulama kullanıcıya gerekli alanları doldurması veya yanlış bilgileri düzeltmesi konusunda uyarı mesajları gösterebilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında başarılı bir şekilde yeni bir etkinlik kaydı oluşturur ve bu kayıt diğer kullanıcılar tarafından görüntülenebilir hale gelir.

---



### 29. Etkinlik Formundan Silme 

**Senaryo Adı:** Kullanıcı Etkinlik Formundaki Kaydı Siliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında etkinlik formundan bir kaydı silmesini sağlamak.

**Aktörler:** Kullanıcı, Etkinlik Formu

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış olmalıdır ve etkinlik formunu düzenleme veya silme iznine sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında etkinlik bölümüne gider.
2. Silmek istediği kaydı bulur ve üzerine tıklar.
3. Kullanıcı, kaydı silmek için "Sil" veya benzeri bir seçeneği tıklar.
4. Uygulama, kullanıcının silme işlemini onaylamasını ister.
5. Kullanıcı, silme işlemini onayladıktan sonra "Evet" veya benzeri bir düğmeye tıklar.
6. Uygulama, kaydı veritabanından siler.
7. Kayıt başarıyla silindiğinde, kullanıcıya bir onay mesajı gösterilir ve kullanıcı ana ekrana yönlendirilir.

**Alternatif Akışlar:**

* *Silme İşleminin İptali:* Kullanıcı, kaydı silmekten vazgeçerse, "Sil" işleminden önce iptal seçeneğine tıklayarak işlemi iptal edebilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında etkinlik formundan bir kaydı başarılı bir şekilde sildiğinde, kayıt artık diğer kullanıcılar tarafından görüntülenmez.

---



### 30. Etkinlik Formunda Güncelleme

**Senaryo Adı:** Kullanıcı Etkinlik Formundaki Kaydı Güncelliyor

**Amaç:** Kullanıcının "PetFix" uygulamasında etkinlik formundaki bir kaydı güncellemesini sağlamak.

**Aktörler:** Kullanıcı, Etkinlik Formu

**Ön Koşullar:** Kullanıcı, "PetFix" uygulamasına başarılı bir şekilde giriş yapmış ve güncellemek istediği etkinlik kaydına sahip olmalıdır.

**Temel Akış:**

1. Kullanıcı, "PetFix" uygulamasında etkinlik bölümüne gider.
2. Güncellemek istediği kaydı bulur ve üzerine tıklar.
3. Kullanıcı, kaydı düzenlemek için "Düzenle" veya benzeri bir seçeneği tıklar.
4. Uygulama, kullanıcıya kaydı güncellemesi için bir düzenleme arayüzü sunar.
5. Kullanıcı, kaydın içeriğini günceller ve istediği değişiklikleri yapar.
6. Güncelleme işleminden sonra, kullanıcı "Kaydet" veya benzeri bir düğmeye tıklar.
7. Uygulama, kullanıcının yaptığı güncellemeleri kaydeder ve veritabanında güncellenmiş kaydı saklar.
8. Güncelleme işlemi başarılı olduğunda, kullanıcıya bir onay mesajı gösterilir ve kullanıcı ana ekrana yönlendirilir.

**Alternatif Akışlar:**

* *Güncelleme İşleminin İptali:* Kullanıcı, güncelleme işlemini iptal etmek isterse, "Düzenle" işleminden önce iptal seçeneğine tıklayarak işlemi iptal edebilir.

**Sonuçlar:** Kullanıcı, "PetFix" uygulamasında etkinlik formundaki bir kaydı başarılı bir şekilde günceller ve güncellenmiş kayıt diğer kullanıcılar tarafından görüntülenebilir hale gelir.

---
