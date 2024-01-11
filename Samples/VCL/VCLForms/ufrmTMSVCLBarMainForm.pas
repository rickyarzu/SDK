unit ufrmTMSVCLBarMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uJanuaVclForm, Janua.Controls.Forms.Intf, Janua.Controls.Intf,
  Vcl.ExtCtrls, Vcl.WinXCtrls, Janua.Core.Classes, Janua.TMS.NavBar;

type
  TfrmTMSVCLBarMainForm = class(TJanuaFormModel, IJanuaForm, IJanuaContainer, IJanuaControl )
    Panel1: TPanel;
    SplitView1: TSplitView;
    JanuaTMSNavBarController1: TJanuaTMSNavBarController;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTMSVCLBarMainForm: TfrmTMSVCLBarMainForm;

implementation

{$R *.dfm}

end.
