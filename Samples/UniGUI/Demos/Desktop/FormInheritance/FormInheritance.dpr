program FormInheritance;
                                                          
uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  Unit1 in 'Unit1.pas' {MainForm1: TUniForm},
  Unit2 in 'Unit2.pas' {MainForm2: TUniForm},
  Unit3 in 'Unit3.pas' {MainForm3: TUniForm};

{$R *.res}
                                                          
begin                                                     
  Application.Initialize;                                 
  TUniServerModule.Create(Application);                   
  Application.Run;                                        
end.                                                      
