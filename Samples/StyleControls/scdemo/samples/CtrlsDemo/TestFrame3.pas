unit TestFrame3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, scAdvancedControls,
  scControls;

type
  TBarFrame3 = class(TFrame)
    scLabel1: TscLabel;
    scAdvancedListBox1: TscAdvancedListBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
