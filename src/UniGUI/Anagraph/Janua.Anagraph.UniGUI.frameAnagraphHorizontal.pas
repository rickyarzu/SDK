unit Janua.Anagraph.UniGUI.frameAnagraphHorizontal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Janua.Anagraph.UniGUI.frameSimpleAnagraph, uniGUIBaseClasses,
  uniImageList, uniButton, uniBitBtn, UniFSButton, uniGUIClasses, uniEdit, uniLabel, uniPanel;

type
  TframeUniGUIAnagraphHorizontal = class(TframeUniGUISimpleAnagraph)
    btnSave: TUniFSButton;
    btnUndo: TUniFSButton;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frameUniGUIAnagraphHorizontal: TframeUniGUIAnagraphHorizontal;

implementation

{$R *.dfm}

end.
