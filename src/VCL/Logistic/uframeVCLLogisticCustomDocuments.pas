unit uframeVCLLogisticCustomDocuments;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvDBLookup, Vcl.StdCtrls;

type
  TframeVCLLogisticCustomDocuments = class(TFrame)
    cboCustomsDocType: TJvDBLookupCombo;
    lbCustomOperation: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
