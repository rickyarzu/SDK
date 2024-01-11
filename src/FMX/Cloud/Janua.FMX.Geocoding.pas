unit Janua.FMX.Geocoding;

interface

uses
  System.Classes, System.UITypes,
  // FMX
  FMX.Menus, FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects, FMX.Edit,
  FMX.Controls.Presentation, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Layouts, FMX.ListBox, FMX.TabControl, FMX.DateTimeCtrls, FMX.ScrollBox, FMX.Memo,
  Janua.Core.Classes, Janua.Core.Functions, Janua.Core.Cloud, Janua.Components.Maps;

Type
  TJanuaFMXGoogleGeoCoding = Class(TJanuaCorecomponent)
  private
    FLocationEdit: TEdit;
    FOldLocationSearch: string;
    FSelectedLocation: string;
    FOnLocationSelect: TNotifyEvent;
    FListBox: TListBox;
    FOnLocationStartSearch: TNotifyEvent;
    FParent: TFMXObject;
    function GetLocationText: String;
    procedure SetLocationEdit(const Value: TEdit);
    procedure SetOnLocationSelect(const Value: TNotifyEvent);
    procedure SetJanuaGoogleGeoCoding(const Value: TJanuaGoogleGeoCoding);
    procedure SetOnLocationStartSearch(const Value: TNotifyEvent);
    procedure SetParent(const Value: TFMXObject);
  strict protected
    FJanuaGoogleGeoCoding: TJanuaGoogleGeoCoding;
  public // Public procedures for Events triggered by List and by Edit component ......................................
    procedure LocationEditKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure ListBoxItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
    procedure LocationEditTyping(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
  published
    property LocationEdit: TEdit read FLocationEdit write SetLocationEdit;
    property JanuaGoogleGeoCoding: TJanuaGoogleGeoCoding read FJanuaGoogleGeoCoding write SetJanuaGoogleGeoCoding;
  published
    property OnLocationSelect: TNotifyEvent read FOnLocationSelect write SetOnLocationSelect;
    property OnLocationStartSearch: TNotifyEvent read FOnLocationStartSearch write SetOnLocationStartSearch;
    property Parent: TFMXObject read FParent write SetParent;
  End;

implementation

{ TJanuaFMXGoogleGeoCoding }

constructor TJanuaFMXGoogleGeoCoding.Create(AOwner: TComponent);
begin
  inherited;
  if AOwner is TForm then
    self.Parent := TForm(AOwner);

end;

function TJanuaFMXGoogleGeoCoding.GetLocationText: String;
begin
  if Assigned(self.FListBox) and (FListBox.ItemIndex <> -1) and (FListBox.Items.count > 0) then
    Result := (FListBox.Items[FListBox.ItemIndex])
  else
    Result := self.FSelectedLocation
end;

procedure TJanuaFMXGoogleGeoCoding.ListBoxItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
begin
  self.FLocationEdit.Text := Item.Text;
  FJanuaGoogleGeoCoding.Address := Item.Text;
  self.FListBox.Visible := False;
  // questo va Gestito da un Evento
  // self.edSearch.Visible := True;
  if Assigned(self.FOnLocationSelect) then
    self.FOnLocationSelect(self);

end;

procedure TJanuaFMXGoogleGeoCoding.LocationEditKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkReturn then
  begin
    // Veniva usato per rendere visibile un controllo altrimenti invisibile andrebbe richiamato usando l'evento
    // self.edSearch.Visible := True;
    if self.FListBox.Items.count > 0 then
    begin
      ListBoxItemClick(FListBox, self.FListBox.ItemByIndex(0));
    end;
  end;
end;

procedure TJanuaFMXGoogleGeoCoding.LocationEditTyping(Sender: TObject);
begin
  // Gestire con un Evento
  {
    if self.edSearch.Visible then
    self.edSearch.Visible := False;
  }

  if Assigned(self.FOnLocationStartSearch) then
    FOnLocationStartSearch(self);

  if (Length(FLocationEdit.Text) > 0) and (FLocationEdit.Text <> self.GetLocationText) then
  begin
    if (FJanuaGoogleGeoCoding.Address <> FLocationEdit.Text) and (self.FLocationEdit.Text <> FOldLocationSearch) then
    begin
      FJanuaGoogleGeoCoding.Address := FLocationEdit.Text;
      if FJanuaGoogleGeoCoding.GetSuggestions then
      begin
        if not Assigned(FListBox) then
        begin
          FListBox := TListBox.Create(self);
          self.FListBox.OnItemClick := ListBoxItemClick;
          FListBox.Parent := self.Parent;
        end;
        FListBox.Parent := self.FLocationEdit.Parent;
        self.FListBox.Width := self.FLocationEdit.Width - 4;
        FListBox.Position.X := self.FLocationEdit.Position.X + 4;
        FListBox.Position.Y := self.FLocationEdit.Position.Y + FLocationEdit.Height + 2;
        FListBox.Height := 300;
        FListBox.Items.Assign(FJanuaGoogleGeoCoding.AddressText);
        FListBox.Visible := True;
      end
      else
      begin
        if Assigned(FListBox) then
          self.FListBox.Visible := False;
      end;
    end;
  end
  else
  begin
    if Assigned(FListBox) then
      self.FListBox.Visible := (FLocationEdit.Text <> self.GetLocationText);
  end;

  if Assigned(FListBox) then
  begin
    if self.FListBox.Visible then
    begin
      FListBox.BringToFront
    end
    else
    begin
      FListBox.DisposeOf;
      FListBox := nil;
    end;
  end;

  FOldLocationSearch := self.FLocationEdit.Text;
end;

procedure TJanuaFMXGoogleGeoCoding.SetJanuaGoogleGeoCoding(const Value: TJanuaGoogleGeoCoding);
begin
  FJanuaGoogleGeoCoding := Value;
end;

procedure TJanuaFMXGoogleGeoCoding.SetLocationEdit(const Value: TEdit);
begin
  if ((Value = nil) or (Value <> self.FLocationEdit)) and (self.FLocationEdit <> nil) then
  begin
    self.FLocationEdit.OnKeyDown := nil;
  end;

  FLocationEdit := Value;
  if Assigned(self.FLocationEdit) then
  begin
    self.FLocationEdit.OnKeyDown := LocationEditKeyDown;
    self.FLocationEdit.OnTyping := LocationEditTyping;
  end;
end;

procedure TJanuaFMXGoogleGeoCoding.SetOnLocationSelect(const Value: TNotifyEvent);
begin
  FOnLocationSelect := Value;
end;

procedure TJanuaFMXGoogleGeoCoding.SetOnLocationStartSearch(const Value: TNotifyEvent);
begin
  FOnLocationStartSearch := Value;
end;

procedure TJanuaFMXGoogleGeoCoding.SetParent(const Value: TFMXObject);
begin
  FParent := Value;
end;

end.
