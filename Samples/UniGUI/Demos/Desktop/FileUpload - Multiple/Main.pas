unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniFileUpload, uniPanel, uniImageList;

type
  TMainForm = class(TUniForm)
    UniFileUpload1: TUniFileUpload;
    UniButton1: TUniButton;
    UniPanel1: TUniPanel;
    UniFileUpload2: TUniFileUpload;
    UniNativeImageList1: TUniNativeImageList;
    UniButton2: TUniButton;
    UniFileUploadButton1: TUniFileUploadButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UniFileUpload2MultiCompleted(Sender: TObject;
      Files: TUniFileInfoArray);
    procedure UniButton2Click(Sender: TObject);
    procedure UniFileUploadButton1MultiCompleted(Sender: TObject;
      Files: TUniFileInfoArray);
  private
    { Private declarations }
    procedure AddImage(const AStream: TStream);
    procedure ClearPanel;
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

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  ClearPanel;
  UniFileUpload1.Execute;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  ClearPanel;
  UniFileUpload2.Execute;
end;

procedure TMainForm.UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
begin
  // process individual files while uploading multiple files
  AddImage(AStream);
end;

procedure TMainForm.UniFileUpload2MultiCompleted(Sender: TObject; Files: TUniFileInfoArray);
var
  I: Integer;
begin
  // process files after all files are uploaded
  for I := Low(Files) to High(Files) do
    if Assigned(Files[I].Stream) then
      AddImage(Files[I].Stream);
end;

procedure TMainForm.UniFileUploadButton1MultiCompleted(Sender: TObject;
  Files: TUniFileInfoArray);
var
  I: Integer;
begin
  ClearPanel;
  for I := Low(Files) to High(Files) do
    if Assigned(Files[I].Stream) then
      AddImage(Files[I].Stream);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
