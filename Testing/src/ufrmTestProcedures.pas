unit ufrmTestProcedures;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Menus,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.AppEvnts,
  // Janua
  udmJanuaCoreTestingController, Janua.Core.Http, Janua.Core.Classes, Janua.Postgres.Health, AdvOfficeTabSet,
  AdvAppStyler, AdvOfficeTabSetStylers, Shader, AdvGlowButton;

type
  TfrmMDIUnitTestingForm = class(TForm)
    TreeView1: TTreeView;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Login1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    DBSettings1: TMenuItem;
    Core: TMenuItem;
    Functions1: TMenuItem;
    Classes1: TMenuItem;
    Mailing1: TMenuItem;
    N2: TMenuItem;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Server1: TMenuItem;
    Football1: TMenuItem;
    ButtonStart: TButton;
    ButtonStop: TButton;
    ApplicationEvents1: TApplicationEvents;
    Label1: TLabel;
    EditPort: TEdit;
    ButtonOpenBrowser: TButton;
    WebBroker1: TMenuItem;
    Football2: TMenuItem;
    N3: TMenuItem;
    Http1: TMenuItem;
    Metronic1: TMenuItem;
    estCreateHealth1: TMenuItem;
    estCreateCore1: TMenuItem;
    estCreateHealthPostgres1: TMenuItem;
    N4: TMenuItem;
    Health1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    MapsTestings1: TMenuItem;
    Statistics1: TMenuItem;
    Forms1: TMenuItem;
    Analytcs1: TMenuItem;
    Statistics2: TMenuItem;
    MVCRESTForms1: TMenuItem;
    Staticis1: TMenuItem;
    N7: TMenuItem;
    LoginToWebBroker1: TMenuItem;
    Postgres1: TMenuItem;
    Frameworkds1: TMenuItem;
    SpeedButton2: TSpeedButton;
    RemoteTest1: TMenuItem;
    System1: TMenuItem;
    Health2: TMenuItem;
    Football3: TMenuItem;
    AdvFormStyler1: TAdvFormStyler;
    AdvOfficeTabSetOfficeStyler1: TAdvOfficeTabSetOfficeStyler;
    Shader1: TShader;
    AdvOfficeMDITabSet1: TAdvOfficeMDITabSet;
    AdvGlowButton1: TAdvGlowButton;
    procedure Functions1Click(Sender: TObject);
    procedure Mailing1Click(Sender: TObject);
    procedure Classes1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Football1Click(Sender: TObject);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure ButtonOpenBrowserClick(Sender: TObject);
    procedure Football2Click(Sender: TObject);
    procedure Metronic1Click(Sender: TObject);
    procedure estCreateHealth1Click(Sender: TObject);
    procedure MapsTestings1Click(Sender: TObject);
    procedure Statistics1Click(Sender: TObject);
    procedure Analytcs1Click(Sender: TObject);
    procedure Staticis1Click(Sender: TObject);
    procedure Frameworkds1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    FChildCount: Integer;
    FdmJanuaCoreTestingController: TdmJanuaCoreTestingController;
    procedure SetdmJanuaCoreTestingController(const Value: TdmJanuaCoreTestingController);
    { Private declarations }
  public
    { Public declarations }
    procedure AddNewMDIForm(const aForm: TForm);
    property dmJanuaCoreTestingController: TdmJanuaCoreTestingController read FdmJanuaCoreTestingController
      write SetdmJanuaCoreTestingController;
  end;

var
  frmMDIUnitTestingForm: TfrmMDIUnitTestingForm;

implementation

{$R *.dfm}

uses ufrmTestVCLMaps;

procedure TfrmMDIUnitTestingForm.AddNewMDIForm(const aForm: TForm);
begin
  Inc(FChildCount);
  AdvOfficeMDITabSet1.AddTab(aForm);
end;

procedure TfrmMDIUnitTestingForm.Analytcs1Click(Sender: TObject);
begin
  FdmJanuaCoreTestingController.ShowTestVCLStatisticsServer;
end;

procedure TfrmMDIUnitTestingForm.ButtonOpenBrowserClick(Sender: TObject);
begin
  self.FdmJanuaCoreTestingController.StartServer(self.EditPort.Text);
  self.FdmJanuaCoreTestingController.OpenBrowser;
end;

procedure TfrmMDIUnitTestingForm.ButtonStartClick(Sender: TObject);
begin
  self.FdmJanuaCoreTestingController.StartServer(self.EditPort.Text);
end;

procedure TfrmMDIUnitTestingForm.ButtonStopClick(Sender: TObject);
begin
  self.FdmJanuaCoreTestingController.StopServer;
end;

procedure TfrmMDIUnitTestingForm.Classes1Click(Sender: TObject);
begin
  self.FdmJanuaCoreTestingController.ShowTestClasses;
end;

procedure TfrmMDIUnitTestingForm.estCreateHealth1Click(Sender: TObject);
var
  Server: Janua.Core.Http.TJanuaCustomWebController;
begin
  Server := Janua.Core.Http.TJanuaCustomWebController.Create(self);
end;

procedure TfrmMDIUnitTestingForm.Football1Click(Sender: TObject);
begin
  self.FdmJanuaCoreTestingController.ShowTestFootball
end;

procedure TfrmMDIUnitTestingForm.Football2Click(Sender: TObject);
begin
  FdmJanuaCoreTestingController.ShowWebBrokerFootball;
end;

procedure TfrmMDIUnitTestingForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  self.FdmJanuaCoreTestingController.Terminate;
end;

procedure TfrmMDIUnitTestingForm.Frameworkds1Click(Sender: TObject);
begin
  FdmJanuaCoreTestingController.ShowPostgresFrameworks
end;

procedure TfrmMDIUnitTestingForm.Functions1Click(Sender: TObject);
begin
  self.FdmJanuaCoreTestingController.ShowTestFunctions;

end;

procedure TfrmMDIUnitTestingForm.Mailing1Click(Sender: TObject);
begin
  self.FdmJanuaCoreTestingController.ShowTestMail;
end;

procedure TfrmMDIUnitTestingForm.MapsTestings1Click(Sender: TObject);
begin
  if not Assigned(frmTestVCLMaps) then
    Application.CreateForm(TfrmTestVCLMaps, frmTestVCLMaps);
  frmTestVCLMaps.Show;
end;

procedure TfrmMDIUnitTestingForm.Metronic1Click(Sender: TObject);
begin
  FdmJanuaCoreTestingController.ShowTestMetronics
end;

procedure TfrmMDIUnitTestingForm.SetdmJanuaCoreTestingController(const Value: TdmJanuaCoreTestingController);
begin
  FdmJanuaCoreTestingController := Value;
end;

procedure TfrmMDIUnitTestingForm.SpeedButton2Click(Sender: TObject);
begin
  FdmJanuaCoreTestingController.OnNewMDIForm := self.AddNewMDIForm;
  FdmJanuaCoreTestingController.Activate;
  self.SpeedButton1.Enabled := True;
end;

procedure TfrmMDIUnitTestingForm.Staticis1Click(Sender: TObject);
begin
  FdmJanuaCoreTestingController.ShowTestStatisticsServer
end;

procedure TfrmMDIUnitTestingForm.Statistics1Click(Sender: TObject);
begin
  FdmJanuaCoreTestingController.ShowTestStatisticsCore
end;

end.
