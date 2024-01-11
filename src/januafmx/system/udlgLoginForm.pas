unit udlgLoginForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Rtti, System.Classes,
  System.Variants, FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs,
  FMX.StdCtrls, FMX.Edit;

type
  TdlgLoginForm = class(TForm)
    edUserName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edPassword: TEdit;
    CornerButton1: TCornerButton;
    CornerButton2: TCornerButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgLoginForm: TdlgLoginForm;

implementation

{$R *.fmx}

end.
