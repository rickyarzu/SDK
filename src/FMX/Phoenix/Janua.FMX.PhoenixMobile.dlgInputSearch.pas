unit Janua.FMX.PhoenixMobile.dlgInputSearch;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Edit, FMX.EditBox, FMX.SpinBox;

type
  TdlgPhoenixInputSearch = class(TForm)
    SpinBox1: TSpinBox;
    lbInputNumber: TLabel;
    lbMatricol: TLabel;
    edMatricola: TEdit;
    btnCancel: TButton;
    btnOK: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgPhoenixInputSearch: TdlgPhoenixInputSearch;

implementation

{$R *.fmx}

end.
