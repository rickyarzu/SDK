unit ufrmTestContainer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.ExtCtrls,
  Janua.Controls.Forms.Impl, Janua.Controls.Forms.Intf, Vcl.ComCtrls, Janua.Core.Classes, Janua.TMS.NavBar,
  Janua.Vcl.Controls.Forms.Impl, uJanuaVCLForm;

type
  TfrmTestContainer = class(TJanuaVCLFormModel, IJanuaForm, IJanuaContainer)
    Panel1: TPanel;
    SplitView1: TSplitView;
    PageControl1: TPageControl;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
  public
    { Public declarations }
  end;

var
  frmTestContainer: TfrmTestContainer;

implementation

uses Janua.Vcl.Framework;

{$R *.dfm}

procedure TfrmTestContainer.FormShow(Sender: TObject);
begin
  self.Panel1.Caption := Format('Font %s size %d', [Panel1.Font.Name, Panel1.Font.Size]);
end;

end.
