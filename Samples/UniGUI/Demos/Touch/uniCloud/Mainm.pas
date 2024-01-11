unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUIBaseClasses,
  uniButton, uniBitBtn, unimBitBtn, uniMultiItem, unimList, uniFileUpload,
  unimFileUpload, unimButton;

type
  TMainmForm = class(TUnimForm)
    UnimList1: TUnimList;
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtn2: TUnimBitBtn;
    UnimBitBtn3: TUnimBitBtn;
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimFormCreate(Sender: TObject);
    procedure UnimBitBtn2Click(Sender: TObject);
    procedure UnimBitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure BuildList;
  public
    { Public declarations }
    procedure CB(Sender: TComponent; AResult: Integer);
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Unit1, ServerModule, Unit2;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimBitBtn1Click(Sender: TObject);
begin
  UnimForm1.ShowModal(CB);
end;

procedure TMainmForm.UnimBitBtn2Click(Sender: TObject);
var
  mFile, mExt : string;
  W : Integer;
begin
  if UnimList1.ItemIndex>=0 then
  begin
    mFile := UniServerModule.StartPath+'uploads\' + UnimList1.Text;
    mExt := LowerCase(ExtractFileExt(mFile));
    if (mExt='.jpg') or (mExt='.bmp') or
        (mExt='.jpeg') or (mExt='.png') or (mExt='.gif') then
    begin
      W := UniApplication.ScreenWidth;
      if UniApplication.ScreenHeight < W then W := UniApplication.ScreenHeight;

      UnimForm2.Width := W - 16;
      UnimForm2.Height := W - 16;
      UnimForm2.UnimImage1.Picture.LoadFromFile(mFile);
      UnimForm2.ShowModal();
    end
    else
      ShowMessage('Not an image file!');
  end
  else
    ShowMessage('No image is selected!');
end;

procedure TMainmForm.UnimBitBtn3Click(Sender: TObject);
begin
  BuildList;
end;

procedure TMainmForm.BuildList;
var
  FFolder : string;
  Sr : TSearchRec;
begin
  UnimList1.Items.Clear;
  FFolder := UniServerModule.StartPath+'uploads\';
  if SysUtils.FindFirst(FFolder+'*.*', faAnyFile, Sr) = 0 then
  begin
    repeat
      if Sr.Attr and faDirectory = 0 then
        UnimList1.Items.Add(Sr.Name);
    until SysUtils.FindNext(sr) <> 0;
    SysUtils.FindClose(sr);
  end;

  if UnimList1.Items.Count>0 then
    UnimList1.ItemIndex := 0;
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  BuildList;
end;

procedure TMainmForm.CB(Sender: TComponent; AResult: Integer);
var
  mFile : string;
begin
  if AResult = mrOk then
  begin
    mFile := (Sender as TUnimForm1).MediaFile;
    if UnimList1.Items.IndexOf(mFile)<0 then
      UnimList1.Items.Insert(0, mFile);
  end;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
