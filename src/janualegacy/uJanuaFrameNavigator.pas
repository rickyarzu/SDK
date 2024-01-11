unit uJanuaFrameNavigator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Data.DB, Vcl.Controls, AdvGlowButton, VCL.Forms,
  JvExControls, JvSpeedButton;
// Janu;

type
  TJanuaFrameNavigator = class(TFrame)
    dbFirst: TAdvGlowButton;
    dbLast: TAdvGlowButton;
    dbPrev: TAdvGlowButton;
    dbNext: TAdvGlowButton;
    dbPost: TAdvGlowButton;
    DbNew: TAdvGlowButton;
    DbDelate: TAdvGlowButton;
    DbEdit: TAdvGlowButton;
    DbCancel: TAdvGlowButton;
    DbRefresh: TAdvGlowButton;
    DataSource1: TDataSource;
    JvSpeedButton1: TJvSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
