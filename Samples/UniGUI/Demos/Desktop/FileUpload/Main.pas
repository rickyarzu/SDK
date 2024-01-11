//AllFeatures: File Upload,File Upload - Basic,icon-form-fileuploads
unit Main;
                                                          
interface                                                 
                                                          
uses                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, 
  Controls, Forms, Dialogs, uniGUIForm, uniGUITypes, UniFileUpload, StdCtrls,
  UniLabel, Buttons, UniBitBtn, ExtCtrls, UniImage, UniPanel, uniGUIRegClasses,  uniguiclasses,
  UniButton, uniGUIBaseClasses;      
                                                          
type                                                      
  TMainForm = class(TUniForm)
    UniFileUpload1: TUniFileUpload;
    UniBitBtn1: TUniBitBtn;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniBitBtn2: TUniBitBtn;
    UniPanel1: TUniPanel;
    UniImage1: TUniImage;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    { Private declarations }
    IsImage : Boolean;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  UniGUIVars, MainModule, ServerModule;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UniBitBtn1Click(Sender: TObject);
begin
  IsImage:=True;
  UniFileUpload1.Execute;
end;

procedure TMainForm.UniBitBtn2Click(Sender: TObject);
begin
  IsImage:=False;
  UniFileUpload1.Execute;
end;

procedure TMainForm.UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
var
  DestName : string;
  DestFolder : string;
begin
  if IsImage then
  begin
    UniImage1.Picture.LoadFromFile(AStream.FileName);
    UniLabel3.Caption:='File Name: '+UniFileUpload1.FileName;
  end
  else
  begin
    DestFolder:=UniServerModule.StartPath+'UploadFolder\';
    DestName:=DestFolder+ExtractFileName(UniFileUpload1.FileName);
    UniLabel4.Caption:='File Name: '+UniFileUpload1.FileName;
    CopyFile(PChar(AStream.FileName), PChar(DestName), False);
    ShowMessage('File: '+UniFileUpload1.FileName+' Uploaded to folder: '+DestFolder);
  end;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  if not DirectoryExists(UniServerModule.StartPath+'UploadFolder\') then
    CreateDir(UniServerModule.StartPath+'UploadFolder\');
end;

initialization
  RegisterMainFormClass(TMainForm);

end.
