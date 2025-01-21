unit Janua.CarService.FMX.frmTabbedCarService;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Permissions,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls, FMX.Memo,
  FMX.Controls.Presentation, FMX.MediaLibrary.Actions, FMX.Platform, FMX.PhoneDialer, FMX.Memo.Types,
  FMX.Gestures, System.Actions, FMX.ActnList, System.ImageList, FMX.ImgList, FMX.Objects, FMX.Layouts,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, FMX.ScrollBox,
  FMX.WebBrowser,
  // Januaproject
  Janua.Core.Types, Janua.Core.Commons, Janua.Core.Classes, Janua.CarService.dmPgDrivers,
  // Janua FMX
  Janua.FMX.FormControls, Janua.FMX.frameUserMobile, Janua.FMX.frameCanvasPaintImage, Janua.FMX.dlgNotes,
  Janua.FMX.dlgCanvasImage;

type
  TfrmFMXCarServiceDriverMain = class(TForm)
    pgCarHome: TTabControl;
    tabHome: TTabItem;
    pgHome: TTabControl;
    tab01DriverList: TTabItem;
    ToolBar1: TToolBar;
    tab02NDriverConf: TTabItem;
    ToolBar2: TToolBar;
    btnBack: TSpeedButton;
    tabList: TTabItem;
    ToolBar3: TToolBar;
    tabMessages: TTabItem;
    tabContacts: TTabItem;
    ToolBar5: TToolBar;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    imlPages: TImageList;
    ImageList1: TImageList;
    Image1: TImage;
    btnTakePhoto: TButton;
    Image2: TImage;
    Image4: TImage;
    JanuaFmxBadge1: TJanuaFmxBadge;
    tmtStart: TTimer;
    tab03DriverTask: TTabItem;
    Image5: TImage;
    toolBarDriverTask: TToolBar;
    Image6: TImage;
    Layout1: TLayout;
    Layout2: TLayout;
    lstOperations: TListView;
    tmtMsgs: TTimer;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    lbDateTime: TLabel;
    Label1: TLabel;
    lbFrom: TLabel;
    lbdesTo: TLabel;
    lbDelivery: TLabel;
    lbStartTask: TLabel;
    swRemember: TSwitch;
    lbEndTravel: TLabel;
    Switch1: TSwitch;
    btnSignature: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    frameFMXRegisterMobile1: TframeFMXRegisterMobile;
    lbConfDateTime: TLabel;
    Label4: TLabel;
    lbConfFRom: TLabel;
    Label6: TLabel;
    lbConfTo: TLabel;
    lbConfirmation: TLabel;
    Switch2: TSwitch;
    btnConfirm: TButton;
    btnConfCancel: TButton;
    tmList: TTimer;
    pgMessages: TTabControl;
    tabMsg01List: TTabItem;
    ToolBar7: TToolBar;
    Image8: TImage;
    Button7: TButton;
    Button8: TButton;
    lvMessages: TListView;
    Timer1: TTimer;
    tabMsg02Message: TTabItem;
    ToolBar8: TToolBar;
    btnMessagesBack: TSpeedButton;
    Image9: TImage;
    Button9: TButton;
    Layout3: TLayout;
    WebBrowser1: TWebBrowser;
    btnCallClient: TButton;
    btnVehicleCamera: TSpeedButton;
    btnNotes: TSpeedButton;
    btnCheckVehicleState: TSpeedButton;
    TimerNote: TTimer;
    TimerCanvas: TTimer;
    memLayout: TLayout;

    procedure GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure tmtStartTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmtListTimer(Sender: TObject);
    procedure lstOperationsItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure btnBackClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnSignatureClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure tmtMsgsTimer(Sender: TObject);
    procedure lvMessagesItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure btnMessagesBackClick(Sender: TObject);
    procedure btnCallClientClick(Sender: TObject);
    procedure btnNotesClick(Sender: TObject);
    procedure TimerNoteTimer(Sender: TObject);
    procedure btnCheckVehicleStateClick(Sender: TObject);
  private
    FSessionKey: string;
    FdlgFMXNotes: TdlgFMXNotes;
    FdlgFMXCanvasImage: TdlgFMXCanvasImage;
    FImgDrawings: TJanuaImageDraws;
    FAttempt: integer;
    FDriverDM: TdmPgCarServiceBookingDrivers;
    FMonitor: TObject;
    PhoneDialerService: IFMXPhoneDialerService;
    procedure FreeNotes(aResult: TModalResult);
    procedure FreeCanvasEdit(aResult: TModalResult);
  public
    procedure Login;
    procedure dlgFormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TestLogin(const aUsername, aPassword);
    procedure btnNoteOKClick(Sender: TObject);
    procedure btnNoteCancelClick(Sender: TObject);
    procedure CanvasImageDlgClose(Sender: TObject);
  end;

var
  frmFMXCarServiceDriverMain: TfrmFMXCarServiceDriverMain;

implementation

uses
  Janua.Application.Framework, FMX.DialogService, Janua.CarService.FMX.dlgLoginMobile,
  Janua.FMX.frmAccessCamera, Janua.FMX.frmSignatureCaptureMobile, Janua.Core.AsyncTask,
  Janua.CarService.FMX.dlgBrowser;

{$R *.fmx}

procedure TfrmFMXCarServiceDriverMain.btnBackClick(Sender: TObject);
begin
  pgHome.TabIndex := 0; // self.tab01DriverList;
end;

procedure TfrmFMXCarServiceDriverMain.btnCallClientClick(Sender: TObject);
begin
  if FDriverDM.qryBookingdelivery_cellular.AsString <> '' then
    PhoneDialerService.Call(FDriverDM.qryBookingdelivery_cellular.AsString)
end;

procedure TfrmFMXCarServiceDriverMain.btnCheckVehicleStateClick(Sender: TObject);
begin
  // FdlgFMXCanvasImage:  TdlgFMXCanvasImage;
  if not Assigned(FdlgFMXCanvasImage) then
    FdlgFMXCanvasImage := TdlgFMXCanvasImage.Create(self);
  FdlgFMXCanvasImage.ImageDrawings := FImgDrawings;
  FdlgFMXCanvasImage.OnCloseDialog := CanvasImageDlgClose;
{$IFNDEF MSWINDOWS}
  FdlgFMXCanvasImage.WindowState := TWindowState.wsMaximized;
{$ENDIF}
  FdlgFMXCanvasImage.ShowModal(FreeCanvasEdit);
end;

procedure TfrmFMXCarServiceDriverMain.btnConfirmClick(Sender: TObject);
begin
  if FDriverDM.qryDriverCalendarstate_id.AsInteger = 0 then
  begin
    FDriverDM.spUpdateCalendar.Params[1].AsInteger := 1;
    FDriverDM.spUpdateCalendar.Params[2].AsString := FDriverDM.qryDriverCalendarjguid.AsString;
    FDriverDM.spUpdateCalendar.Execute;
  end;

  tmList.Enabled := True;
  pgHome.TabIndex := 0; // self.tab01DriverList;
end;

procedure TfrmFMXCarServiceDriverMain.btnMessagesBackClick(Sender: TObject);
begin
  pgMessages.TabIndex := 0;
end;

procedure TfrmFMXCarServiceDriverMain.btnNoteCancelClick(Sender: TObject);
begin
  // do something ...
end;

procedure TfrmFMXCarServiceDriverMain.btnNoteOKClick(Sender: TObject);
begin
  if Assigned(FdlgFMXNotes) then
    FImgDrawings.Notes := FdlgFMXNotes.Memo1.Lines.Text;
end;

procedure TfrmFMXCarServiceDriverMain.btnNotesClick(Sender: TObject);
begin
  if not Assigned(FdlgFMXNotes) then
    FdlgFMXNotes := TdlgFMXNotes.Create(self);
  FdlgFMXNotes.Memo1.Lines.Text := FImgDrawings.Notes;
  FdlgFMXNotes.OkEvent := self.btnNoteOKClick;
  FdlgFMXNotes.CancelEvent := self.btnNoteCancelClick;
{$IFNDEF MSWINDOWS}
  FdlgFMXNotes.WindowState := TWindowState.wsMaximized;
{$ENDIF}
  FdlgFMXNotes.ShowModal(FreeNotes);
end;

procedure TfrmFMXCarServiceDriverMain.btnSignatureClick(Sender: TObject);
begin
  if not Assigned(frmFMXSignatureCaptureMobile) then
    Application.CreateForm(TfrmFMXSignatureCaptureMobile, frmFMXSignatureCaptureMobile);
  frmFMXSignatureCaptureMobile.Show;
end;

procedure TfrmFMXCarServiceDriverMain.Button1Click(Sender: TObject);
begin
  if not Assigned(AccessCameraAppForm) then
    Application.CreateForm(TAccessCameraAppForm, AccessCameraAppForm);

  AccessCameraAppForm.Show;
end;

procedure TfrmFMXCarServiceDriverMain.CanvasImageDlgClose(Sender: TObject);
begin
  if Assigned(FdlgFMXCanvasImage) then
  begin
    self.FImgDrawings := FdlgFMXCanvasImage.ImageDrawings;
    FImgDrawings.Notes := FdlgFMXCanvasImage.Memo1.Lines.Text;
  end;
end;

procedure TfrmFMXCarServiceDriverMain.dlgFormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (Sender as TdlgFMXCarserviceLoginDialogMobile).ModalResult = mrOk then
  begin
    // ShowMessage('OK');
  end;
  tmList.Enabled := True;
end;

procedure TfrmFMXCarServiceDriverMain.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  FMonitor := TObject.Create;
  pgCarHome.ActiveTab := tabHome;
  pgHome.ActiveTab := tab01DriverList;
  pgMessages.ActiveTab := tabMsg01List;

  TPlatformServices.Current.SupportsPlatformService(IFMXPhoneDialerService, IInterface(PhoneDialerService));
end;

procedure TfrmFMXCarServiceDriverMain.FormDestroy(Sender: TObject);
begin
  FMonitor.Free;
end;

procedure TfrmFMXCarServiceDriverMain.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (pgCarHome.ActiveTab = tabHome) and (pgHome.ActiveTab = tab03DriverTask) then
    begin
      pgHome.Previous;
      Key := 0;
    end;
  end;
end;

procedure TfrmFMXCarServiceDriverMain.FormShow(Sender: TObject);
begin
  tmtStart.Enabled := True;
end;

procedure TfrmFMXCarServiceDriverMain.FreeCanvasEdit(aResult: TModalResult);
begin
  TimerCanvas.Enabled := True;
end;

procedure TfrmFMXCarServiceDriverMain.FreeNotes(aResult: TModalResult);
begin
  TimerNote.Enabled := True;
end;

procedure TfrmFMXCarServiceDriverMain.GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo;
  var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiLeft:
      begin
        if pgCarHome.ActiveTab <> pgCarHome.Tabs[pgCarHome.TabCount - 1] then
          pgCarHome.ActiveTab := pgCarHome.Tabs[pgCarHome.TabIndex + 1];
        Handled := True;
      end;

    sgiRight:
      begin
        if pgCarHome.ActiveTab <> pgCarHome.Tabs[0] then
          pgCarHome.ActiveTab := pgCarHome.Tabs[pgCarHome.TabIndex - 1];
        Handled := True;
      end;
  end;
end;

procedure TfrmFMXCarServiceDriverMain.Login;
begin

end;

procedure TfrmFMXCarServiceDriverMain.lstOperationsItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  // ShowMessage(AItem.Tag.ToString);
  if FDriverDM.qryDriverCalendar.Locate('rownum', AItem.Tag, []) then
  begin
    lbConfDateTime.Text := FDriverDM.qryDriverCalendartitle.AsString;
    lbConfFRom.Text := FDriverDM.qryDriverCalendarfrom_full_address.AsString;
    lbConfTo.Text := FDriverDM.qryDriverCalendarto_full_address.AsString;

    lbDateTime.Text := FDriverDM.qryDriverCalendartitle.AsString;
    lbFrom.Text := FDriverDM.qryDriverCalendarfrom_full_address.AsString;
    lbDelivery.Text := FDriverDM.qryDriverCalendarto_full_address.AsString;
  end;

  if FDriverDM.qryDriverCalendarstate_id.AsInteger = 0 then
    pgHome.TabIndex := 1
  else
    pgHome.TabIndex := 2;

end;

procedure TfrmFMXCarServiceDriverMain.lvMessagesItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  // ShowMessage(AItem.Tag.ToString);
  if FDriverDM.qryMessages.Locate('rownum', AItem.Tag, []) then
  begin
    WebBrowser1.LoadFromStrings(FDriverDM.qryMessagesmsgtext.AsString, '');
    pgMessages.TabIndex := 1;
  end;
end;

procedure TfrmFMXCarServiceDriverMain.SpeedButton1Click(Sender: TObject);
begin
  pgHome.TabIndex := 0;
end;

procedure TfrmFMXCarServiceDriverMain.TestLogin(const aUsername, aPassword);
begin

end;

procedure TfrmFMXCarServiceDriverMain.TimerNoteTimer(Sender: TObject);
begin
  TimerNote.Enabled := False;
  if Assigned(FdlgFMXNotes) then
  begin
    FdlgFMXNotes.Free;
    FdlgFMXNotes := nil;
  end;
end;

procedure TfrmFMXCarServiceDriverMain.tmtStartTimer(Sender: TObject);
begin
  tmtStart.Enabled := False;
  Login;
  tmList.Enabled := True;
  tmtMsgs.Enabled := True;
  frameFMXRegisterMobile1.JanuaUserProfile := TJanuaApplication.UserSessionVM.CurrentRecord.UserProfile;
  frameFMXRegisterMobile1.Active := True;
end;

procedure TfrmFMXCarServiceDriverMain.tmtListTimer(Sender: TObject);
begin
  tmList.Enabled := False;
  if not Assigned(FDriverDM) then
    FDriverDM := TdmPgCarServiceBookingDrivers.Create(self);

  Async.Run<Boolean>(
    function: Boolean
    begin
      TMonitor.Enter(FMonitor);
      try
        Result := FDriverDM.OpenList > 0;
      finally
        TMonitor.Exit(FMonitor);
      end;
    end,
    procedure(const aResult: Boolean)
    begin
      if aResult then
      begin
        lstOperations.BeginUpdate;
        lstOperations.Items.Clear;
        FDriverDM.qryDriverCalendar.First;
        while not FDriverDM.qryDriverCalendar.Eof do
        begin
          with lstOperations.Items.Add do
          begin
            Data['Text1'] := FDriverDM.qryDriverCalendartitle.AsString;
            Data['Detail1'] := FDriverDM.qryDriverCalendarfrom_full_address.AsString;
            if FDriverDM.qryDriverCalendarstate_id.AsInteger = 0 then
              Data['Portrait'] := 15
            else
              Data['Portrait'] := 14;

            Tag := FDriverDM.qryDriverCalendarrownum.AsLargeInt;
          end;
          FDriverDM.qryDriverCalendar.Next;
        end;
        lstOperations.EndUpdate;
      end;
    end,
    procedure(const Ex: Exception)
    begin
      Raise Exception.Create('Error qryDriverCalendar' + Ex.Message);
    end);
  JanuaFmxBadge1.Badge := FDriverDM.qryBooking.RecordCount;
end;

procedure TfrmFMXCarServiceDriverMain.tmtMsgsTimer(Sender: TObject);
begin
  tmtMsgs.Enabled := False;
  if not Assigned(FDriverDM) then
    FDriverDM := TdmPgCarServiceBookingDrivers.Create(self);

  Async.Run<Boolean>(
    function: Boolean
    begin
      TMonitor.Enter(FMonitor);
      try
        FDriverDM.qryMessages.Close;
        FDriverDM.qryMessages.Open;
        Result := FDriverDM.qryMessages.RecordCount > 0;
      finally
        TMonitor.Exit(FMonitor);
      end;
    end,
    procedure(const aResult: Boolean)
    begin
      if aResult then
      begin
        lvMessages.BeginUpdate;
        lvMessages.Items.Clear;
        FDriverDM.qryMessages.First;
        while not FDriverDM.qryMessages.Eof do
        begin
          with lvMessages.Items.Add do
          begin
            Data['Text1'] := FDriverDM.qryMessagestitle.AsString;
            Data['Detail1'] := FDriverDM.qryMessagessubtitle.AsString;
            if FDriverDM.qryMessagesmsgtype.AsInteger = 1 then
              Data['Portrait'] := 7
            else
              Data['Portrait'] := 4;

            Tag := FDriverDM.qryMessagesrownum.AsLargeInt;
          end;
          FDriverDM.qryMessages.Next;
        end;
        lvMessages.EndUpdate;
      end;
    end,
    procedure(const Ex: Exception)
    begin
      Raise Exception.Create('Error qryDriverCalendar' + Ex.Message);
    end);
  { JanuaFmxBadge1.Badge := FDriverDM.qryBooking.RecordCount; }

end;

end.
