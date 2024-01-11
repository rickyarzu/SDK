// List Events   = Form Controls
unit FormControlsListEvents;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniMultiItem, unimList, uniGUIBaseClasses,
  uniGUImJSForm;

type
  TUniFormControlsListEvents = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimList1: TUnimList;
    procedure UnimList1Click(Sender: TObject);
    procedure UnimList1ClickHold(Sender: TObject);
    procedure UnimList1DblClick(Sender: TObject);
    procedure UnimList1Disclose(Sender: TObject);
    procedure UnimList1Select(Sender: TObject);
    procedure UnimList1Swipe(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormControlsListEvents.UnimList1Click(Sender: TObject);
begin
  if UnimList1.ItemIndex = 0 then
    ShowMessage('It''s clicked!');
end;

procedure TUniFormControlsListEvents.UnimList1ClickHold(Sender: TObject);
begin
  if UnimList1.ItemIndex = 1 then
    ShowMessage('It''s holded!');
end;

procedure TUniFormControlsListEvents.UnimList1DblClick(Sender: TObject);
begin
  if UnimList1.ItemIndex = 2 then
    ShowMessage('It''s double clicked!');
end;

procedure TUniFormControlsListEvents.UnimList1Disclose(Sender: TObject);
begin
  if UnimList1.ItemIndex = 3 then
    ShowMessage('It''s disclosured!');
end;

procedure TUniFormControlsListEvents.UnimList1Select(Sender: TObject);
begin
  if UnimList1.ItemIndex = 4 then
    ShowMessage('It''s selected!');
end;

procedure TUniFormControlsListEvents.UnimList1Swipe(Sender: TObject);
begin
  if UnimList1.ItemIndex =5 then
    ShowMessage('It''s swiped!');
end;

initialization
  RegisterClass(TUniFormControlsListEvents);

end.
