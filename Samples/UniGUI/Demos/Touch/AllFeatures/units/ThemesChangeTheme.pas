// Change Theme = Themes
unit ThemesChangeTheme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMultiItem, unimList, uniGUIBaseClasses,
  uniGUImJSForm, MainModule;

type
  TUniThemesChangeTheme = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimList1: TUnimList;
    procedure UnimList1Select(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniThemesChangeTheme.UniFrameCreate(Sender: TObject);
begin
  UnimList1.Text := UniMainModule.TouchTheme;
end;

procedure TUniThemesChangeTheme.UnimList1Select(Sender: TObject);
begin
  UniMainModule.TouchTheme := UnimList1.Items[UnimList1.ItemIndex];
end;

initialization
  RegisterClass(TUniThemesChangeTheme);
end.
