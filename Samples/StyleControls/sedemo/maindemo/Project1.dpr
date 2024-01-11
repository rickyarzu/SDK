program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit3 in 'Unit3.pas' {Frame3: TFrame},
  Unit4 in 'Unit4.pas' {Frame4: TFrame},
  Unit2 in 'Unit2.pas' {SplashForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TSplashForm, SplashForm);
  Application.Run;
end.
