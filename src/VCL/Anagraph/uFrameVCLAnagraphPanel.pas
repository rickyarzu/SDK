unit uFrameVCLAnagraphPanel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, AdvEdit, AdvMoneyEdit,
  JvExStdCtrls, JvGroupBox,
  // Janua Interposers
  Janua.Vcl.Interposers, uJanuaVCLFrame,  Janua.Bindings.Intf,
  Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf,
  JOrm.Anagraph.Intf, Janua.Anagraph.ViewModel.Intf, uframeVCLCompanyInformations,
  uframeVCLShippingAddress, Janua.Anagraph.VCL.framePaymentTerms;

type
  TFrameVCLAnagraphPanel = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    frameVCLCompanyInformations1: TframeVCLCompanyInformations;
    frameVCLShippingAddress1: TframeVCLShippingAddress;
  private
    FAnagraphRecord: IAnagraphView;
    procedure SetAnagraphRecord(const Value: IAnagraphView);
    { Private declarations }
  public
    { Public declarations }
    procedure Initialize; override;
  public
    property AnagraphRecord: IAnagraphView read FAnagraphRecord write SetAnagraphRecord;
  end;

implementation

{$R *.dfm}
{ TFrameVCLAnagraphPanel }

procedure TFrameVCLAnagraphPanel.initialize;
begin
   inherited
end;

procedure TFrameVCLAnagraphPanel.SetAnagraphRecord(const Value: IAnagraphView);
begin
  FAnagraphRecord := Value;
  {frameVCLCompanyInformations1.AnagraphRecord :=  Value;}
  {frameVCLShippingAddress1.AnagraphRecord := Value;}
 { TODO : Add to IAnagraphInterface the copy methods }

  if Assigned(FAnagraphRecord) then
  begin



  end;
end;

end.
