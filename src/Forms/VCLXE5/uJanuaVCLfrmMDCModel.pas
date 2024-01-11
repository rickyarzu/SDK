unit uJanuaVCLfrmMDCModel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, AdvMenus, Janua.Vcl.TMSStyles,
  Janua.Core.CustomControls, Janua.Vcl.Dialogs, AdvOfficeHint, AdvAppStyler, Janua.Core.Classes,
  AdvOfficePager, AdvOfficePagerStylers, Vcl.ImgList, Janua.Core.System, AdvOfficeTabSet,
  AdvOfficeTabSetStylers, Vcl.ExtDlgs, Janua.Core.Cloud, GDIPicture, System.ImageList, MemData, Janua.Core.Servers,
  Janua.core.Cloud.Server, Janua.Postgres.Cloud;

type
  TfrmJanuaMdcModel = class(TForm)
    mnuMDC: TAdvMainMenu;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvFormStyler1: TAdvFormStyler;
    AdvOfficeHint1: TAdvOfficeHint;
    JanuaDialogInteger1: TJanuaDialogInteger;
    BalloonHint1: TBalloonHint;
    mnuMDCAppTitle: TMenuItem;
    CloseForm1: TMenuItem;
    ImageList: TImageList;
    ImageListHot: TImageList;
    ImageListDisabled: TImageList;
    mnuParentDivider1: TMenuItem;
    mnuStyler: TAdvMenuStyler;
    AdvOfficeTabSetOfficeStyler1: TAdvOfficeTabSetOfficeStyler;
    OpenPictureDialog1: TOpenPictureDialog;
    JanuaDialog1: TJanuaDialog;
    ImageList24: TImageList;
    ImageListHot24: TImageList;
    ImageListDisabled24: TImageList;
    JanuaPostgresCloud1: TJanuaPostgresCloud;

  private
    FJanuaStyleManager: TJanuaTMSStyleManager;
    FAdvAppStyler: TAdvAppStyler;
    FJanuaLogger: TJanuaCustomLogger;
    FJanuaServerCloud: TJanuaCustomServerCloud;
    procedure SetAdvAppStyler(const Value: TAdvAppStyler);
    procedure SetJanuaStyleManager(const Value: TJanuaTMSStyleManager);
    procedure SetJanuaLogger(const Value: TJanuaCustomLogger);
    procedure SetJanuaServerCloud(const Value: TJanuaCustomServerCloud);
    { Private declarations }
  protected
    FSelectedPictureFile: string;
    function OpenPicture: boolean;
    function LoadPictureDB: int64;
    function SetPictureDB(aID: int64; aPicture: TGDIPPicture): boolean;
  public
    { Public declarations }
    property JanuaStyleManager: TJanuaTMSStyleManager read FJanuaStyleManager
      write SetJanuaStyleManager;
    property AdvAppStyler: TAdvAppStyler read FAdvAppStyler write SetAdvAppStyler;
    property JanuaLogger: TJanuaCustomLogger read FJanuaLogger write SetJanuaLogger;
    property JanuaServerCloud: TJanuaCustomServerCloud read FJanuaServerCloud
      write SetJanuaServerCloud;
  end;

var
  frmJanuaMdcModel: TfrmJanuaMdcModel;

implementation

{$R *.dfm}
{ TfrmJanuaMdcModel }

function TfrmJanuaMdcModel.LoadPictureDB: int64;
begin
  Result := -1;
  if self.OpenPicture then
  begin
    if Assigned(FJanuaServerCloud) then
    begin
      if not FJanuaServerCloud.Active then
        FJanuaServerCloud.Activate;
       Result := FJanuaServerCloud.LoadDBBlobFromFile(FSelectedPictureFile);
    end;
  end;
end;

function TfrmJanuaMdcModel.OpenPicture: boolean;
begin
  if self.OpenPictureDialog1.Execute then
    Result := FileExists(self.OpenPictureDialog1.FileName);

  if Result then
    self.FSelectedPictureFile := self.OpenPictureDialog1.FileName;

end;

procedure TfrmJanuaMdcModel.SetAdvAppStyler(const Value: TAdvAppStyler);
begin
  FAdvAppStyler := Value;
  self.AdvFormStyler1.AppStyle := FAdvAppStyler;
end;

procedure TfrmJanuaMdcModel.SetJanuaLogger(const Value: TJanuaCustomLogger);
begin
  FJanuaLogger := Value;
  self.JanuaDialog1.JanuaLogger := self.FJanuaLogger;

end;

procedure TfrmJanuaMdcModel.SetJanuaServerCloud(const Value: TJanuaCustomServerCloud);
begin
  FJanuaServerCloud := Value;
end;

procedure TfrmJanuaMdcModel.SetJanuaStyleManager(const Value: TJanuaTMSStyleManager);
begin
  FJanuaStyleManager := Value;
  // self.JanuaFormStyler1.JanuaStyleManager := FJanuaStyleManager;
end;

function TfrmJanuaMdcModel.SetPictureDB(aID: int64; aPicture: TGDIPPicture): boolean;
var
  aStream: TMemoryStream;
begin
  if Assigned(FJanuaServerCloud) and (aID > 0)
  then
  begin
    if FJanuaServerCloud.OpenBlob(aId) then
      try
        aStream := TMemoryStream.Create;
        aPicture := nil;
        FJanuaServerCloud.Blob.SaveToStream(aStream);
        aStream.Position := 0;
        aPicture.LoadFromStream(aStream);
      finally
        aStream.Free;
      end
    else
      aPicture := nil;
  end
  else
    aPicture := nil;

end;

end.
