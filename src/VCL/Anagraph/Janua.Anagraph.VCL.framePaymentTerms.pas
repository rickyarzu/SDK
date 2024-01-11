unit Janua.Anagraph.VCL.framePaymentTerms;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, AdvEdit, AdvMoneyEdit, JvExStdCtrls,
  JvGroupBox;

type
  TframeAnagraphVCLPaymentTerms = class(TFrame)
    grpPaymentTerms: TJvGroupBox;
    lbCurrency: TLabel;
    lbDiscountRate: TLabel;
    lbPaymentTerms: TLabel;
    cboCurrency: TComboBox;
    AdvMoneyEdit1: TAdvMoneyEdit;
    cboPaymentTerms: TComboBox;
    lvPaymentTerms: TListView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
