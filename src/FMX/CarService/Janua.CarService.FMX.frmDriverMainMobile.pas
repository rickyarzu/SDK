unit Janua.CarService.FMX.frmDriverMainMobile;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Permissions,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  System.Actions, FMX.ActnList, FMX.StdActns, FMX.MediaLibrary.Actions, FMX.Objects, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.Layouts, FMX.Media, FMX.TabControl, Janua.Core.Commons,  Janua.Core.Classes,
  Janua.FMX.FormControls;

type
  TfrmFMXDriverMainMobile = class(TForm)
    ActionList1: TActionList;
    ActionTakePhotoForReport: TTakePhotoFromCameraAction;
    ActionDiscardReport: TAction;
    ActionSaveReport: TAction;
    Timer1: TTimer;
    CameraComponent1: TCameraComponent;
    tbcPickupUser: TTabControl;
    tabCalendar: TTabItem;
    tabPickup: TTabItem;
    tbcPickup: TTabControl;
    tabPickupReport: TTabItem;
    tabSelectedPickup: TTabItem;
    tabReport: TTabItem;
    tabDelivery: TTabItem;
    ComposePanel: TPanel;
    PreviewImage: TImage;
    NotesEdit: TMemo;
    Footer: TToolBar;
    BtnTakePicture: TSpeedButton;
    BtnSaveReport: TSpeedButton;
    BtnDiscardReport: TSpeedButton;
    Header: TToolBar;
    lbPickupReport: TLabel;
    ReportContainer: TVertScrollBox;
    tabMessage: TTabItem;
    JanuaFmxBadge1: TJanuaFmxBadge;
    procedure ActionTakePhotoForReportDidFinishTaking(Image: TBitmap);
    procedure FormCreate(Sender: TObject);
    procedure FormVirtualKeyboardShown(Sender: TObject; KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardHidden(Sender: TObject; KeyboardVisible: Boolean; const Bounds: TRect);
    procedure ActionSaveReportExecute(Sender: TObject);
    procedure ActionDiscardReportExecute(Sender: TObject);
    procedure ActionTakePhotoForReportCanActionExec(Sender: TCustomAction; var CanExec: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FPermissionCamera: string;
    FPermissionStorage: string;
    FCameraPermissionGranted: Boolean;
  public
    { Public declarations }
    procedure ActivateCameraPermissionRequestResult(Sender: TObject;
      const APermissions: TClassicStringDynArray; const AGrantResults: TClassicPermissionStatusDynArray);
    procedure DisplayRationale(Sender: TObject; const APermissions: TClassicStringDynArray;
      const APostRationaleProc: TProc);
  end;

var
  frmFMXDriverMainMobile: TfrmFMXDriverMainMobile;

implementation

{$R *.fmx}

uses
{$IFDEF ANDROID}
  FMX.Helpers.Android, Androidapi.Jni.Widget, Androidapi.Helpers, Androidapi.Jni.JavaTypes,
  Androidapi.Jni.Os,
{$ENDIF}
  FMX.DialogService, Frame.ReportItem;

{$IFDEF ANDROID}

procedure Toast(const Msg: string; Duration: Integer);
begin
  CallInUiThread(
    procedure
    begin
      TJToast.JavaClass.makeText(TAndroidHelper.Context, StrToJCharSequence(Msg), Duration).show
    end);
end;
{$ENDIF}

procedure TfrmFMXDriverMainMobile.FormCreate(Sender: TObject);
begin
  ComposePanel.Visible := False;
  ActionDiscardReport.Enabled := False;
  ActionSaveReport.Enabled := False;
{$IFDEF ANDROID}
  FPermissionCamera := JStringToString(TJManifest_permission.JavaClass.CAMERA);
  FPermissionStorage := JStringToString(TJManifest_permission.JavaClass.WRITE_EXTERNAL_STORAGE);
{$ENDIF}
end;

procedure TfrmFMXDriverMainMobile.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TfrmFMXDriverMainMobile.FormVirtualKeyboardHidden(Sender: TObject; KeyboardVisible: Boolean;
const Bounds: TRect);
begin
  ComposePanel.Margins.Bottom := 0;
end;

procedure TfrmFMXDriverMainMobile.FormVirtualKeyboardShown(Sender: TObject; KeyboardVisible: Boolean;
const Bounds: TRect);
begin
  ComposePanel.Margins.Bottom := Bounds.Height - Footer.Height;
end;

procedure TfrmFMXDriverMainMobile.Timer1Timer(Sender: TObject);
begin
  var
  CanExec := PermissionsService.IsPermissionGranted(FPermissionCamera) and
    PermissionsService.IsPermissionGranted(FPermissionStorage);
  if not CanExec then
  begin
    PermissionsService.RequestPermissions([FPermissionCamera, FPermissionStorage],
      ActivateCameraPermissionRequestResult, DisplayRationale);
    CanExec := FCameraPermissionGranted;
  end;
  Timer1.Enabled := False;
end;

procedure TfrmFMXDriverMainMobile.ActionDiscardReportExecute(Sender: TObject);
begin
  ComposePanel.Visible := False;
  ActionDiscardReport.Enabled := False;
  ActionSaveReport.Enabled := False;
end;

procedure TfrmFMXDriverMainMobile.ActionSaveReportExecute(Sender: TObject);
var
  LReportItem: TReportItemFrame;
begin
  ComposePanel.Visible := False;
  LReportItem := TReportItemFrame.Create(ReportContainer.Content);
  LReportItem.Name := Format('ReportItem%d', [ReportContainer.Content.ChildrenCount + 1]);
  LReportItem.Parent := ReportContainer.Content;
  LReportItem.Position.Y := LReportItem.Height * ReportContainer.Content.ChildrenCount + 1;
  LReportItem.UploadReport(PreviewImage.Bitmap, NotesEdit.Text);
  ActionDiscardReport.Execute;
end;

procedure TfrmFMXDriverMainMobile.ActionTakePhotoForReportCanActionExec(Sender: TCustomAction;
var CanExec: Boolean);
begin
  CanExec := PermissionsService.IsPermissionGranted(FPermissionCamera);
  if not CanExec then
  begin
    PermissionsService.RequestPermissions([FPermissionCamera], ActivateCameraPermissionRequestResult,
      DisplayRationale);
    CanExec := FCameraPermissionGranted;
  end;
end;

procedure TfrmFMXDriverMainMobile.ActionTakePhotoForReportDidFinishTaking(Image: TBitmap);
begin
  PreviewImage.Bitmap.Assign(Image);
  NotesEdit.Lines.Clear;
  ComposePanel.Visible := True;
  NotesEdit.SetFocus;
  ActionDiscardReport.Enabled := True;
  ActionSaveReport.Enabled := True;
end;

procedure TfrmFMXDriverMainMobile.ActivateCameraPermissionRequestResult(Sender: TObject;
const APermissions: TClassicStringDynArray; const AGrantResults: TClassicPermissionStatusDynArray);
begin
  FCameraPermissionGranted := (Length(AGrantResults) > 0) and (AGrantResults[0] = TPermissionStatus.Granted);
{$IFDEF ANDROID}
  if FCameraPermissionGranted then
    Toast('User granted permission', TJToast.JavaClass.LENGTH_SHORT)
  else
    Toast('User denied permission', TJToast.JavaClass.LENGTH_SHORT);
{$ENDIF}
end;

procedure TfrmFMXDriverMainMobile.DisplayRationale(Sender: TObject;
const APermissions: TClassicStringDynArray; const APostRationaleProc: TProc);
begin
  // Show an explanation to the user *asynchronously* - don't block this thread waiting for the user's response!
  // After the user sees the explanation, invoke the post-rationale routine to request the permissions
  TDialogService.ShowMessage('Richiesto accesso alla fotocamera per foto autoveicolo e documeti allegati',
    procedure(const AResult: TModalResult)
    begin
      APostRationaleProc;
    end)
end;

end.
