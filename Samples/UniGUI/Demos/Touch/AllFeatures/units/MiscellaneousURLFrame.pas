//URL Frame = Miscellaneous
unit MiscellaneousURLFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, unimEdit, uniGUIBaseClasses,
  uniImageList, Menus, uniMainMenu, uniStatusBar, uniButton, uniBitBtn,
  uniMultiItem, uniComboBox, uniLabel, uniURLFrame, unimURLFrame, uniGUImJSForm,
  unimBitBtn, unimSelect;

type
  TUniMiscellaneousURLFrame = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimURLFrame1: TUnimURLFrame;
    ImageList1: TUniImageList;
    UnimSelect1: TUnimSelect;
    procedure UnimSelect1Change(Sender: TObject);
  private
   procedure GoURL(AURL: string);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniMiscellaneousURLFrame.GoURL(AURL: string);
begin
  UnimURLFrame1.URL:=AURL;
end;

procedure TUniMiscellaneousURLFrame.UnimSelect1Change(Sender: TObject);
begin
   GoURL(UnimSelect1.Text);
end;

initialization
  RegisterClass(TUniMiscellaneousURLFrame);

end.
