unit Janua.CarService.FMX.dlgBrowser;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Objects,
  FMX.Controls.Presentation, FMX.WebBrowser;

type
  TdlgCarServiceBrowser = class(TForm)
    ToolBar4: TToolBar;
    Image3: TImage;
    Button6: TButton;
    SpeedButton3: TSpeedButton;
    WebBrowser1: TWebBrowser;
  private
    FHtml: string;
    procedure SetHtml(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property Html: string read FHtml write SetHtml;
  end;

var
  dlgCarServiceBrowser: TdlgCarServiceBrowser;

implementation

{$R *.fmx}
{ TdlgCarServiceBrowser }

procedure TdlgCarServiceBrowser.SetHtml(const Value: string);
begin
  FHtml := Value;
  if FHtml <> '' then
    WebBrowser1.LoadFromStrings(FHtml, '');
end;

end.
