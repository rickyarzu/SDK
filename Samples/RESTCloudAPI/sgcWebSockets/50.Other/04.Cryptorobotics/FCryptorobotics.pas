unit FCryptorobotics;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, sgcHTTP_API_Cryptorobotics;

type
  TFRMCryptorobotics = class(TForm)
    memoLog: TMemo;
    pnlBody: TPanel;
    pnlMethods: TPanel;
    pageControl1: TPageControl;
    tabSignals: TTabSheet;
    btnChannelList: TButton;
    btnSignalsList: TButton;
    cboGetSignalById: TButton;
    tabCreateSignal: TTabSheet;
    Label16: TLabel;
    txtExchange: TEdit;
    Label17: TLabel;
    txtMarket: TEdit;
    cboSide: TComboBox;
    Label18: TLabel;
    txtMinPrice: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    txtStopLoss: TEdit;
    Label4: TLabel;
    txtComment: TEdit;
    Label5: TLabel;
    txtLeverage: TEdit;
    btnCreateSignal: TButton;
    pnlTop: TPanel;
    Label6: TLabel;
    txtUserId: TEdit;
    Label7: TLabel;
    txtSecret: TEdit;
    Label8: TLabel;
    txtSignalId: TEdit;
    btnGetSignalByHash: TButton;
    Label9: TLabel;
    txtChannelHash: TEdit;
    Label10: TLabel;
    txtExternalId: TEdit;
    chkLog: TCheckBox;
    txtMaxPrice: TEdit;
    Label1: TLabel;
    Label11: TLabel;
    txtTargets: TEdit;
    Label12: TLabel;
    txtOptionalExchanges: TEdit;
    chkBreakeven: TCheckBox;
    txtSignalChannelHash: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    txtEditChannelHash: TEdit;
    btnEditSignalByHash: TButton;
    txtEditSignalId: TEdit;
    Label15: TLabel;
    Label19: TLabel;
    txtEditExternalId: TEdit;
    txtSignalExternalId: TEdit;
    Label20: TLabel;
    btnEditSignalById: TButton;
    btnCancelSignalById: TButton;
    btnCancelSignalByHash: TButton;
    procedure btnCancelSignalByHashClick(Sender: TObject);
    procedure btnCancelSignalByIdClick(Sender: TObject);
    procedure btnChannelListClick(Sender: TObject);
    procedure btnGetSignalByHashClick(Sender: TObject);
    procedure btnCreateSignalClick(Sender: TObject);
    procedure btnEditSignalByIdClick(Sender: TObject);
    procedure btnSignalsListClick(Sender: TObject);
    procedure btnEditSignalByHashClick(Sender: TObject);
    procedure cboGetSignalByIdClick(Sender: TObject);
  private
    FClient: TsgcHTTP_API_Cryptorobotics;
    procedure DoLog(const aValue: string);
  protected
    function GetClient: TsgcHTTP_API_Cryptorobotics;
    property Client: TsgcHTTP_API_Cryptorobotics read GetClient;
  end;

var
  FRMCryptorobotics: TFRMCryptorobotics;

implementation

{$R *.dfm}

procedure TFRMCryptorobotics.btnCancelSignalByHashClick(Sender: TObject);
begin
  DoLog(Client.CancelSignalByHash(txtEditChannelHash.Text,
    StrToInt(txtEditSignalId.Text)));
end;

procedure TFRMCryptorobotics.btnCancelSignalByIdClick(Sender: TObject);
begin
  DoLog(Client.CancelSignalById(StrToInt(txtEditSignalId.Text)));
end;

procedure TFRMCryptorobotics.btnChannelListClick(Sender: TObject);
begin
  DoLog(Client.GetChannelList);
end;

procedure TFRMCryptorobotics.btnGetSignalByHashClick(Sender: TObject);
begin
  DoLog(Client.GetSignalByHash(txtChannelHash.Text,
    StrToInt(txtExternalId.Text)));
end;

procedure TFRMCryptorobotics.btnCreateSignalClick(Sender: TObject);
var
  oSignal: TsgcHTTPCryptorobotics_Signal;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  oSignal := TsgcHTTPCryptorobotics_Signal.Create;
  Try
    oSignal.ChannelHash := txtSignalChannelHash.Text;
    oSignal.ChannelId := StrToInt(txtSignalExternalId.Text);
    oSignal.Parameters.Side := TsgcHTTPCTRBOrderSide(cboSide.ItemIndex);
    oSignal.Parameters.Exchange := txtExchange.Text;
    oSignal.Parameters.Market := txtMarket.Text;
    oSignal.Parameters.MinPrice := StrToFloat(txtMinPrice.Text, vFS);
    oSignal.Parameters.MaxPrice := StrToFloat(txtMaxPrice.Text, vFS);
    oSignal.Parameters.Targets := txtTargets.Text;
    oSignal.Parameters.StopLoss := StrToFloat(txtStopLoss.Text, vFS);
    oSignal.Parameters.Comment := txtComment.Text;
    oSignal.Parameters.OptionalExchanges := txtOptionalExchanges.Text;
    if txtLeverage.Text <> '' then
      oSignal.Parameters.Config.Leverage := StrToInt(txtLeverage.Text);
    oSignal.Parameters.Config.Breakeven := chkBreakeven.Checked;

    DoLog(Client.CreateSignal(oSignal));
  Finally
    FreeAndNil(oSignal);
  End;
end;

procedure TFRMCryptorobotics.btnEditSignalByIdClick(Sender: TObject);
var
  oSignal: TsgcHTTPCryptorobotics_Signal;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  oSignal := TsgcHTTPCryptorobotics_Signal.Create;
  Try
    oSignal.Parameters.MinPrice := StrToFloat(txtMinPrice.Text, vFS);
    oSignal.Parameters.MaxPrice := StrToFloat(txtMaxPrice.Text, vFS);
    oSignal.Parameters.Targets := txtTargets.Text;
    oSignal.Parameters.StopLoss := StrToFloat(txtStopLoss.Text, vFS);
    oSignal.Parameters.Comment := txtComment.Text;
    if txtLeverage.Text <> '' then
      oSignal.Parameters.Config.Leverage := StrToInt(txtLeverage.Text);
    oSignal.Parameters.Config.Breakeven := chkBreakeven.Checked;

    DoLog(Client.EditSignalById(StrToInt(txtEditSignalId.Text), oSignal));
  Finally
    FreeAndNil(oSignal);
  End;
end;

procedure TFRMCryptorobotics.btnSignalsListClick(Sender: TObject);
begin
  DoLog(Client.GetSignalsList);
end;

procedure TFRMCryptorobotics.btnEditSignalByHashClick(Sender: TObject);
var
  oSignal: TsgcHTTPCryptorobotics_Signal;
  vFS: TFormatSettings;
begin
  vFS.DecimalSeparator := '.';
  vFS.ThousandSeparator := ',';

  oSignal := TsgcHTTPCryptorobotics_Signal.Create;
  Try
    oSignal.Parameters.MinPrice := StrToFloat(txtMinPrice.Text, vFS);
    oSignal.Parameters.MaxPrice := StrToFloat(txtMaxPrice.Text, vFS);
    oSignal.Parameters.Targets := txtTargets.Text;
    oSignal.Parameters.StopLoss := StrToFloat(txtStopLoss.Text, vFS);
    oSignal.Parameters.Comment := txtComment.Text;
    if txtLeverage.Text <> '' then
      oSignal.Parameters.Config.Leverage := StrToInt(txtLeverage.Text);
    oSignal.Parameters.Config.Breakeven := chkBreakeven.Checked;

    DoLog(Client.EditSignalByHash(txtEditChannelHash.Text,
      StrToInt(txtEditExternalId.Text), oSignal));
  Finally
    FreeAndNil(oSignal);
  End;
end;

procedure TFRMCryptorobotics.cboGetSignalByIdClick(Sender: TObject);
begin
  DoLog(Client.GetSignalById(StrToInt(txtSignalId.Text)));
end;

procedure TFRMCryptorobotics.DoLog(const aValue: string);
begin
  memoLog.Lines.Add(aValue);
end;

function TFRMCryptorobotics.GetClient: TsgcHTTP_API_Cryptorobotics;
begin
  if not Assigned(FClient) then
    FClient := TsgcHTTP_API_Cryptorobotics.Create(self);
  if chkLog.Checked then
  begin
    FClient.CryptoroboticsOptions.LogOptions.Enabled := True;
    FClient.CryptoroboticsOptions.LogOptions.FileName :=
      ChangeFileExt(Application.ExeName, '.txt');
  end;

  FClient.CryptoroboticsOptions.Authentication.UserId := txtUserId.Text;
  FClient.CryptoroboticsOptions.Authentication.Secret := txtSecret.Text;
  result := FClient;
end;

end.
