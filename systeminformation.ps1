$computerInfo = Get-WmiObject -Class Win32_ComputerSystem
$diskInfo = Get-WmiObject -Class Win32_LogicalDisk -Filter "DriveType=3"
$serialNumber = (Get-WmiObject -Class Win32_BIOS).SerialNumber
$processorInfo = (Get-WmiObject -Class Win32_Processor).Name
$computerName = $computerInfo.Name
$model = $computerInfo.Model
$osInfo = (Get-WmiObject -Class Win32_OperatingSystem).Caption
$ram = $computerInfo.TotalPhysicalMemory / 1GB
$mainboard = (Get-WmiObject -Class Win32_BaseBoard).Manufacturer + " " + (Get-WmiObject -Class Win32_BaseBoard).Product
$gpu = (Get-WmiObject -Class Win32_VideoController).Name
$ipConfig = Get-WmiObject -Class Win32_NetworkAdapterConfiguration | Where-Object { $_.IPAddress -ne $null }
$ipAddress = $ipConfig.IPAddress[0]
$dnsServers = $ipConfig.DNSServerSearchOrder -join ", "

$output = @"
Bilgisayar Adı: $computerName
Sistem Bilgisi:
- İşlemci: $processorInfo
- Ana Kart: $mainboard
- RAM Boyutu: $ram GB
- Ekran Kartı: $gpu
- Seri Numarası: $serialNumber
- Model: $model
- İşletim Sistemi: $osInfo


Ağ Bağlantısı Bilgileri:
- IP Adresi: $ipAddress
- DNS Sunucuları: $dnsServers



Disk Bilgileri:
"@

foreach ($disk in $diskInfo) {
    $diskName = $disk.DeviceID
    $diskSize = "{0:N2} GB" -f ($disk.Size / 1GB)
    $freeSpace = "{0:N2} GB" -f ($disk.FreeSpace / 1GB)
    
    $output += "- $($diskName): Toplam Alan: $($diskSize), Boş Alan: $($freeSpace)`r`n"
}

$output | Out-File -FilePath "D:\$computerName-Bilgi.txt" -Encoding UTF8
