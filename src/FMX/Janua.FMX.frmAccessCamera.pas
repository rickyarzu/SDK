unit Janua.FMX.frmAccessCamera;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Permissions,
  System.Actions, System.Generics.Collections,
  // Janua
  Janua.Core.Functions, // Check Janua.Core.Functions
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ActnList, FMX.StdActns, FMX.MediaLibrary.Actions, FMX.Objects, FMX.Graphics,
  FMX.Controls.Presentation, FMX.TabControl, FMX.MediaLibrary;

type
  TImageRecord = class
    filename: string;
    GUID: TGUID;
    extension: string;
    Image: TBitmap;
  public
    constructor Create; overload;
    destructor Destroy; override;
  end;

  TAccessCameraAppForm = class(TForm)
    alGetFromCamera: TActionList;
    TakePhotoFromCameraAction1: TTakePhotoFromCameraAction;
    ToolBar1: TToolBar;
    btnTakePhoto: TButton;
    btnClose: TButton;
    btnListPrior: TButton;
    Button4: TButton;
    btnListNext: TButton;
    Label1: TLabel;
    Label2: TLabel;
    OpenDialog1: TOpenDialog;
    imgCameraRoll: TImage;
    alGetCameraRoll: TActionList;
    TakePhotoFromLibraryAction1: TTakePhotoFromLibraryAction;
    btnPhotoLibrary: TButton;
    btnTakePhoto2: TButton;

    procedure TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
    procedure btnTakePhotoClick(Sender: TObject);
    procedure TakePhotoFromLibraryAction1DidFinishTaking(Image: TBitmap);
    procedure btnPhotoLibraryClick(Sender: TObject);
    procedure btnListNextClick(Sender: TObject);
    procedure btnListPriorClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    (*
      private const
      PermissionCamera = 'android.permission.CAMERA';
      PermissionReadExternalStorage = 'android.permission.READ_EXTERNAL_STORAGE';
      PermissionWriteExternalStorage = 'android.permission.WRITE_EXTERNAL_STORAGE';
    *)
  private
    FRawBitmap: TBitmap;
    FPermissionCamera: string;
    FPermissionReadExternalStorage: string;
    FPermissionWriteExternalStorage: string;
    FImageFileList: TObjectList<TImageRecord>;
    FDeleteFileList: TObjectList<TImageRecord>;
    FDocumentsPath: string;
    FCurrentIndex: Integer;
  public
    procedure DisplayRationale(Sender: TObject; const APermissions: TClassicStringDynArray;
      const APostRationaleProc: TProc);
    procedure TakePicturePermissionRequestResult(Sender: TObject; const APermissions: TClassicStringDynArray;
      const AGrantResults: TClassicPermissionStatusDynArray);
    procedure LoadPicturePermissionRequestResult(Sender: TObject; const APermissions: TClassicStringDynArray;
      const AGrantResults: TClassicPermissionStatusDynArray);
    procedure AddImageToList(Image: TBitmap);
    procedure LoadImageList;
    procedure ClearImageList;
    procedure ShowImage;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  public
    property ImageFileList: TObjectList<TImageRecord> read FImageFileList;
    property DeleteFileList: TObjectList<TImageRecord> read FDeleteFileList;
  end;

var
  AccessCameraAppForm: TAccessCameraAppForm;

implementation

uses
  // Janua.Core.Application,
  System.Math,
  System.IOUtils,
{$IFDEF ANDROID}
  Androidapi.Helpers,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Os,
{$ENDIF}
  FMX.DialogService;

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

function RemoveBraces(const Source: string): string;
begin
  Result := StringReplace(Source, '{', '', [rfReplaceAll]);
  Result := StringReplace(Result, '}', '', [rfReplaceAll]);
end;

// Optional rationale display routine to display permission requirement rationale to the user
destructor TAccessCameraAppForm.Destroy;
begin
  FreeAndNil(FRawBitmap);
  inherited Destroy;
end;

procedure TAccessCameraAppForm.DisplayRationale(Sender: TObject; const APermissions: TClassicStringDynArray;
  const APostRationaleProc: TProc);
begin
  var
    RationaleMsg: string;

  for var I := 0 to High(APermissions) do
  begin
    if APermissions[I] = FPermissionCamera then
      RationaleMsg := RationaleMsg + 'The app needs to access the camera to take a photo' + SLineBreak +
        SLineBreak
    else if APermissions[I] = FPermissionReadExternalStorage then
      RationaleMsg := RationaleMsg + 'The app needs to read a photo file from your device';
  end;

  // Show an explanation to the user *asynchronously* - don't block this thread waiting for the user's response!
  // After the user sees the explanation, invoke the post-rationale routine to request the permissions
  TDialogService.ShowMessage(RationaleMsg,
    procedure(const AResult: TModalResult)
    begin
      APostRationaleProc;
    end)
end;

procedure TAccessCameraAppForm.LoadImageList;
var
  aRecord: TImageRecord;
  aImage: TBitmap;
  I: Integer;
begin
  for I := 0 to Pred(FImageFileList.Count) do
    if not Assigned(FImageFileList[I].Image) and FileExists(tpl(FDocumentsPath) + FImageFileList[I].filename)
    then
      FImageFileList[I].Image.LoadFromFile(tpl(FDocumentsPath) + FImageFileList[I].filename);
end;

procedure TAccessCameraAppForm.LoadPicturePermissionRequestResult(Sender: TObject;
const APermissions: TClassicStringDynArray; const AGrantResults: TClassicPermissionStatusDynArray);
begin
  if (Length(AGrantResults) = 2) and (AGrantResults[0] = TPermissionStatus.Granted) and
    (AGrantResults[1] = TPermissionStatus.Granted) then
    TakePhotoFromLibraryAction1.Execute
  else
    TDialogService.ShowMessage('Cannot do photo editing because the required permissions are not granted');
end;

procedure TAccessCameraAppForm.ShowImage;
begin
  if (FCurrentIndex > -1) then
  begin
    if Assigned(FImageFileList[FCurrentIndex].Image) then
      imgCameraRoll.Bitmap.Assign(FImageFileList[FCurrentIndex].Image);

    // lbFileName.Text := tpl(FDocumentsPath) + FImageFileList[FCurrentIndex].filename;
  end;
end;

procedure TAccessCameraAppForm.AddImageToList(Image: TBitmap);
var
  lImageRecord: TImageRecord;
begin
  { Assign the image retrieved from the Camera to the TImage component. }
  lImageRecord := TImageRecord.Create;
  lImageRecord.GUID := TGUID.NewGuid;
  lImageRecord.extension := '.jpg';
  lImageRecord.Image.Assign(Image);
  lImageRecord.filename := lImageRecord.GUID.ToString + '.jpg';
  lImageRecord.Image.SaveToFile(tpl(FDocumentsPath) + lImageRecord.filename);
  // lbFileName.Text := tpl(FDocumentsPath) + lImageRecord.filename;
  FImageFileList.Add(lImageRecord);
  FCurrentIndex := FImageFileList.Count - 1;
end;

procedure TAccessCameraAppForm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TAccessCameraAppForm.btnListNextClick(Sender: TObject);
begin
  if (FCurrentIndex < FImageFileList.Count - 1) then
    Inc(FCurrentIndex)
  else
    FCurrentIndex := IfThen(FImageFileList.Count > 0, 0, -1);

  self.ShowImage;
end;

procedure TAccessCameraAppForm.btnListPriorClick(Sender: TObject);
begin
  if (FCurrentIndex > 0) then
    Dec(FCurrentIndex)
  else
    FCurrentIndex := FImageFileList.Count - 1;

  self.ShowImage;
end;

procedure TAccessCameraAppForm.btnPhotoLibraryClick(Sender: TObject);
begin
  PermissionsService.RequestPermissions([FPermissionReadExternalStorage, FPermissionWriteExternalStorage],
    LoadPicturePermissionRequestResult, DisplayRationale)
end;

procedure TAccessCameraAppForm.btnTakePhotoClick(Sender: TObject);
var
  MyBitmap: TBitmap;
begin
  MyBitmap := TBitmap.Create;

{$IF Defined (IOS) or Defined (ANDROID)}
  PermissionsService.RequestPermissions([FPermissionCamera, FPermissionReadExternalStorage,
    FPermissionWriteExternalStorage], TakePicturePermissionRequestResult, DisplayRationale)
{$ELSE}
  if OpenDialog1.Execute then
  begin
    MyBitmap.LoadFromFile(OpenDialog1.filename);
    TakePhotoFromCameraAction1DidFinishTaking(MyBitmap);
  end;
  btnTakePhoto.Visible := True;
{$ENDIF}
end;

procedure TAccessCameraAppForm.ClearImageList;
begin
  FImageFileList.Clear;
end;

constructor TAccessCameraAppForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FCurrentIndex := 0;
  FRawBitmap := TBitmap.Create(0, 0);
  FDocumentsPath := System.IOUtils.TPath.GetDocumentsPath;
  FImageFileList := TObjectList<TImageRecord>.Create;
  FDeleteFileList := TObjectList<TImageRecord>.Create;
{$IFDEF ANDROID}
  FPermissionCamera := JStringToString(TJManifest_permission.JavaClass.CAMERA);
  FPermissionReadExternalStorage := JStringToString(TJManifest_permission.JavaClass.READ_EXTERNAL_STORAGE);
  FPermissionWriteExternalStorage := JStringToString(TJManifest_permission.JavaClass.WRITE_EXTERNAL_STORAGE);
{$ENDIF}
end;

procedure TAccessCameraAppForm.TakePicturePermissionRequestResult(Sender: TObject;
const APermissions: TClassicStringDynArray; const AGrantResults: TClassicPermissionStatusDynArray);
begin
  // 3 permissions involved: CAMERA, READ_EXTERNAL_STORAGE and WRITE_EXTERNAL_STORAGE
  if (Length(AGrantResults) = 3) and (AGrantResults[0] = TPermissionStatus.Granted) and
    (AGrantResults[1] = TPermissionStatus.Granted) and (AGrantResults[2] = TPermissionStatus.Granted) then
    TakePhotoFromCameraAction1.Execute
  else
    TDialogService.ShowMessage('Cannot take a photo because the required permissions are not all granted')
end;

procedure TAccessCameraAppForm.TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
begin
  imgCameraRoll.Bitmap.Assign(Image);
  AddImageToList(Image);
end;

procedure TAccessCameraAppForm.TakePhotoFromLibraryAction1DidFinishTaking(Image: TBitmap);
begin
  { Assign the image retrieved from the Photo Library to the TImage component. }
  imgCameraRoll.Bitmap.Assign(Image);
  AddImageToList(Image);
end;

{ TImageRecord }

constructor TImageRecord.Create;
begin
  Image := TBitmap.Create;
end;

destructor TImageRecord.Destroy;
begin
  Image.Free;
  inherited;
end;

end.
