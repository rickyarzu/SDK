unit ufrmJanuaCoreMail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Janua.Core.Classes, Janua.Core.Mail,
  Janua.Core.System, Data.DB, MemDS, VirtualTable;

type
  TfrmJanuaCoreMail = class(TForm)
    PageControl1: TPageControl;
    tabMailSettings: TTabSheet;
    tabMailHtml: TTabSheet;
    TabSheet3: TTabSheet;
    JanuaMailSender1: TJanuaMailSender;
    JanuaCoreLogger1: TJanuaCoreLogger;
    JanuaCoreOS1: TJanuaCoreOS;
    VirtualTable1: TVirtualTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJanuaCoreMail: TfrmJanuaCoreMail;

implementation

{$R *.dfm}

end.
