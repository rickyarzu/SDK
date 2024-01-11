//Basic jQuery = jQuery Sample
unit JQuerySampleBasicJQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniPanel, uniHTMLFrame,
  uniGUIBaseClasses;

type
  TUniJQuerySampleBasicJQuery = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniHTMLFrame1: TUniHTMLFrame;
    UniHTMLFrame2: TUniHTMLFrame;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TUniJQuerySampleBasicJQuery);

end.
