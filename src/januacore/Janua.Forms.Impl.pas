unit Janua.Forms.Impl;

interface

uses Janua.Forms.Intf, Janua.Forms.Types, System.SysUtils, Janua.Core.Classes;

type
  ///<summary>
  /// Base Class for IJanuaForm implementation.
  /// </summary>
  TJanuaForm = class(TJanuaInterfacedBindableObject)
  private
    FTitle: string;
    FBorderIcons: TJanuaFormBorderIcons;
    FModalResult: TJanuaModalResult;
  protected
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    function GetBorderIcons: TJanuaFormBorderIcons;
    procedure SetBorderIcons(const Value: TJanuaFormBorderIcons); virtual;
  protected
    function GetModalResult: TJanuaModalResult;
    procedure SetModalResult(const Value: TJanuaModalResult); virtual;
  public
    constructor Create; override;
  published
    property Title: string read FTitle write SetTitle;
  end;


implementation

{ TJanuaForm }

constructor TJanuaForm.Create;
begin
  inherited;
  FBorderIcons := [jbiSystemMenu, jbiMinimize, jbiMaximize];
end;

function TJanuaForm.GetBorderIcons: TJanuaFormBorderIcons;
begin
  Result := self.FBorderIcons
end;

function TJanuaForm.GetModalResult: TJanuaModalResult;
begin
  Result := self.FModalResult
end;

function TJanuaForm.GetTitle: string;
begin
  Result := self.FTitle
end;

procedure TJanuaForm.SetBorderIcons(const Value: TJanuaFormBorderIcons);
begin
  FBorderIcons := Value;
end;

procedure TJanuaForm.SetModalResult(const Value: TJanuaModalResult);
begin
  self.FModalResult := Value
end;

procedure TJanuaForm.SetTitle(const Value: string);
begin
  FTitle := Value;
end;


end.
