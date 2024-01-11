unit uJanuaFrameNavigator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, AdvGlowButton, DB;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
