#define AppName "Windows CLI Installer Tool"
#define AppVersion "0.0.6.3"
#define UserName "felgmar"
#define AppURL "https://github.com/" + UserName + "/wcit"
#define AppExeName "wcit.exe"
#define RepositoryDir "C:\Users\" + UserName + "\Documents\GitHub\wcit"
#define SourceDir RepositoryDir + "\build"
#define AppOutputDir RepositoryDir + "\build-installer"
#define AppLicense RepositoryDir + "\LICENSE"
#define VersionInfoDescription "Windows CLI Installer Tool"

[Setup]
AppId={{28B11907-066D-4911-BA15-E70234360C28}}
AppName={#AppName}
AppVersion={#AppVersion}
AppVerName={#AppName} {#AppVersion}
AppPublisherURL={#AppURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}/releases
UsePreviousAppDir=no
DefaultDirName={autopf}\{#UserName}\wcit
DefaultGroupName={#UserName}\wcit
AllowNoIcons=yes
LicenseFile={#AppLicense}
PrivilegesRequiredOverridesAllowed=dialog
OutputDir={#AppOutputDir}
OutputBaseFilename=wcit-setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
VersionInfoCompany=Felipe González Martín
VersionInfoCopyright=GNU General Public License v3.0
VersionInfoDescription={#VersionInfoDescription}
VersionInfoOriginalFileName=wcit-setup.exe
VersionInfoProductName=Windows CLI Installer Tool
VersionInfoProductVersion={#AppVersion}
VersionInfoProductTextVersion={#AppVersion}
VersionInfoTextVersion={#AppVersion}
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
Source: "{#RepositoryDir}\build\*"; \
  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: corefiles; MinVersion: 10.0;

[Icons]
Name: "{group}\{#AppName}"; Filename: "{app}\{#AppExeName}"
Name: "{group}\{cm:UninstallProgram,{#AppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#AppName}"; Filename: "{app}\{#AppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#AppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(AppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
