unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm;

type
  TMainForm = class(TUniForm)
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure NewPagePanel(Name: string);
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniPanel, uniGUIFrame;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

{ TMainForm }

procedure TMainForm.NewPagePanel(Name: string);
var
  Pnl: TUniPanel;
  FCurrentFrame :TUniFrameClass;
  Fr : TUniFrame;
begin
  Pnl := TUniPanel.Create(Self);
  Pnl.Name := Name;
  Pnl.Align := alClient;
  Pnl.BorderStyle := ubsNone;
  Pnl.Parent := Self;

  FCurrentFrame := TUniFrameClass(FindClass(Name));

  Fr := FCurrentFrame.Create(Pnl);
  Fr.Align := alClient;
  Fr.Parent := Pnl;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  NewPagePanel('TfrmQrCode');
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
