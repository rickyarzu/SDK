unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniFileUpload, uniGUIBaseClasses,
  uniGroupBox, uniImage, uniImageList;

type
  TMainForm = class(TUniForm)
    UniGroupBox1: TUniGroupBox;
    UniFileUploadButton1: TUniFileUploadButton;
    UniImage1: TUniImage;
    UniNativeImageList1: TUniNativeImageList;
    procedure UniFileUploadButton1Completed(Sender: TObject;
      AStream: TFileStream);
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

procedure TMainForm.UniFileUploadButton1Completed(Sender: TObject;
  AStream: TFileStream);
begin
  UniImage1.LoadFromStream(AStream);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
