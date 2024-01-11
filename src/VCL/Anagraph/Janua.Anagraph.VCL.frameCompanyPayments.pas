unit Janua.Anagraph.VCL.frameCompanyPayments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExStdCtrls, JvGroupBox, AdvEdit,
  AdvMoneyEdit, Vcl.ComCtrls,
  // Janua Interposers
  Janua.Vcl.Interposers, uJanuaVCLFrame,
  Janua.Controls.Forms.Intf, Janua.Controls.Intf, Janua.Core.Types, Janua.Core.Classes.Intf,
  Janua.Bindings.Intf,
  JOrm.Anagraph.Intf, Janua.Anagraph.ViewModel.Intf;

type
  TframeAnagraphCompanyPayments = class(TJanuaVCLFrameModel, IJanuaContainer, IJanuaBindable)
    cboCurrency: TComboBox;
    Label1: TLabel;
    edtCustomerDiscountRate: TAdvMoneyEdit;
    lblDiscountRate: TLabel;
    Label3: TLabel;
    JvGroupBox1: TJvGroupBox;
    cbbPaymentTerms: TComboBox;
    lviewInstalments: TListView;
    edtTrustAmount: TAdvMoneyEdit;
    lblTrustAmount: TLabel;
    lblInstalments: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
