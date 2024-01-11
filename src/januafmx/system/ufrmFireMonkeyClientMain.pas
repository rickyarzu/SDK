unit ufrmFireMonkeyClientMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Rtti, System.Classes,
  System.Variants, FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs,
  FMX.StdCtrls, System.Actions, FMX.ActnList, FMX.Menus, FMX.Objects,
  FMX.ListView.Types, FMX.ListView;

type
  TfrmFireMonkeyClientMain = class(TForm)
    ToolBar1: TToolBar;
    ActionList1: TActionList;
    LoginAction: TAction;
    SpeedButton1: TSpeedButton;
    MainMenu1: TMainMenu;
    Image1: TImage;
    lbLogout: TLabel;
    MenuItem1: TMenuItem;
    MenuFile: TMenuItem;
    SpeedButton2: TSpeedButton;
    Image2: TImage;
    Label2: TLabel;
    PasswordAction: TAction;
    MenuItem2: TMenuItem;
    SpeedButton3: TSpeedButton;
    Image3: TImage;
    Label1: TLabel;
    ProfileAction: TAction;
    Panel1: TPanel;
    ListView1: TListView;
    procedure LoginActionExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FLoggedIn : boolean;
  public
    { Public declarations }
  end;

var
  frmFireMonkeyClientMain: TfrmFireMonkeyClientMain;

implementation

{$R *.fmx}

uses udlgLoginForm;

procedure TfrmFireMonkeyClientMain.FormShow(Sender: TObject);
begin
  if not self.FLoggedIn then self.LoginActionExecute(self);

end;

procedure TfrmFireMonkeyClientMain.LoginActionExecute(Sender: TObject);
var
  a : TdlgLoginForm;
begin
   a := TdlgLoginForm.Create(self);
   try
      a.ShowModal;
      /// Sostituire con ErgoMercator Login Client ......
      ///  Yumed è Deprecato
      /// FLoggedIn := dmYumedDSClient.Login(a.edUserName.Text, a.edPassword.Text);
      FLoggedIn := True;
      if FLoggedIn then
      begin
        ShowMessage('Login Attivato');
        self.LoginAction.Text := 'LogOut';
      end
      else
        /// ShowMessage(dmYumedDSClient.LoginMessage);
   finally
      a.Free;
   end;
end;

end.
