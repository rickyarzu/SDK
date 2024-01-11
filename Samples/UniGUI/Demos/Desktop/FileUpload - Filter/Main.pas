//AllFeatures: File Upload,File Upload - Filter,icon-form-fileuploads
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniFileUpload,
  uniButton, uniMemo, uniImage;

type
  TMainForm = class(TUniForm)
    UniFileUploadText: TUniFileUpload;
    UniFileUploadImage: TUniFileUpload;
    UniFileUploadCustom: TUniFileUpload;
    UniMemo1: TUniMemo;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    UniImage1: TUniImage;
    procedure UniFileUploadCustomCompleted(Sender: TObject;
      AStream: TFileStream);
    procedure UniButton3Click(Sender: TObject);
    procedure UniFileUploadTextCompleted(Sender: TObject; AStream: TFileStream);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniFileUploadImageCompleted(Sender: TObject;
      AStream: TFileStream);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniFileUploadImage.Execute;
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  UniFileUploadCustom.Execute;
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  UniFileUploadText.Execute;
end;

procedure TMainForm.UniFileUploadCustomCompleted(Sender: TObject;
  AStream: TFileStream);
begin
  UniMemo1.Lines.LoadFromStream(AStream);
end;

procedure TMainForm.UniFileUploadImageCompleted(Sender: TObject;
  AStream: TFileStream);
begin
  UniImage1.LoadFromStream(AStream);
end;

procedure TMainForm.UniFileUploadTextCompleted(Sender: TObject;
  AStream: TFileStream);
begin
  UniMemo1.Lines.LoadFromStream(AStream);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniMemo1.Lines.Clear;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
