<br/>
  <p align="center">
  <a href="#">
  <img src="https://i.imgur.com/drarQVx.png" alt="Logo" width="110" height="110">
  
  <h3 align="center">WindowsDebloater</h3>

  <p align="center">
    Limpeza do windows após Formatação
    <br/>
    <br/>
    <a href="https://github.com/carlositaloo/Formata-o-Windows/tree/main/WindowsDebloater"><strong>Explore the docs »</strong></a>
    <br/>
    <a href="https://microsoft.com/PowerShell" target="_blank"><img src="https://img.shields.io/badge/PowerShell-1f425f?logo=Powershell" target="_blank" align="center"></a>
    &nbsp;
    <a href="https://opensource.org/licenses/MIT" target="_blank"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" target="_blank" align="center"></a>
</a>
</p>

## Índice

* [Sobre o projeto](#sobre-o-projeto)
* [Opções/Instruções](#opçõesinstruções)
  * [Desinstalar Aplicativos Desnecessários](#desinstalar-aplicativos-desnecessários)
  * [Desinstalar OneDrive](#desinstalar-onedrive)
  * [Limpar pastas Temporárias](#limpar-pastas-temporárias)
  * [Ativar modo de Desempenho](#ativar-modo-de-desempenho)
  * [Desativar Telemetry](#desativar-telemetry)
* [Licença](#licença)
* [Autores](#autores)

---
<div style="display: inline_block" align="center"><br>
  <a href="#">
    <img align="center" alt="Screen Shot" height="635" width="770" src="https://i.imgur.com/GFyTYoe.png">
  </a>
</div>

## Sobre o projeto

O Programa de Limpeza pós-formatação é uma ferramenta desenvolvida para os sistemas operacionais Windows 10 e Windows 11. Seu principal objetivo é fornecer uma solução fácil para liberar espaço em disco e remover arquivos desnecessários, como jogos e aplicativos pré-instalados no Windows, que geralmente não são utilizados pelos usuários comuns.
O programa pode ser facilmente baixado e executado através de uma linha de comando no PowerShell, utilizando o seguinte comando:
```
iex ([System.Text.Encoding]::UTF8.GetString((New-Object System.Net.WebClient).DownloadData('https://bit.ly/Windows-Debloater')))
```
Esse comando realiza o download da string diretamente do repositório do GitHub e a executa, exibindo uma interface simples que oferece as seguintes opções:

## Opções/Instruções

### Desinstalar Aplicativos Desnecessários

Botão "Desinstalar APPS Desnecessários":

- Inicia a desinstalação de aplicativos desnecessários.  
- Abre um novo PowerShell e executa um comando para desinstalar os aplicativos desnecessários do Windows Store.  
- Aguarda até que o PowerShell seja fechado.  
- Desativa a hibernação do sistema para liberar espaço em disco.  

<details>
<summary>Saber mais:</summary>
<br>
Essa opção permite remover todos os aplicativos pré-instalados que vêm com o Windows Store. Ela removerá qualquer aplicativo que NÃO esteja nesta lista:

- Microsoft.WindowsStore (Loja de aplicativos do Windows)
- Microsoft.Windows.Photos (Visualizador de fotos do Windows)
- Microsoft.WindowsCalculator (Calculadora do Windows)
- Microsoft.ScreenSketch (Ferramenta de Captura e Esboço)
- Microsoft.WindowsSoundRecorder (Gravador de Voz)
- Microsoft.DesktopAppInstaller (Instalador de aplicativos em pacotes .appx e .msix)
- Microsoft.WindowsCamera (Aplicativo de câmera padrão)
- NVIDIACorp.NVIDIAControlPanel (Painel de controle da NVIDIA)
- Microsoft.Paint (Editor de imagens básico - Paint)
- Microsoft.MicrosoftEdge.Stable (Navegador Microsoft Edge)
- Microsoft.Notepad (Bloco de Notas)
- Microsoft.XboxIdentityProvider (Gerencia a conta Xbox nos aplicativos e jogos)
- Microsoft.ZuneMusic (Reprodutor de música - Groove Music)
- MicrosoftCorporationII.QuickAssist (Assistência rápida para suporte remoto)
- WinRAR.ShellExtension (Extensão do WinRAR para gerenciar arquivos compactados)
- Microsoft.WindowsTerminal (Terminal moderno e avançado do Windows)
- Microsoft.GetHelp (Essencial para diagnóstico e suporte do Windows)
- Microsoft.VP9VideoExtensions (Extensão para reprodução de vídeos em formato VP9)
- Microsoft.HEVCVideoExtension (Extensão para reprodução de vídeos em formato HEVC)
- Microsoft.WebMediaExtensions (Extensão para reprodução de formatos multimídia na web)

Aqui está a versão simplificada e otimizada apenas para desinstalar os aplicativos não desejados via powershell:
```
[regex]$WhitelistedApps='Microsoft.WindowsStore|Microsoft.GetHelp|Microsoft.Windows.Photos|Microsoft.WindowsCalculator|Microsoft.ScreenSketch|Microsoft.WindowsSoundRecorder|Microsoft.DesktopAppInstaller|Microsoft.WindowsCamera|NVIDIACorp.NVIDIAControlPanel|Microsoft.Paint|Microsoft.MicrosoftEdge.Stable|Microsoft.WindowsNotepad|Microsoft.XboxIdentityProvider|Microsoft.ZuneMusic|MicrosoftCorporationII.QuickAssist|WinRAR.ShellExtension|Microsoft.WindowsTerminal|Microsoft.VP9VideoExtensions|Microsoft.HEVCVideoExtension|Microsoft.WebMediaExtensions'; Get-AppxPackage -AllUsers | Where-Object {$_.Name -NotMatch $WhitelistedApps} | ForEach-Object { Remove-AppxPackage -Package $_.PackageFullName -ErrorAction SilentlyContinue }; Get-AppxProvisionedPackage -Online | Where-Object {$_.PackageName -NotMatch $WhitelistedApps} | ForEach-Object { Remove-AppxProvisionedPackage -Online -PackageName $_.PackageName -ErrorAction SilentlyContinue }

```


Você pode encontrar informações detalhadas sobre cada um desses aplicativos/comandos no próprio site da Microsoft:
https://learn.microsoft.com/pt-br/windows/application-management/apps-in-windows-10

**Aplicativos não contidos e você acha necessário para seu uso pessoal, você pode encontrá-los e baixá-los na Microsoft Store normalmente.**

Se o aplicativo não for encontrado na biblioteca da Microsoft Store ou se você acredita que um aplicativo é extremamente necessário para o funcionamento correto do Windows, você pode nos informar para que possamos corrigir esse problema.

O Windows 11 está passando por uma transição para tornar os aplicativos nativos do Windows disponíveis na Windows Store, o que significa que há uma probabilidade de que essa lista seja alterada em futuras atualizações do Windows. Devido a essa possibilidade, podem ocorrer bugs, no entanto, até o momento, essa ferramenta tem se mostrado indispensável após as formatações.
</details>

##
### Desinstalar OneDrive
Botão "Desinstalar OneDrive":

- Inicia a desinstalação do aplicativo OneDrive.
- Move os arquivos do OneDrive para uma pasta chamada "OneDriveBackupFiles" na área de trabalho.
- Habilita a política de grupo "Impedir o uso do OneDrive para Armazenamento de Arquivos".
- Desinstala o OneDrive e remove arquivos restantes.
- Remove o OneDrive do Windows Explorer.
- Reinicia o Explorer.

##
### Limpar pastas Temporárias
Botão "Limpar pastas Temporárias":

Realizar a limpeza de pastas temporárias no sistema operacional Windows. O script acessa diferentes pastas, como:
- "C:\Windows\Temp", 
- "C:\Windows\Prefetch",  
- "C:\Users*\Appdata\Local\Temp", 
- "C:\Users*\Appdata\Recent", 
- "C:\Windows\SoftwareDistribution\Download", 
e remove os arquivos nelas contidos de forma recursiva e forçada.

Esteja ciente de que a limpeza de algumas pastas, como a pasta "C:\Windows\Prefetch" e a pasta "C:\Windows\SoftwareDistribution\Download", pode afetar o desempenho do sistema ou a capacidade de instalar atualizações futuras **se feita com frequência** o que é recomendado apenas após formatação.

Além disso, o script também executa a ferramenta de limpeza de disco do Windows (cleanmgr /sagerun:1) e exibe mensagens informativas durante o processo.

##
### Ativar modo de Desempenho
Botão "Ativar modo de Desempenho":

- **Instalar WinRAR**: Garante o software para compactação/descompactação de arquivos.
- **Configurações de Energia**: Coloca o modo de energia em Desempenho.
- **Ativar Sensor de Armazenamento**: Gerencia automaticamente o espaço em disco.
- **Histórico de Área de Transferência**: Acesso a itens copiados anteriormente. (_Win+V_)
- **Personalização da Barra de Tarefas**: Mais ícones na barra de tarefas e menos recentes.
- **Modo de Desempenho Máximo de Energia**: Adiciona 'Desempenho Máximo' no modo de energia.
- **Desativar Busca na Web**: Desativa a busca na Web no menu iniciar.
- **Ativar Modo Escuro**: Reduz a fadiga ocular e economiza energia.


##
### Desativar Telemetry
Botão "Desativar Telemetry":

- Desativa o serviço de Telemetry do Windows, que coleta dados do sistema para a Microsoft.

---
### Instalação

1. Abra o PowerShell como administrador e execute o seguinte comando:

```
iex ([System.Text.Encoding]::UTF8.GetString((New-Object System.Net.WebClient).DownloadData('https://raw.githubusercontent.com/carlositaloo/Windows-Debloater/refs/heads/main/WindowsDebloater.ps1')))
```
O aplicativo abrirá, exibindo uma interface com botões para iniciar a limpeza.

<details>
<summary>Como abrir o PowerShell:</summary>
Pressione a tecla Windows no teclado.  
Digite "PowerShell" na barra de pesquisa.  
Clique com o botão direito do mouse no resultado "Windows PowerShell" e escolha "Executar como administrador".  
Se necessário, clique em "Sim" para confirmar a execução como administrador.  
Uma vez que o PowerShell é aberto como administrador, você pode executar o comando desejado. Certifique-se de inserir corretamente o comando específico que deseja executar.  
</details>

<details>
<summary>O que esse comando faz:</summary>

1. **`iex`**: É um comando que executa o que está dentro dos parênteses como se fosse um código ou instrução.

2. **`[System.Text.Encoding]::UTF8.GetString`**: É um comando que converte um tipo de informação chamado "bytes" em uma forma legível para nós, chamada de string. Neste caso, está usando uma codificação chamada UTF-8 (Exibe caracteres e pontuação brasileiros).

3. **`New-Object System.Net.WebClient`**: Cria um objeto especial que permite baixar e enviar informações para a internet.  
  Nesse caso baixar o script.

4. **`.DownloadData('https://bit.ly/WinDebloater')`**: Baixa informações de um site específico, neste caso, o arquivo localizado em 'https://bit.ly/WinDebloater'.

Resumindo, esse comando baixa um arquivo da internet e o transforma em informações compreensíveis. Depois, executa essas informações como um conjunto de ações no seu computador. É importante ter cuidado ao executar comandos desconhecidos, pois eles podem afetar o funcionamento do seu computador. Certifique-se de entender a origem e o propósito do comando antes de executá-lo.

</details>

---
## Licença:
<a href="https://opensource.org/licenses/MIT" target="_blank"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" target="_blank" align="center"></a>

Esta licença concede permissão gratuita para qualquer pessoa obter uma cópia do software e dos arquivos de documentação associados (o "Software") e utilizá-lo sem restrições, incluindo o direito de copiar, modificar, mesclar, publicar, distribuir, sublicenciar e vender cópias do Software. Os destinatários do Software devem incluir o aviso de direitos autorais e a permissão em todas as cópias ou partes substanciais do Software. O Software é fornecido "como está", sem garantias de qualquer tipo, expressas ou implícitas, e os autores ou detentores dos direitos autorais não serão responsáveis por quaisquer reivindicações, danos ou responsabilidades decorrentes do uso do Software.

---
## Autores

* [iNooTh](https://github.com/carlositaloo)
* [Referência: Sycnex](https://github.com/Sycnex/Windows10Debloater/)

---
<br>
<p align="right">
<sup>
Sempre tive o desejo de realizar uma formatação limpa no meu computador e, ao longo do tempo, fui seguindo um processo passo a passo para fazer essa limpeza. Decidi, então, me aprofundar no assunto e aprender mais para desenvolver um script que facilitasse todo o processo de formatação do computador com apenas alguns cliques. Como estudante de Análise e Desenvolvimento de Sistemas, decidi colocar à prova a dificuldade de criar algo assim. Apesar de me identificar mais com a linguagem Python, optei por desenvolver o aplicativo em PowerShell para obter uma integração mais sólida com o sistema, tornando-o mais prático, pois se trata apenas de um script.
</sup>
</p>
