#define AppName "Windows CLI Installer Tool"
#define AppVersion "0.0.4.5"
#define AppURL "https://github.com/mrkenhoo/wcit"
#define AppExeName "wcit.exe"
#define UserName "mrkenhoo"
#define VersionInfoDescription "Windows CLI Installer Tool"

[Setup]
AppId={28B11907-066D-4911-BA15-E70234360C28}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}/releases
UsePreviousAppDir=no
DefaultDirName={autopf}\{#MyUsername}\wcit
DefaultGroupName={#MyUsername}\wcit
AllowNoIcons=yes
LicenseFile=C:\Users\{#MyUsername}\Documents\GitHub\wcit\LICENSE
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Users\{#MyUsername}\Documents\GitHub\wcit\
OutputBaseFilename=wcit-setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
VersionInfoCompany=Felipe González Martín
VersionInfoCopyright=GNU General Public License v3.0
VersionInfoDescription={#VersionInfoDescription}
VersionInfoOriginalFileName=wcit-setup.exe
VersionInfoProductName=Windows CLI Installer Tool
VersionInfoProductVersion={#MyAppVersion}
VersionInfoProductTextVersion={#MyAppVersion}
VersionInfoTextVersion={#MyAppVersion}
WizardResizable=no
WindowResizable=no                   
MinVersion=10.0
ArchitecturesAllowed=x64compatible

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "french"; MessagesFile: "compiler:Languages\French.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Types]
Name: "full"; Description: "Full installation"; Flags: iscustom

[Components]
Name: "corefiles"; Description: "Required program files"; Types: full; Flags: fixed

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\{#MyUsername}\Documents\GitHub\wcit\build\*"; \
      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: corefiles; MinVersion: 10.0;

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

