<# 
    iNooTh
        version 1.1
#>

#Esse script precisa ser executado como administrador para funcionar corretamente.

$ErrorActionPreference = 'SilentlyContinue'

$Button = [System.Windows.MessageBoxButton]::OKCancel
$ErrorIco = [System.Windows.MessageBoxImage]::Information
$Ask = "Deseja executar isso como administrador?
        Click em 'OK' para continuar."

If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    $Prompt = [System.Windows.MessageBox]::Show($Ask, "Executar como administrador:", $Button, $ErrorIco) 
    Switch ($Prompt) {
        #Isso irá debloat o Windows 11
        OK {
            Write-Host "Você não executou este script como administrador. Este script se elevará automaticamente para ser executado como administrador e continuará."
            Start-Process PowerShell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
            Exit
        }
        Cancel {
            Write-Host "Voce cancelou!"
            Exit
        }
    }
}


cls
Write-Host " "
Write-Host "=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#"
Write-Host "#                                                                    ="
Write-Host "=    ___ _                      ___           _            ___  ___  #"
Write-Host "#   / __\ | ___  __ _ _ __     / __\__ _  ___| |__   ___  / _ \/ __\ ="
Write-Host "=  / /  | |/ _ \/ _`  | '_ \   / /  / _`  |/ __| '_ \ / _ \/ /_)/ /    #"
Write-Host "# / /___| |  __/ (_| | | | | / /__| (_| | (__| | | |  __/ ___/ /___  ="
Write-Host "= \____/|_|\___|\__,_|_| |_| \____/\__,_|\___|_| |_|\___\/   \____/  #"
Write-Host "#                                                                    ="
Write-Host "=                                                                    #"
Write-Host "#                                                                    ="
Write-Host "=                                                                    #"
Write-Host "#            Limpar Cache do Computador após formatação.             ="
Write-Host "=                                                                    #"
Write-Host "#                                                                    ="
Write-Host "=                                                        By: iNooth  #"
Write-Host "=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#=#"
Write-Host " "

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(400,480)
$Form.text                       = "Limpeza do windows apos Formatação"
$Form.TopMost                    = $false
$Form.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#10212f")

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.text                    = "Desinstalar APPS Desnecessários"
$Button1.width                   = 326
$Button1.height                  = 63
$Button1.location                = New-Object System.Drawing.Point(35,53)
$Button1.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',13,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Button1.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button1.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#133c5e")

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.text                    = "Desisntalar OneDrive"
$Button2.width                   = 326
$Button2.height                  = 63
$Button2.location                = New-Object System.Drawing.Point(35,130)
$Button2.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',13,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Button2.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button2.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#133c5e")

$Button3                         = New-Object system.Windows.Forms.Button
$Button3.text                    = "Limpar pastas Temporárias"
$Button3.width                   = 326
$Button3.height                  = 63
$Button3.location                = New-Object System.Drawing.Point(35,207)
$Button3.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',13,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Button3.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button3.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#133c5e")

$Button4                         = New-Object system.Windows.Forms.Button
$Button4.text                    = "Ativar modo Escuro"
$Button4.width                   = 326
$Button4.height                  = 63
$Button4.location                = New-Object System.Drawing.Point(35,284)
$Button4.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',13,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Button4.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button4.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#133c5e")

$Button5                         = New-Object system.Windows.Forms.Button
$Button5.text                    = "Desativar Telemetry"
$Button5.width                   = 326
$Button5.height                  = 63
$Button5.location                = New-Object System.Drawing.Point(35,361)
$Button5.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',13,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Button5.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button5.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#133c5e")

$Button6                         = New-Object system.Windows.Forms.Button
$Button6.text                    = "Sair"
$Button6.width                   = 60
$Button6.height                  = 30
$Button6.location                = New-Object System.Drawing.Point(326,436)
$Button6.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Button6.ForeColor               = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Button6.BackColor               = [System.Drawing.ColorTranslator]::FromHtml("#133c5e")

$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = "Limpeza de formatação"
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(51,10)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',19,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$Label1.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "By: iNooTh"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(17,448)
$Label2.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)
$Label2.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")


$Form.controls.AddRange(@($Button1,$Button2,$Button3,$Button4,$Button5,$Button6,$Label1,$Label2))


#region Logic 

$Button1.Add_Click( {
        Write-Host "    Desistalação de aplicativos iniciada"
        Write-Host " "
	[regex]$WhitelistedApps = 'Store|Photos|WindowsCalculator|WindowsNotepad|WindowsNotepad|ScreenSketch|WindowsSoundRecorder|DesktopAppInstaller|WindowsCamera|Terminal|WebExperience|Nvidia|QuickAssist'
	Get-AppxPackage -AllUsers | Where-Object {$_.Name -NotMatch $WhitelistedApps} | Remove-AppxPackage
	Get-AppxPackage | Where-Object {$_.Name -NotMatch $WhitelistedApps} | Remove-AppxPackage
	Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -NotMatch $WhitelistedApps} | Remove-AppxProvisionedPackage -Online
        Write-Host "    Aplicativos desnecessarios desinstalados!"
    }
)

#############################

$Button2.Add_Click( { 
        Write-Host "Inicializando desinstalação do OneDrive!"
        If (Test-Path "$env:USERPROFILE\OneDrive\*") {
            Write-Host "Arquivos encontrados na pasta OneDrive! Verificando se existe uma pasta chamada OneDriveBackupFiles."
            Start-Sleep 1
              
            If (Test-Path "$env:USERPROFILE\Desktop\OneDriveBackupFiles") {
                Write-Host "Uma pasta chamada OneDriveBackupFiles já existe em sua área de trabalho. Todos os arquivos do seu local do OneDrive serão movidos para essa pasta." 
            }
            else {
                If (!(Test-Path "$env:USERPROFILE\Desktop\OneDriveBackupFiles")) {
                    Write-Host "Uma pasta chamada OneDriveBackupFiles será criada e estará localizada em sua área de trabalho. Todos os arquivos do seu local do OneDrive estarão localizados nessa pasta."
                    New-item -Path "$env:USERPROFILE\Desktop" -Name "OneDriveBackupFiles"-ItemType Directory -Force
                }
            }
            Start-Sleep 1
            Move-Item -Path "$env:USERPROFILE\OneDrive\*" -Destination "$env:USERPROFILE\Desktop\OneDriveBackupFiles" -Force
            Write-Host "Todos os arquivos/pastas foram movidos com sucesso da sua pasta OneDrive para a pasta 'OneDriveBackupFiles' na área de trabalho."
            Start-Sleep 1
            Write-Host "Continuando com a remoção do OneDrive."
            Start-Sleep 1
        }
        Else {
            Write-Host "A pasta OneDrive não existe ou não há arquivos encontrados na pasta. Continuando com a remoção do OneDrive."
            Start-Sleep 1
            Write-Host "Habilitando a Política de Grupo 'Impedir o uso do OneDrive para Armazenamento de Arquivos'."
            $OneDriveKey = 'HKLM:Software\Policies\Microsoft\Windows\OneDrive'
            If (!(Test-Path $OneDriveKey)) {
                Mkdir $OneDriveKey
                Set-ItemProperty $OneDriveKey -Name OneDrive -Value DisableFileSyncNGSC
            }
            Set-ItemProperty $OneDriveKey -Name OneDrive -Value DisableFileSyncNGSC
        }

        Write-Host "Desinstalando o OneDrive. Por favor, espere..."
    
        New-PSDrive  HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT
        $onedrive = "$env:SYSTEMROOT\SysWOW64\OneDriveSetup.exe"
        $ExplorerReg1 = "HKCR:\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}"
        $ExplorerReg2 = "HKCR:\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}"
        Stop-Process -Name "OneDrive*"
        Start-Sleep 2
        If (!(Test-Path $onedrive)) {
            $onedrive = "$env:SYSTEMROOT\System32\OneDriveSetup.exe"
        }
        Start-Process $onedrive "/uninstall" -NoNewWindow -Wait
        Start-Sleep 2
        Write-Host "Parando o explorador de arquivos."
        Start-Sleep 1
        taskkill.exe /F /IM explorer.exe
        Start-Sleep 3
        Write-Host "Removendo arquivos restantes."
        If (Test-Path "$env:USERPROFILE\OneDrive") {
            Remove-Item "$env:USERPROFILE\OneDrive" -Force -Recurse
        }
        If (Test-Path "$env:LOCALAPPDATA\Microsoft\OneDrive") {
            Remove-Item "$env:LOCALAPPDATA\Microsoft\OneDrive" -Force -Recurse
        }
        If (Test-Path "$env:PROGRAMDATA\Microsoft OneDrive") {
            Remove-Item "$env:PROGRAMDATA\Microsoft OneDrive" -Force -Recurse
        }
        If (Test-Path "$env:SYSTEMDRIVE\OneDriveTemp") {
            Remove-Item "$env:SYSTEMDRIVE\OneDriveTemp" -Force -Recurse
        }
        Write-Host "Removendo o OneDrive do Windows Explorer"
        If (!(Test-Path $ExplorerReg1)) {
            New-Item $ExplorerReg1
        }
        Set-ItemProperty $ExplorerReg1 System.IsPinnedToNameSpaceTree -Value 0 
        If (!(Test-Path $ExplorerReg2)) {
            New-Item $ExplorerReg2
        }
        Set-ItemProperty $ExplorerReg2 System.IsPinnedToNameSpaceTree -Value 0
        Write-Host "Reiniciando o Explorer que foi desligado antes."
        Start-Process explorer.exe -NoNewWindow
        Write-Host "O OneDrive foi desinstalado com sucesso!"
        
        Remove-item env:OneDrive
    }
)

#############################

$Button3.Add_Click( {
        $objShell = New-Object -ComObject Shell.Application
	    $objFolder = $objShell.Namespace(0xA)
	    $WinTemp = "c:\Windows\Temp\*"
	
    #1#	Empty Recycle Bin #
	    write-Host "Esvaziando a lixeira." -ForegroundColor Cyan 
	    $objFolder.items() | %{ remove-item $_.path -Recurse -Confirm:$false}
	
    #2# Remove Temp
        write-Host " "
	    write-Host "Removendo Windows\Temp" -ForegroundColor Green
        Set-Location “C:\Windows\Temp”
	    Remove-Item * -Recurse -Force -ErrorAction SilentlyContinue

        write-Host "Removendo Windows\Prefetch" -ForegroundColor Green
        Set-Location “C:\Windows\Prefetch”
        Remove-Item * -Recurse -Force -ErrorAction SilentlyContinue

        write-Host "Removendo *\Local Settings\temp\" -ForegroundColor Green
        Set-Location “C:\Documents and Settings”
        Remove-Item “.\*\Local Settings\temp\*” -Recurse -Force -ErrorAction SilentlyContinue

        write-Host "Removendo *\Appdata\Local\Temp\" -ForegroundColor Green
        Set-Location “C:\Users”
        Remove-Item “.\*\Appdata\Local\Temp\*” -Recurse -Force -ErrorAction SilentlyContinue

        write-Host "Removendo *\Appdata\Recent\" -ForegroundColor Green
        Set-Location “C:\Users”
        Remove-Item “.\*\Appdata\Recent\*” -Recurse -Force -ErrorAction SilentlyContinue

        write-Host "Removendo Windows\SoftwareDistribution\Download" -ForegroundColor Green
        Set-Location “C:\Windows\SoftwareDistribution\Download”
	    Remove-Item * -Recurse -Force -ErrorAction SilentlyContinue
        write-Host " "
	
    #3# Running Disk Clean up Tool 
	    write-Host "Executando a ferramenta de limpeza de disco do Windows" -ForegroundColor Cyan
	    cleanmgr /sagerun:1 | out-Null
	
	    $([char]7)
	    Sleep 3
	    write-Host "Limpesa de arquivos temporários feita!" -ForegroundColor Yellow 
	    Sleep 3
    }
)

#############################

$Button4.Add_Click( {
        Write-Host "Ativando o modo escuro!"
        $Theme = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"
        Set-ItemProperty $Theme AppsUseLightTheme -Value 0
        Start-Sleep 1
        Write-Host "Pronto."
    }
)

#############################

$Button5.Add_Click( { 
        $ErrorActionPreference = 'SilentlyContinue'
        #Disables Windows Feedback Experience
        Write-Host "Desativando o programa de experiência de comentários do Windows"
        $Advertising = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo"
        If (Test-Path $Advertising) {
            Set-ItemProperty $Advertising Enabled -Value 0 
        }
            
        #Stops Cortana from being used as part of your Windows Search Function
        #Write-Host "Impedindo que a Cortana seja usada como parte de sua função de pesquisa do Windows"
        $Search = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
        If (Test-Path $Search) {
            Set-ItemProperty $Search AllowCortana -Value 0 
        }

        #Disables Web Search in Start Menu
        Write-Host "Desabilitar a Pesquisa na Web no Menu Iniciar"
        $WebSearch = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
        Set-ItemProperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" BingSearchEnabled -Value 0 
        If (!(Test-Path $WebSearch)) {
            New-Item $WebSearch
        }
        Set-ItemProperty $WebSearch DisableWebSearch -Value 1 
            
        #Stops the Windows Feedback Experience from sending anonymous data
        Write-Host "Parando o programa de experiência de comentários do Windows"
        $Period = "HKCU:\Software\Microsoft\Siuf\Rules"
        If (!(Test-Path $Period)) { 
            New-Item $Period
        }
        Set-ItemProperty $Period PeriodInNanoSeconds -Value 0 

        #Prevents bloatware applications from returning and removes Start Menu suggestions               
        Write-Host "Adicionando a chave do Registro para evitar que aplicativos bloatware retornem"
        $registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent"
        $registryOEM = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
        If (!(Test-Path $registryPath)) { 
            New-Item $registryPath
        }
        Set-ItemProperty $registryPath DisableWindowsConsumerFeatures -Value 1 

        If (!(Test-Path $registryOEM)) {
            New-Item $registryOEM
        }
        Set-ItemProperty $registryOEM ContentDeliveryAllowed -Value 0 
        Set-ItemProperty $registryOEM OemPreInstalledAppsEnabled -Value 0 
        Set-ItemProperty $registryOEM PreInstalledAppsEnabled -Value 0 
        Set-ItemProperty $registryOEM PreInstalledAppsEverEnabled -Value 0 
        Set-ItemProperty $registryOEM SilentInstalledAppsEnabled -Value 0 
        Set-ItemProperty $registryOEM SystemPaneSuggestionsEnabled -Value 0          
    
        #Preping mixed Reality Portal for removal    
        Write-Host "Definir o valor do Mixed Reality Portal como 0 para que você possa desinstalá-lo em Configurações"
        $Holo = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Holographic"    
        If (Test-Path $Holo) {
            Set-ItemProperty $Holo  FirstRunSucceeded -Value 0 
        }

        #Disables Wi-fi Sense
        Write-Host "Desativando o Sensor Wi-Fi (Compartilhar senhas do Wi-Fi)"
        $WifiSense1 = "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting"
        $WifiSense2 = "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots"
        $WifiSense3 = "HKLM:\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config"
        If (!(Test-Path $WifiSense1)) {
            New-Item $WifiSense1
        }
        Set-ItemProperty $WifiSense1  Value -Value 0 
        If (!(Test-Path $WifiSense2)) {
            New-Item $WifiSense2
        }
        Set-ItemProperty $WifiSense2  Value -Value 0 
        Set-ItemProperty $WifiSense3  AutoConnectAllowedOEM -Value 0 
        
        #Turns off Data Collection via the AllowTelemtry key by changing it to 0
        Write-Host "Desativando a coleta de dados"
        $DataCollection1 = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection"
        $DataCollection2 = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
        $DataCollection3 = "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection"    
        If (Test-Path $DataCollection1) {
            Set-ItemProperty $DataCollection1  AllowTelemetry -Value 0 
        }
        If (Test-Path $DataCollection2) {
            Set-ItemProperty $DataCollection2  AllowTelemetry -Value 0 
        }
        If (Test-Path $DataCollection3) {
            Set-ItemProperty $DataCollection3  AllowTelemetry -Value 0 
        }
    
        #Disabling Location Tracking
        Write-Host "Desativando o rastreamento de localização"
        $SensorState = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}"
        $LocationConfig = "HKLM:\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration"
        If (!(Test-Path $SensorState)) {
            New-Item $SensorState
        }
        Set-ItemProperty $SensorState SensorPermissionState -Value 0 
        If (!(Test-Path $LocationConfig)) {
            New-Item $LocationConfig
        }
        Set-ItemProperty $LocationConfig Status -Value 0 
        
        #Disables People icon on Taskbar
        Write-Host "Desativando o ícone de pessoas na barra de tarefas"
        $People = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People'
        If (Test-Path $People) {
            Set-ItemProperty $People -Name PeopleBand -Value 0
        } 
        
        #Disables scheduled tasks that are considered unnecessary 
        Write-Host "Desativando tarefas agendadas"
        #Get-ScheduledTask XblGameSaveTaskLogon | Disable-ScheduledTask
        Get-ScheduledTask XblGameSaveTask | Disable-ScheduledTask
        Get-ScheduledTask Consolidator | Disable-ScheduledTask
        Get-ScheduledTask UsbCeip | Disable-ScheduledTask
        Get-ScheduledTask DmClient | Disable-ScheduledTask
        Get-ScheduledTask DmClientOnScenarioDownload | Disable-ScheduledTask

        #Write-Host "Uninstalling Telemetry Windows Updates"
        #Uninstalls Some Windows Updates considered to be Telemetry. !WIP!
        #Wusa /Uninstall /KB:3022345 /norestart /quiet
        #Wusa /Uninstall /KB:3068708 /norestart /quiet
        #Wusa /Uninstall /KB:3075249 /norestart /quiet
        #Wusa /Uninstall /KB:3080149 /norestart /quiet        

        Write-Host "Parando e desabilitando o serviço WAP Push"
        #Stop and disable WAP Push Service
        Stop-Service "dmwappushservice"
        Set-Service "dmwappushservice" -StartupType Disabled

        Write-Host "Parando e desativando o serviço de rastreamento de diagnóstico"
        #Disabling the Diagnostics Tracking Service
        Stop-Service "DiagTrack"
        Set-Service "DiagTrack" -StartupType Disabled
        Write-Host "Telemetry has been disabled!"
    }
)

#############################

$Button6.Add_Click( {
        $form.close()
    }
)


#endregion

[void]$Form.ShowDialog()
