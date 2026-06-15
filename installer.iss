[Setup]
AppName=CStage
AppVersion=0.9
AppPublisher=Tinnth7
AppPublisherURL=https://github.com/Tinnth7/CStage
DefaultDirName={autopf}\CStage
DefaultGroupName=CStage
OutputDir=cstage_inst
OutputBaseFilename=CStage_Setup_v0.9
SetupIconFile=cstage.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "CStage.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "README.md"; DestDir: "{app}"; Flags: ignoreversion isreadme

[Icons]
Name: "{group}\CStage"; Filename: "{app}\CStage.exe"; IconFilename: "{app}\CStage.exe"
Name: "{group}\Uninstall CStage"; Filename: "{uninstallexe}"
Name: "{commondesktop}\CStage"; Filename: "{app}\CStage.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional icons:"

[Run]
Filename: "{app}\CStage.exe"; Description: "Launch CStage"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}"