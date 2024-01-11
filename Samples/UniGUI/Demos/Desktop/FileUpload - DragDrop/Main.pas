unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniFileUpload,
  uniImageList, uniPanel;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniFileUploadButton1: TUniFileUploadButton;
    procedure UniFileUploadButton1MultiCompleted(Sender: TObject;
      Files: TUniFileInfoArray);
  private
    procedure AddImage(const AStream: TStream);
    procedure ClearPanel;
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uniImage;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniFileUploadButton1MultiCompleted(Sender: TObject;
  Files: TUniFileInfoArray);
var
  I: Integer;
begin
  // process files after all files are uploaded
  ClearPanel;
  for I := Low(Files) to High(Files) do
    if Assigned(Files[I].Stream) then
      AddImage(Files[I].Stream);
end;

procedure TMainForm.AddImage(const AStream: TStream);
var
  Im : TUniImage;
begin
  Im := TUniImage.Create(Self);
  Im.Stretch := True;
  Im.Proportional := True;
  Im.Center := True;
  Im.Width := 128;
  Im.Height := 128;
  Im.FitWidth := True;

  Im.Parent := UniPanel1;
  Im.LoadFromStream(AStream);
end;

procedure TMainForm.ClearPanel;
var
  I: Integer;
begin
  for I := UniPanel1.ControlCount - 1 downto 0 do
    UniPanel1.Controls[I].Free;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
