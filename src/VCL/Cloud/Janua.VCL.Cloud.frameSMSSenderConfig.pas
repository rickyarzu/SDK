unit Janua.VCL.Cloud.frameSMSSenderConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, AdvMemo, VCL.StdCtrls, VCL.Mask, VCL.ExtCtrls,
  // Januaproject
  Janua.VCL.Interposers, Janua.Tms.Interposers, Janua.Cloud.Conf;

{ TSMSSenderRecordConf = record
  Key: string;
  Secret: string;
  AppName: string; }

type
  TframeVCLMailSmsSenderConfig = class(TFrame)
    advmJson: TAdvMemo;
    grpSettings: TGroupBox;
    lbedKey: TLabeledEdit;
    lbedSecret: TLabeledEdit;
    lbedAppName: TLabeledEdit;
    btnLoadConfig: TButton;
    btnSaveConfig: TButton;
    btnShowJson: TButton;
    procedure btnSaveConfigClick(Sender: TObject);
  private
    FSmsSenderConfig: TSMSSenderConf;
    procedure SetSmsSenderConfig(const Value: TSMSSenderConf);
    { Private declarations }
  public
    { Public declarations }
    procedure AfterConstruction; override;
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;
  public
    property SmsSenderConfig: TSMSSenderConf read FSmsSenderConfig write SetSmsSenderConfig;
  end;

implementation

{$R *.dfm}
{ TFrame2 }

procedure TframeVCLMailSmsSenderConfig.AfterConstruction;
begin
  inherited;
  FSmsSenderConfig.LoadConfig;

  lbedKey.Text := FSmsSenderConfig.RestKey;
  FSmsSenderConfig.Bind('RestKey', lbedKey, 'Text');
  lbedSecret.Text := FSmsSenderConfig.RestSecret;
  FSmsSenderConfig.Bind('RestSecret', lbedSecret, 'Text');
  lbedAppName.Text := FSmsSenderConfig.RestAppName;
  FSmsSenderConfig.Bind('RestAppName', lbedAppName, 'Text');
  advmJson.Text := FSmsSenderConfig.AsJson;
  FSmsSenderConfig.Bind('AsJson', advmJson, 'Text');
end;

procedure TframeVCLMailSmsSenderConfig.btnSaveConfigClick(Sender: TObject);
begin
  FSmsSenderConfig.RestKey := lbedKey.Text;
  FSmsSenderConfig.RestSecret := lbedSecret.Text;
  FSmsSenderConfig.RestAppName := lbedAppName.Text;
  FSmsSenderConfig.SaveConfig;
  advmJson.Text := FSmsSenderConfig.AsJson;

end;

constructor TframeVCLMailSmsSenderConfig.Create(AOwner: TComponent);
begin
  inherited;
  FSmsSenderConfig := TSMSSenderConf.Create;
end;

destructor TframeVCLMailSmsSenderConfig.Destroy;
begin
  FSmsSenderConfig.Free;
  inherited;
end;

procedure TframeVCLMailSmsSenderConfig.SetSmsSenderConfig(const Value: TSMSSenderConf);
begin
  FSmsSenderConfig := Value;
end;

end.
