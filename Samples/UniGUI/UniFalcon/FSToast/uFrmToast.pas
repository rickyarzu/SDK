unit uFrmToast;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  uniGUITypes, uniGUIAbstractClasses, uniGUIClasses, uniGUIFrame,
  uniGUIBaseClasses, UniFSToast, uniBitBtn, Vcl.Imaging.pngimage, uniImage,
  uniLabel, uniButton, uniPanel, Vcl.Dialogs, uniPropertyGrid;

type
  TfrmToast = class(TUniFrame)
    pnlBackGround: TUniPanel;
    pnlTransparent: TUniPanel;
    btnSuccess: TUniButton;
    lblFalcon: TUniLabel;
    imgFalcon: TUniImage;
    btnInfo: TUniButton;
    btnWarning: TUniButton;
    btnError: TUniButton;
    btnCustom: TUniButton;
    btnDialogUnigui: TUniBitBtn;
    btnCustomII: TUniButton;
    btnCustomIII: TUniButton;
    btnDialogFalcon: TUniBitBtn;
    lblDialog: TUniLabel;
    pnlBottom: TUniPanel;
    Toast: TUniFSToast;
    btnCustomID: TUniBitBtn;
    lblVersion: TUniLabel;
    btnLongProcess: TUniBitBtn;
    btn1: TUniBitBtn;
    btn2: TUniBitBtn;
    btn3: TUniBitBtn;
    btn4: TUniBitBtn;
    btn5: TUniBitBtn;
    btn6: TUniBitBtn;
    btnNewForm: TUniBitBtn;
    btnCloseAll: TUniBitBtn;
    btn7: TUniButton;
    procedure btnCustomClick(Sender: TObject);
    procedure btnCustomIIClick(Sender: TObject);
    procedure btnCustomIIIClick(Sender: TObject);
    procedure btnDialogFalconClick(Sender: TObject);
    procedure btnDialogUniguiClick(Sender: TObject);
    procedure btnErrorClick(Sender: TObject);
    procedure btnInfoClick(Sender: TObject);
    procedure btnSuccessClick(Sender: TObject);
    procedure btnWarningClick(Sender: TObject);
    procedure pnlBottomResize(Sender: TUniControl; OldWidth,
      OldHeight: Integer);
    procedure ToastClosePopup(Sender: TObject);
    procedure btnCustomIDClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure btnLongProcessClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btnNewFormClick(Sender: TObject);
    procedure btnCloseAllClick(Sender: TObject);
    procedure ToastClickPopup(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure ToastButtonCustomClickPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uDmMsg, uFrmOther;

procedure TfrmToast.btn1Click(Sender: TObject);
begin
  Toast.Info('Hello','topLeft', topLeft);
end;

procedure TfrmToast.btn2Click(Sender: TObject);
begin
  Toast.Info('Hello','topCenter', topCenter);
end;

procedure TfrmToast.btn3Click(Sender: TObject);
begin
  Toast.Info('Hello','topRight', topRight);
end;

procedure TfrmToast.btn4Click(Sender: TObject);
begin
  Toast.Info('Hello','bottomLeft', bottomLeft);
end;

procedure TfrmToast.btn5Click(Sender: TObject);
begin
  Toast.Info('Hello','bottomCenter', bottomCenter);
end;

procedure TfrmToast.btn6Click(Sender: TObject);
begin
  Toast.Info('Hello','bottomRight', bottomRight);
end;

procedure TfrmToast.btn7Click(Sender: TObject);
begin
  Toast.ButtonCustomActive := True;
  Toast.ButtonCustomText := 'Text Button';
  Toast.Title := 'Title Message';
  Toast.Msg := 'Hi, you have new message';
  Toast.Show();
end;

procedure TfrmToast.btnCloseAllClick(Sender: TObject);
begin
  Toast.CloseAll;
end;

procedure TfrmToast.btnCustomClick(Sender: TObject);
begin
  Toast.Clear;
  Toast.Title := 'Custom I';
  Toast.Msg := 'Congratulations!!!';
  Toast.Icon := 'far fa-smile'; //https://fontawesome.com/icons?d=gallery
  Toast.Theme := TToastTheme.Dark;
  Toast.Balloon := True;
  Toast.Position := TToastPosition.topCenter;
  Toast.Close := False;
  Toast.Show;
end;

procedure TfrmToast.btnCustomIDClick(Sender: TObject);
begin
  Toast.Clear;
  Toast.Title := 'Custom ID';
  Toast.Msg := 'Task started';
  Toast.Icon := 'far fa-user-circle'; //https://fontawesome.com/icons?d=gallery
  Toast.Theme := TToastTheme.Dark;
  Toast.Balloon := True;
  Toast.TimeOut := 0;
  Toast.Position := TToastPosition.center;
  Toast.ToastOnce := True;
  Toast.ProgressBar := False;
  //Toast.Id := '123456'; // <<---
  Toast.Show;

  //frmOther.ShowModal();
end;

procedure TfrmToast.btnCustomIIClick(Sender: TObject);
begin
  Toast.Clear;
  Toast.Title := 'Custom II';
  Toast.Msg := 'Congratulations!!!';
  Toast.Icon := 'fas fa-cogs'; //https://fontawesome.com/icons?d=gallery
  Toast.Theme := TToastTheme.Light;
  Toast.Balloon := False;
  Toast.Layout := TToastLayout.SmallInt;
  Toast.Position := TToastPosition.bottomCenter;
  Toast.ProgressBarColor := 'RGB(80,139,255)';
  Toast.Show;
end;

procedure TfrmToast.btnCustomIIIClick(Sender: TObject);
begin
  Toast.Clear;
  Toast.Title := 'Custom III';
  Toast.Msg := 'Congratulations!!!';
  Toast.Icon := 'fas fa-shopping-cart'; //https://fontawesome.com/icons?d=gallery
  Toast.Theme := TToastTheme.Dark;
  Toast.Balloon := False;
  Toast.Position := TToastPosition.center;
  Toast.ProgressBarColor := 'RGB(80,139,255)';
  Toast.Image := '/image/falcon.png'; // or 'https://www.falconsistemas.com.br/assets/images/falcon_sistema_branco_100.fw.png';
  Toast.TimeOut := 10000;
  Toast.Overlay := True;
  Toast.Show;
end;

procedure TfrmToast.btnDialogFalconClick(Sender: TObject);
begin
  Toast.Question('Confirm','uniGUI is the best web framework for delphi?',
    procedure(ButtonCallBack: Integer)
    begin
      if ButtonCallBack = mrYes then
        lblDialog.Caption := 'Falcon - YES';
      if ButtonCallBack = mrNo then
        lblDialog.Caption := 'Falcon - NO';
    end
  );
end;

procedure TfrmToast.btnDialogUniguiClick(Sender: TObject);
begin
  MessageDlg('uniGUI is the best web framework for delphi?',
    mtConfirmation,mbYesNo,procedure(Comp: TComponent; ARes: Integer)
    begin
      if Ares = mrYes then
        lblDialog.Caption := 'uniGUI - YES';
      if Ares = mrNo then
        lblDialog.Caption := 'uniGUI - NO';
    end
    );
end;

procedure TfrmToast.btnErrorClick(Sender: TObject);
begin
  Toast.Error('Error','Oppss an error occurred');
end;

procedure TfrmToast.btnInfoClick(Sender: TObject);
begin
  Toast.Info('Hello','');
end;

procedure TfrmToast.btnLongProcessClick(Sender: TObject);
begin
  Toast.ScreenMask.Enabled := True;
  Toast.ScreenMask.Text := 'Long process executing...';

  Toast.Question('Confirm','Execute long process?',
    procedure(ButtonCallBack: Integer)
    begin
      if ButtonCallBack = mrYes then
      begin
        Sleep(3000);
        Toast.Success('Sucess','Long process executed!');
      end;
    end
  );
end;

procedure TfrmToast.btnNewFormClick(Sender: TObject);
begin
  frmOther.ShowModal();
end;

procedure TfrmToast.btnSuccessClick(Sender: TObject);
begin
  dmMsg.Toast.Success('Success','Toast Powered by Falcon Sistemas');
end;

procedure TfrmToast.btnWarningClick(Sender: TObject);
begin
  Toast.Warning('Warning','Important Notice!');
end;

procedure TfrmToast.pnlBottomResize(Sender: TUniControl; OldWidth,
  OldHeight: Integer);
begin
  pnlBackGround.Visible := True;
  pnlTransparent.Left := (pnlBottom.Width div 2) - (pnlTransparent.Width div 2);
end;

procedure TfrmToast.ToastButtonCustomClickPopup(Sender: TObject);
begin
  ShowMessage('Button Custom Click');
end;

procedure TfrmToast.ToastClickPopup(Sender: TObject);
begin
  ShowMessage('Click');
end;

procedure TfrmToast.ToastClosePopup(Sender: TObject);
begin
  if TUniFSToast(Sender).Id <> EmptyStr then
    ShowMessage('Tasked finally ID: '+ TUniFSToast(Sender).Id)
end;

procedure TfrmToast.UniFrameCreate(Sender: TObject);
begin
  lblVersion.Caption := 'Component Version: '+UniFSToast.PackageVersion;
end;

initialization
  RegisterClass(TfrmToast)

end.
