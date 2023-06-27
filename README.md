# Bilgisayar Bilgi Toplama

Bu PowerShell komutları, bir Windows bilgisayarının sistem, ağ bağlantısı ve disk bilgilerini toplar ve çıktıyı bir metin dosyasına kaydeder.

## Kullanım

1. PowerShell'i açın.

2. Verilen PowerShell komutlarını bir PowerShell betiği veya doğrudan PowerShell kabuğunda çalıştırın.

3. Çıktı, `$computerName-Bilgi.txt` adlı bir metin dosyasına kaydedilecektir. Dosya, D sürücüsünde oluşturulur.

## Örnek Çıktı

```powershell
Bilgisayar Adı: DENEME
Sistem Bilgisi:
- İşlemci: Intel Core I5-10400F 2.9Ghz 12Mb 1200P
- Ana Kart: Gigabyte B550 AORUS
- RAM Boyutu: 15.9694328308105 GB
- Ekran Kartı: RX 580 
- Seri NumarasÄ±: CQ78A7lK
- Model: HP Elite Mini 600 G9
- İşletim Sistemi: Microsoft Windows 10 Pro


Ağ Bağlantısı Bilgileri:
- IP Adresi: 192.168.1.1
- DNS SunucularÄ±: 192.168.1.1, , 



Disk Bilgileri:- C:: Toplam Alan: 480 GB, BoÅŸ Alan: 79.91 GB
- D:: Toplam Alan: 320 GB, BoÅŸ Alan: 181.14 GB
```

## Lisans

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Bu projeyi [MIT Lisansı](https://opensource.org/licenses/MIT) altında lisansladık. Lisansın tam açıklamasını burada bulabilirsiniz.

