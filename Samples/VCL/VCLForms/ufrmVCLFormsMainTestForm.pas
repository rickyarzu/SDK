unit ufrmVCLFormsMainTestForm;

interface

uses
  // RTL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Spring.Collections,
  // VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls,
  // Janua
  Janua.Vcl.Interposers;

type
  TfrmVCLFormsMainTestForm = class(TForm)
    tvMainMenu: TTreeView;
    pgcMainForm: TPageControl;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowTab(aTab: TTabSheet);
  end;

var
  frmVCLFormsMainTestForm: TfrmVCLFormsMainTestForm;

implementation

{$R *.dfm}
{ TfrmVCLFormsMainTestForm }

procedure TfrmVCLFormsMainTestForm.ShowTab(aTab: TTabSheet);
begin

end;

end.
