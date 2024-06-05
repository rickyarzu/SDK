unit UTrelloDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, CloudBase, CloudBaseWin, CloudCustomTrello, CloudTrello,
  StdCtrls, CheckLst, ComCtrls, ExtCtrls, ShellAPI, Tabs, Buttons;

type
  TForm9 = class(TForm)
    Panel1: TPanel;
    btnConnect: TButton;
    AdvTrello1: TAdvTrello;
    lblUsername: TLabel;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Panel3: TPanel;
    lvCards: TListView;
    lvMembers: TListView;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edDescription: TEdit;
    dtDue: TDateTimePicker;
    Label5: TLabel;
    meComment: TMemo;
    btnComment: TButton;
    ProgressBar1: TProgressBar;
    lvActivity: TListView;
    Label6: TLabel;
    sbLabels: TScrollBox;
    lstChecklist: TCheckListBox;
    btnUpdatecomment: TButton;
    btnClearComment: TButton;
    EdChecklist: TEdit;
    btnAddChecklist: TButton;
    btnAddCheckItem: TButton;
    btnUpdateItem: TButton;
    PopupMenu1: TPopupMenu;
    EditName1: TMenuItem;
    RemoveLabel1: TMenuItem;
    Label7: TLabel;
    lvAttachments: TListView;
    PopupMenu2: TPopupMenu;
    FromFile1: TMenuItem;
    FromURL1: TMenuItem;
    OpenDialog1: TOpenDialog;
    PopupMenu3: TPopupMenu;
    Iamsure1: TMenuItem;
    Nohavingsecondthoughts1: TMenuItem;
    lblMsg: TLabel;
    ttBoards: TTabSet;
    ttLists: TTabSet;
    LabelPopup: TPopupMenu;
    btnCloseCard: TSpeedButton;
    btnAddList: TSpeedButton;
    btnUpdateDescription: TSpeedButton;
    btnDeleteComment: TSpeedButton;
    btnDeleteAttachment: TSpeedButton;
    btnCloseBoard: TSpeedButton;
    btnCloseList: TSpeedButton;
    btnAddCard: TSpeedButton;
    btnAddMemberToBoard: TSpeedButton;
    btnAddAttachment: TSpeedButton;
    btnNewBoard: TSpeedButton;
    btnOpenAttachment: TSpeedButton;
    Button1: TButton;
    procedure btnConnectClick(Sender: TObject);
    procedure AdvTrello1ReceivedAccessToken(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pcListsChange(Sender: TObject);
    procedure btnAddListClick(Sender: TObject);
    procedure btnAddCardClick(Sender: TObject);
    procedure btnNewBoardClick(Sender: TObject);
    procedure btnCloseBoardClick(Sender: TObject);
    procedure btnCloseListClick(Sender: TObject);
    procedure dClick(Sender: TObject);
    procedure btnCommentClick(Sender: TObject);
    procedure btnDeleteCommentClick(Sender: TObject);
    procedure btnClearCommentClick(Sender: TObject);
    procedure lvActivityChange(Sender: TObject; Item: TListItem; Change: TItemChange);
    procedure btnUpdatecommentClick(Sender: TObject);
    procedure btnUpdateDescriptionClick(Sender: TObject);
    procedure dtDueChange(Sender: TObject);
    procedure btnAddChecklistClick(Sender: TObject);
    procedure btnAddCheckItemClick(Sender: TObject);
    procedure btnUpdateItemClick(Sender: TObject);
    procedure lstChecklistClick(Sender: TObject);
    procedure btnAddMemberToBoardClick(Sender: TObject);
    procedure Label2MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure LabelsLeftClick(Sender: TObject);
    procedure EditName1Click(Sender: TObject);
    procedure RemoveLabel1Click(Sender: TObject);
    procedure color1Click(Sender: TObject);
    procedure lvAttachmentsClick(Sender: TObject);
    procedure FromFile1Click(Sender: TObject);
    procedure FromURL1Click(Sender: TObject);
    procedure btnAddAttachmentClick(Sender: TObject);
    procedure btnOpenAttachmentClick(Sender: TObject);
    procedure btnDeleteAttachmentClick(Sender: TObject);
    procedure Iamsure1Click(Sender: TObject);
    procedure ttBoardsClick(Sender: TObject);
    procedure ttListsClick(Sender: TObject);
    procedure lvCardsChange(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure sbLabelsContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure btnCloseCardClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    function IsCardLabelUsed(BLabel: TTrelloBoardLabelNames): Boolean;
    { Private declarations }
  public
    { Public declarations }
    procedure DisableControls;
    procedure EnableControls;
    procedure ShowAll;
    procedure ClearDetails;
    procedure AddBoardListItem(AList: TTrelloList);
    procedure AddCardListItem(ACard: TTrelloCard);
    procedure AddActionListItem(AAction: TTrelloCardAction);
    procedure AddMemberListItem(AMember: TTrelloCardMember);
    procedure AddCardAttachmentItem(AAttachment: TTrelloCardAttachment);
    procedure ShowBoards;
    procedure ShowLists;
    procedure ShowCards;
    procedure ShowCardDetails;
    function LabelToColor(AColorName: string): TColor;
    function GetAttachment: TTrelloCardAttachment;
    function GetBoard: TTrelloBoard;
    function GetList: TTrelloList;
    function GetCard: TTrelloCard;
    function GetCardAction: TTrelloCardAction;
    function GetChecklist: TTrelloCardCheckList;
    function GetChecklistItem(ACheckList: TTrelloCardCheckList): TTrelloCardCheckListItem;
    function GetCardlabel: TTrelloCardLabel;
    function GetBoardlabel: TTrelloBoardLabelNames;
    function GetAttachmentID: string;
    function GetBoardID: string;
    function GetListID: string;
    function GetCardID: string;
    function GetActionID: string;
    function GetChecklistID: string;
  end;

var
  Form9: TForm9;
  FBoardIds: TStringList;
  FListIds: TStringList;
  FCardIds: TStringList;
  FActionIds: TStringList;
  FChecklistIds: TStringList;
  FAttachmentIds: TStringList;
  LabelIndex: Integer;
  Running: Boolean = False;

implementation

uses
  Types;

{$R *.dfm}

// PLEASE USE A VALID INCLUDE FILE THAT CONTAINS THE APPLICATION KEY & SECRET
// FOR THE CLOUD STORAGE SERVICES YOU WANT TO USE
// STRUCTURE OF THIS .INC FILE SHOULD BE
//
// const
//  GAppkey = 'xxxxxxxxx';
//  GAppSecret = 'yyyyyyyy';

{$I APPIDS.INC}

procedure TForm9.AddActionListItem(AAction: TTrelloCardAction);
var
  Li: TListItem;
begin
  Li := lvActivity.Items.Add;
  Li.Caption := FormatDateTime('d mmm hh:mm:ss', AAction.Date);
  Li.SubItems.Add(AAction.Text);

  FActionIds.Add(AAction.ID);
end;

procedure TForm9.AddBoardListItem(AList: TTrelloList);
begin
  ttLists.Tabs.Add(AList.Name);

  FListIds.Add(AList.ID);
end;

procedure TForm9.AddCardAttachmentItem(AAttachment: TTrelloCardAttachment);
var
  Li: TListItem;
begin
  Li := lvAttachments.Items.Add;
  Li.Caption := AAttachment.Name;
  Li.SubItems.Add(AAttachment.Url);

  FAttachmentIds.Add(AAttachment.ID);
end;

procedure TForm9.AddCardListItem(ACard: TTrelloCard);
var
  Li: TListItem;
  Due: string;
begin
  if not ACard.Closed then
  begin
    Li := lvCards.Items.Add;
    Li.Caption := ACard.Name;
    Due := DateTimeToStr(ACard.Due);
    if DateTimeToStr(ACard.Due) <> '30/12/1899' then
      Li.SubItems.Add(FormatDateTime('mmm d', ACard.Due));
    FCardIds.Add(ACard.ID);
  end;
end;

procedure TForm9.AddMemberListItem(AMember: TTrelloCardMember);
var
  Li: TListItem;
begin
  Li := lvMembers.Items.Add;
  Li.Caption := AMember.Name + '(' + AMember.Username + ')';
end;

procedure TForm9.AdvTrello1ReceivedAccessToken(Sender: TObject);
begin
  AdvTrello1.SaveTokens;
  ShowAll;
end;

procedure TForm9.btnAddAttachmentClick(Sender: TObject);
var
  P: TPoint;
begin
  P := btnAddAttachment.ClientToScreen(Point(0, btnAddAttachment.Height));
  PopupMenu2.Popup(P.X, P.Y);
end;

procedure TForm9.btnAddCardClick(Sender: TObject);
var
  Name, CardId: string;
  List: TTrelloList;
begin
  Name := InputBox('Add New Card', 'Card Name: ', '');

  DisableControls;

  List := GetList;
  try
    CardId := AdvTrello1.AddCard(List, Name);
  finally
    if CardId <> '' then
      ShowCards;

    EnableControls;
  end;
end;

procedure TForm9.btnAddListClick(Sender: TObject);
var
  Name, ListID: string;
  Board: TTrelloBoard;
begin
  Name := InputBox('Add New List', 'List Name: ', '');

  DisableControls;
  try
    Board := GetBoard;
    ListId := AdvTrello1.AddList(Board, Name);
  finally
    if ListId <> '' then
      ShowLists;

    EnableControls;
  end;
end;

procedure TForm9.btnAddMemberToBoardClick(Sender: TObject);
var
  Username: string;
  Succeed: Boolean;
begin           
  Username := InputBox('Add member to card', 'Username: ', '');

  DisableControls;


  try
    Succeed := AdvTrello1.AddCardMember(GetBoard, GetCard, Username);
    if Succeed then
      ShowCardDetails
    else
      ShowMessage('Member not found...');
  finally
    EnableControls;
  end;
end;

procedure TForm9.btnCommentClick(Sender: TObject);
var
  Comment: string;
begin
  DisableControls;
  Comment := meComment.Text;
  try
    AdvTrello1.AddCardComment(GetCard, Comment);

    ShowCardDetails;
  finally
    EnableControls;
  end;
end;

procedure TForm9.btnConnectClick(Sender: TObject);
var
  Acc: Boolean;
begin
  DisableControls;
  Screen.Cursor := crHourGlass;

  AdvTrello1.App.Key := Appkey;
  AdvTrello1.App.Secret := AppSecret;
  AdvTrello1.Logging := True;

  if AdvTrello1.App.Key <> '' then
  begin
    AdvTrello1.PersistTokens.Location := plIniFile;
    AdvTrello1.PersistTokens.Key := '.\trello.ini';
    AdvTrello1.PersistTokens.Section := 'tokens';
    AdvTrello1.LoadTokens;

    Acc := AdvTrello1.TestTokens;

    if Acc then
    begin
      ShowAll;
      EnableControls;
    end
    else
    begin
      AdvTrello1.DoAuth;
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TForm9.btnDeleteAttachmentClick(Sender: TObject);
var
  P: TPoint;
begin
  P := btnDeleteAttachment.ClientToScreen(Point(0, btnDeleteAttachment.Height));
  PopupMenu3.Popup(P.X, P.Y);
end;

procedure TForm9.btnDeleteCommentClick(Sender: TObject);
begin
  DisableControls;
  try
    AdvTrello1.DeleteCardComment(GetCardAction);
    ShowCardDetails;
  finally
    EnableControls;
  end;
end;

procedure TForm9.btnCloseBoardClick(Sender: TObject);
begin
  DisableControls;
  try
    AdvTrello1.SetBoardClosed(GetBoard);
  finally
    ShowBoards;
    EnableControls;
  end;
end;

procedure TForm9.btnCloseCardClick(Sender: TObject);
begin
//  DisableControls;
  try
    AdvTrello1.SetCardClosed(GetCard);
  finally
    ShowBoards;
//    EnableControls;
  end;
end;

procedure TForm9.dClick(Sender: TObject);
var
  Card: TTrelloCard;
begin
  try
    Card := GetCard;
    AdvTrello1.SetCardClosed(Card);
  finally
    ShowCards;
  end;
end;

procedure TForm9.btnCloseListClick(Sender: TObject);
begin
  DisableControls;
  try
    AdvTrello1.SetListClosed(GetList);
  finally
    ShowLists;
    EnableControls;
  end;
end;

procedure TForm9.btnNewBoardClick(Sender: TObject);
var
  Name, BoardID: string;
begin
  Name := InputBox('New Board', 'Board Name: ', '');

  DisableControls;
  try
    BoardID := AdvTrello1.AddBoard(Name);
  finally
    if BoardID <> '' then
    begin
      ShowBoards;
    end;
    EnableControls;
  end;
end;

procedure TForm9.btnOpenAttachmentClick(Sender: TObject);
var
  Attachment: TTrelloCardAttachment;
begin
  Attachment := GetAttachment;
  ShellExecute(0, 'OPEN', PChar(Attachment.Url), '', '', SW_SHOWNORMAL);
end;

procedure TForm9.btnUpdatecommentClick(Sender: TObject);
var
  Comment: string;
begin
  DisableControls;

  Comment := meComment.Text;
  try
    AdvTrello1.UpdateCardComment(GetCardAction, Comment);

    ShowCardDetails;
  finally
    EnableControls;
  end;
end;

procedure TForm9.btnUpdateDescriptionClick(Sender: TObject);
var
  Desc: string;
begin
  DisableControls;
  Desc := edDescription.Text;
  try
    AdvTrello1.UpdateCardDescription(GetCard, Desc);
    ShowCardDetails;
  finally
    EnableControls;
  end;
end;

procedure TForm9.btnAddChecklistClick(Sender: TObject);
var
  Checklist: string;
begin
  DisableControls;

  try
    Checklist := EdChecklist.Text;
    AdvTrello1.AddCardChecklist(GetCard, Checklist);
    ShowCardDetails;

    lstChecklist.ItemIndex := lstChecklist.Items.Count - 1;
  finally
    EnableControls;
  end;
end;

procedure TForm9.btnAddCheckItemClick(Sender: TObject);
var
  CheckItem: string;
  Card: TTrelloCard;
  CheckList: TTrelloCardCheckList;
begin
  DisableControls;
  try
    CheckItem := EdChecklist.Text;
    Card := GetCard;
    if Card <> nil then
    begin
      CheckList := GetCheckList;
      if CheckList <> nil then
      begin
        AdvTrello1.AddCardChecklistItem(Card, CheckList, CheckItem);

        ShowCardDetails;
      end
      else
        ShowMessage('First select a checklist');
    end;
  finally
    EnableControls;
  end;
end;

procedure TForm9.btnUpdateItemClick(Sender: TObject);
var
  CIndex: Integer;
  IsCheckList: Boolean;
  Value: string;
  I: Integer;
  CheckList: TTrelloCardCheckList;
begin
  DisableControls;
  try
    Value := EdChecklist.Text;

    CIndex := lstChecklist.ItemIndex;
    if CIndex >= 0 then
    begin
      IsCheckList := lstChecklist.Header[CIndex];

      if IsCheckList then
      begin
        CheckList := GetChecklist;
        AdvTrello1.UpdateCardCheckListName(CheckList, Value);
      end
      else
      begin
        CheckList := nil;
        for I := CIndex downto 0 do
        begin
          if lstChecklist.Header[I] then
          begin
            CheckList := GetCard.GetChecklistById(FChecklistIds.Strings[I]);
            Break;
          end;
        end;

        if CheckList <> nil then
          AdvTrello1.UpdateCardCheckListItemName(GetCard, CheckList, GetChecklistItem(CheckList), Value);
      end;

      ShowCardDetails;
    end
    else
      ShowMessage('First select an item');
  finally
    EnableControls;
  end;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
  AdvTrello1.ClearTokens;
  AdvTrello1.Logout;
end;

procedure TForm9.btnClearCommentClick(Sender: TObject);
begin
  meComment.Clear;
end;

procedure TForm9.ClearDetails;
var
  I: Integer;
begin
  for I := sbLabels.ControlCount - 1 downto 0 do
  begin
    sbLabels.RemoveControl(sbLabels.Controls[I]);
  end;

  btnUpdatecomment.Enabled := False;
  btnOpenAttachment.Enabled := False;

  dtDue.Date := Date;
  dtDue.Checked := False;

  meComment.Clear;

  edDescription.Text := '';

  lvMembers.Clear;
  FActionIds.Clear;
  lvActivity.Clear;
  lstChecklist.Clear;
  lvAttachments.Clear;
end;

procedure TForm9.color1Click(Sender: TObject);
var
  Card: TTrelloCard;
  Board: TTrelloBoard;
  BLabel: TTrelloBoardLabelNames;
begin
  DisableControls;
  try
    Board := GetBoard;
    Card := GetCard;

    AdvTrello1.GetBoardLabels(Board);

    if Card <> nil then
    begin
      BLabel := Board.LabelNames.Items[(Sender as TMenuItem).Tag];

      if BLabel.ID <> '' then
      begin
        AdvTrello1.AddCardLabel(Card, BLabel);

        ShowCardDetails;
      end;
    end;
  finally
    EnableControls;
  end;
end;

procedure TForm9.DisableControls;
begin
  lblMsg.Caption := 'Working...';
  ttBoards.Enabled := False;
  btnNewBoard.Enabled := False;
  btnCloseBoard.Enabled := False;

  ttLists.Enabled := False;
  btnAddList.Enabled := False;
  btnCloseList.Enabled := False;

  lvCards.Enabled := False;
  btnAddCard.Enabled := False;
  btnCloseCard.Enabled := False;

  lvMembers.Enabled := False;
  btnAddMemberToBoard.Enabled := False;

  meComment.Enabled := False;
  btnComment.Enabled := False;
  btnUpdatecomment.Enabled := False;
  btnClearComment.Enabled := False;

  lvActivity.Enabled := False;
  btnDeleteComment.Enabled := False;

  dtDue.Enabled := False;

  edDescription.Enabled := False;
  btnUpdateDescription.Enabled := False;

  lstChecklist.Enabled := False;
  EdChecklist.Enabled := False;
  btnAddChecklist.Enabled := False;
  btnAddCheckItem.Enabled := False;
  btnUpdateItem.Enabled := False;

  lvAttachments.Enabled := False;
  btnOpenAttachment.Enabled := False;
  btnAddAttachment.Enabled := False;
  btnDeleteAttachment.Enabled := False;
end;

procedure TForm9.EnableControls;
begin
  ttBoards.Enabled := True;
  btnNewBoard.Enabled := True;
  btnCloseBoard.Enabled := True;

  ttLists.Enabled := True;
  btnAddList.Enabled := True;
  btnCloseList.Enabled := True;

  lvCards.Enabled := True;
  btnAddCard.Enabled := True;
  btnCloseCard.Enabled := True;

  lvMembers.Enabled := True;
  btnAddMemberToBoard.Enabled := True;

  meComment.Enabled := True;
  btnComment.Enabled := True;
  btnUpdatecomment.Enabled := True;
  btnClearComment.Enabled := True;

  lvActivity.Enabled := True;
  btnDeleteComment.Enabled := True;

  dtDue.Enabled := True;

  edDescription.Enabled := True;
  btnUpdateDescription.Enabled := True;

  lstChecklist.Enabled := True;
  EdChecklist.Enabled := True;
  btnAddChecklist.Enabled := True;
  btnAddCheckItem.Enabled := True;
  btnUpdateItem.Enabled := True;

  lvAttachments.Enabled := True;
  btnAddAttachment.Enabled := True;
  lblMsg.Caption := '';
end;

procedure TForm9.dtDueChange(Sender: TObject);
begin
  AdvTrello1.UpdateCardDueDate(GetCard, dtDue.DateTime);
end;

procedure TForm9.EditName1Click(Sender: TObject);
var
  LabelName: string;
  Card: TTrelloCard;
  Board: TTrelloBoard;
  Lbl: TTrelloCardLabel;
begin
  DisableControls;
  try
    Board := GetBoard;
    if Board <> nil then
    begin
      Lbl := GetCardLabel;
      LabelName := InputBox('Change the labels name', 'New Name: ', Lbl.Name);

      Card := GetCard;

      if (Card <> nil) and (Lbl.ID <> '') then
      begin
        AdvTrello1.UpdateCardLabel(Board, Card, Lbl, LabelName);

        AdvTrello1.GetBoardLabels(Board);
        AdvTrello1.GetCards(GetList);
        ShowCardDetails;
      end;
    end
    else
      ShowMessage('Select a card first');
  finally
    EnableControls;
  end;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  DisableControls;
  lblMsg.Caption := 'Not Connected';

  AdvTrello1.Scopes.Clear;
  AdvTrello1.Scopes.Add('read');
  AdvTrello1.Scopes.Add('write');
  AdvTrello1.Scopes.Add('account');

  FBoardIds := TStringList.Create;
  FListIds := TStringList.Create;
  FCardIds := TStringList.Create;
  FActionIds := TStringList.Create;
  FChecklistIds := TStringList.Create;
  FAttachmentIds := TStringList.Create;
end;


procedure TForm9.FormDestroy(Sender: TObject);
begin
  FBoardIds.Free;
  FListIds.Free;
  FCardIds.Free;
  FActionIds.Free;
  FChecklistIds.Free;
  FAttachmentIds.Free;
end;

procedure TForm9.FromFile1Click(Sender: TObject);
var
  FileName: string;
  Card: TTrelloCard;
begin
  DisableControls;
  try
    Card := GetCard;
    if Card <> nil then
    begin
      if (OpenDialog1.Execute) then
      begin
        FileName := OpenDialog1.FileName;
        AdvTrello1.AddCardAttachment(Card, FileName);

        ShowCardDetails;
      end;
    end;
  finally
    EnableControls;
  end;
end;

procedure TForm9.FromURL1Click(Sender: TObject);
var
  Url: string;
  Card: TTrelloCard;
begin
  DisableControls;
  try
    Card := GetCard;
    if Card <> nil then
    begin
      Url := InputBox('Upload url file', 'Url: ', 'http://be-delphi.com/cms/sites/default/files/sponsor/tmslogo.png');
      if Url <> '' then
      begin
        AdvTrello1.AddCardAttachmentUrl(Card, Url);
        ShowCardDetails;
      end;
    end;
  finally
    EnableControls;
  end;
end;

function TForm9.GetActionID: string;
var
  ListIndex: Integer;
begin
  Result := '';
  ListIndex := lvActivity.ItemIndex;
  if ListIndex >= 0 then
    Result := FActionIds.Strings[ListIndex];
end;

function TForm9.GetAttachment: TTrelloCardAttachment;
var
  Card: TTrelloCard;
begin
  Card := GetCard;
  Result := Card.GetAttachmentById(GetAttachmentID);
end;

function TForm9.GetAttachmentID: string;
var
  ListIndex: Integer;
begin
  ListIndex := lvAttachments.ItemIndex;
  if ListIndex >= 0 then
    Result := FAttachmentIds.Strings[ListIndex];
end;

function TForm9.GetCardAction: TTrelloCardAction;
var
  Card: TTrelloCard;
begin
  Card := GetCard;
  Result := Card.GetActionById(GetActionID);
end;

function TForm9.GetBoard: TTrelloBoard;
var
  ID: string;
begin
  ID := GetBoardID;
  Result := AdvTrello1.Member.GetBoardByID(ID);
end;

function TForm9.GetBoardID: string;
var
  ListIndex: Integer;
begin
  ListIndex := ttBoards.TabIndex;
  if ListIndex >= 0 then
    Result := FBoardIds.Strings[ListIndex];
end;

function TForm9.GetBoardlabel: TTrelloBoardLabelNames;
var
  Board: TTrelloBoard;
begin
  Board := GetBoard;
  if LabelIndex > Board.LabelNames.Count - 1 then
    Result := Board.LabelNames.Items[LabelIndex];
end;

function TForm9.GetCard: TTrelloCard;
var
  List: TTrelloList;
begin
  List := GetList;
  Result := List.GetCardById(GetCardID);
end;

function TForm9.GetCardID: string;
var
  ListIndex: Integer;
begin
  Result := '';
  ListIndex := lvCards.ItemIndex;
  if ListIndex >= 0 then
    Result := FCardIds.Strings[ListIndex];
end;

function TForm9.GetCardlabel: TTrelloCardLabel;
var
  Card: TTrelloCard;
begin
  Card := GetCard;
  Result := Card.Labels.Items[LabelIndex];
end;

function TForm9.GetChecklist: TTrelloCardCheckList;
var
  Card: TTrelloCard;
begin
  Card := GetCard;
  Result := Card.GetChecklistById(GetChecklistID);
end;

function TForm9.GetChecklistID: string;
var
  ListIndex: Integer;
begin
  ListIndex := lstChecklist.ItemIndex;
  if ListIndex >= 0 then
    Result := FChecklistIds.Strings[ListIndex];
end;

function TForm9.GetChecklistItem(AChecklist: TTrelloCardCheckList): TTrelloCardCheckListItem;
begin
  Result := ACheckList.GetChecklistItemById(GetChecklistID);
end;

function TForm9.GetList: TTrelloList;
var
  Board: TTrelloBoard;
begin
  Board := GetBoard;
  Result := Board.GetListById(GetListID);
end;

function TForm9.GetListID: string;
var
  ListIndex: Integer;
begin
  ListIndex := ttLists.TabIndex;
  Result := FListIds.Strings[ListIndex];
end;

procedure TForm9.Iamsure1Click(Sender: TObject);
var
  Card: TTrelloCard;
  Attachment: TTrelloCardAttachment;
begin
  DisableControls;
  try
    Card := GetCard;
    Attachment := GetAttachment;
    AdvTrello1.DeleteCardAttachment(Card, Attachment);

    ShowCardDetails;
  finally
    EnableControls;
  end;
end;

procedure TForm9.Label2MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    LabelsLeftClick(Sender);
end;

function TForm9.LabelToColor(AColorName: string): TColor;
begin
  AColorName := 'cl' + AColorName;

  if AColorName = 'clsky' then
    AColorName := 'clSkyBlue';
  if (AColorName = 'clnull') or (AColorName = 'cl') then
  begin
    AColorName := 'clBtnFace';
  end;
  if AColorName = 'clpink' then
    AColorName := '$00FF80FF';
  if AColorName = 'clorange' then
    AColorName := '$000080FF';

  Result := StringToColor(AColorName);
end;

procedure TForm9.lstChecklistClick(Sender: TObject);
begin
  if lstChecklist.ItemIndex >= 0 then
  begin
    EdChecklist.Text := lstChecklist.Items.Strings[lstChecklist.ItemIndex];
  end;
end;

procedure TForm9.lvActivityChange(Sender: TObject; Item: TListItem; Change: TItemChange);
var
  Action: TTrelloCardAction;
begin
  DisableControls;

  try
    if Assigned(lvActivity.Selected) then
    begin
      btnUpdatecomment.Enabled := True;

      Action := GetCardAction;
      if Assigned(Action) and (Action.ActionType = 'commentCard') then
        meComment.Text := Action.Text;
    end;
  finally
    EnableControls;
  end;
end;

procedure TForm9.lvAttachmentsClick(Sender: TObject);
begin
  btnOpenAttachment.Enabled := False;

  if Assigned(lvAttachments.Selected) then
  begin
    btnOpenAttachment.Enabled := True;
    btnDeleteAttachment.Enabled := True;
  end;
end;

procedure TForm9.lvCardsChange(Sender: TObject; Item: TListItem; Change: TItemChange);
begin
  if Assigned(lvCards.Selected) then
  begin
    AdvTrello1.GetBoardLabels(GetBoard);
    ShowCardDetails;
  end;
end;

procedure TForm9.pcListsChange(Sender: TObject);
begin
  DisableControls;
  try
    ShowCards;
  finally
    EnableControls;
  end;
end;

procedure TForm9.RemoveLabel1Click(Sender: TObject);
var 
  ID: string;
  Card: TTrelloCard;
begin
  DisableControls;
  try
    Card := GetCard;
    ID := Card.Labels.Items[LabelIndex].ID;
    AdvTrello1.DeleteCardLabel(Card, ID);

    ShowCardDetails;
  finally
    EnableControls;
  end;
end;

function TForm9.IsCardLabelUsed(BLabel: TTrelloBoardLabelNames): Boolean;
var
  I: Integer;
  Card: TTrelloCard;
  CLabel: TTrelloCardLabel;
begin
  Result := False;
  Card := GetCard;
  for I := 0 to Card.Labels.Count - 1 do
  begin
    CLabel := CArd.Labels.Items[I];
    if (CLabel.Color = BLabel.Color) and (CLabel.Name = BLabel.Name) then
      Exit(True);
  end;
end;

procedure TForm9.sbLabelsContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
var
  Bmp: TBitmap;
  Mi: TMenuItem;
  Card: TTrelloCard;
  Board: TTrelloBoard;
  BoardLabel: TTrelloBoardLabelNames;
  I: Integer;
begin

  Board := GetBoard;
  try
    if (Board <> nil) then
    begin
      Card := GetCard;
      if Card <> nil then
      begin
        LabelPopup.Items.Clear;

        Mi := TMenuItem.Create(LabelPopup);
        Mi.Caption := 'Add a label';
        Mi.Enabled := False;

        LabelPopup.Items.Add(Mi);

        Bmp := TBitmap.Create;

        for I := 0 to Board.LabelNames.Count - 1 do
        begin
          Mi := TMenuItem.Create(LabelPopup);
          BoardLabel := Board.LabelNames[I];

          bmp.Width := 16;
          bmp.Height := 16;
          bmp.Canvas.Brush.Color := LabelToColor(BoardLabel.Color);
          bmp.Canvas.FillRect(Rect(0, 0, Height, Width));
          Mi.Caption := BoardLabel.Name;
          Mi.Bitmap := bmp;
          Mi.Tag := I;
          Mi.OnClick := color1Click;
          Mi.Enabled := not IsCardLabelUsed(BoardLabel);

          LabelPopup.Items.Add(MI);
        end;
        Bmp.Free;
      end;
    end;
  finally
    EnableControls;
  end;
end;

procedure TForm9.LabelsLeftClick(Sender: TObject);
var
  P: TPoint;
  Lbl: TLabel;
begin
  if Sender is TLabel then
  begin
    Lbl := Sender as Tlabel;
    LabelIndex := Lbl.Tag;

    P := sbLabels.ClientToScreen(Point(0, sbLabels.Height));
    PopupMenu1.Popup(P.X, P.Y);
  end;
end;

procedure TForm9.ShowAll;
var
  Member: TTrelloMember;
begin

  AdvTrello1.GetMember;
  Member := AdvTrello1.Member;

  lblUsername.Caption := Member.Username;

  ShowBoards;
end;

procedure TForm9.ShowBoards;
var
  Member: TTrelloMember;
  Board: TTrelloBoard;
  I: Integer;
begin
  FListIds.Clear;
  FBoardIds.Clear;
  FCardIds.Clear;

  ttBoards.Tabs.Clear;

  AdvTrello1.GetMember;
  Member := AdvTrello1.Member;

  ttBoards.Tabs.BeginUpdate;
  for I := 0 to Member.Boards.Count - 1 do
  begin
    Board := Member.Boards[I];
    if not Board.Closed then
    begin
      ttBoards.tabs.Add(Board.Name);

      FBoardIds.Add(Board.ID);
    end;
  end;

  if (ttBoards.Tabs.Count > 0) then
  begin
    ttBoards.TabIndex := 0;
  end;
  ttBoards.Tabs.EndUpdate;
end;

procedure TForm9.ShowCardDetails;
var
  Board: TTrelloBoard;
  List: TTrelloList;
  Card: TTrelloCard;
  Action: TTrelloCardAction;
  Member: TTrelloCardMember;
  CheckList: TTrelloCardCheckList;
  Attachment: TTrelloCardAttachment;
  CheckListItem: TTrelloCardCheckListItem;
  CLabel: TTrelloCardLabel;
  L: TLabel;
  I, J, Y: Integer;
  Color: string;
begin
  DisableControls;
  ClearDetails;

  Board := AdvTrello1.Member.GetBoardByID(GetBoardID);
  if Assigned(Board) then
  begin
    List := Board.GetListById(GetListID);
    if Assigned(List) then
    begin
      Card := List.GetCardById(GetCardID);
      if Assigned(Card) then
      begin
        if Card.Due <> 0 then
          dtDue.Date := Card.Due
        else
        begin
          dtDue.Date := Date;
          dtDue.Checked := False;
        end;
        edDescription.Text := Card.Desc;

        // Actions
        for I := 0 to Card.Actions.Count - 1 do
        begin
          Action := Card.Actions[I];
          AddActionListItem(Action);
        end;
        if Card.Actions.Count > 0 then
          lvActivity.ItemIndex := 0;

        // Members
        for I := 0 to Card.Members.Count - 1 do
        begin
          Member := Card.Members[I];
          AddMemberListItem(Member);
        end;

        // Labels
        for I := sbLabels.ControlCount - 1 downto 0 do
        begin
          sbLabels.RemoveControl(sbLabels.Controls[I]);
        end;

        for I := Card.Labels.Count - 1 downto 0 do
        begin
          CLabel := Card.Labels[I];
          L := TLabel.Create(sbLabels);
          L.Caption := CLabel.Name;
          L.Font.Style := [fsBold];
          L.Font.Color := clWhite;
          L.Transparent := False;
          L.Alignment := taCenter;
          L.Layout := tlCenter;
          L.Parent := sbLabels;
          L.Align := TAlign.alLeft;

          if L.Caption = '' then
            L.Width := 50
          else
            L.Width := L.Width + 20;

          Color := CLabel.Color;

          L.Color := LabelToColor(Color);
          L.Transparent := L.Color = clBtnFace;
          L.OnMouseDown := Label2MouseDown;
          L.Tag := I;
        end;

        // Checklists
        Y := 0;
        FChecklistIds.Clear;
        for I := 0 to Card.CheckLists.Count - 1 do
        begin
          CheckList := Card.CheckLists[I];
          lstChecklist.Items.Add(CheckList.Name);
          lstChecklist.Header[Y] := True;
          Inc(Y);
          FChecklistIds.Add(CheckList.ID);

          for J := 0 to CheckList.CheckItems.Count - 1 do
          begin
            CheckListItem := CheckList.CheckItems[J];
            lstChecklist.Items.Add(CheckListItem.Name);
            lstChecklist.Checked[Y] := CheckListItem.State = 'complete';
            Inc(Y);
            FChecklistIds.Add(CheckListItem.ID);
          end;
        end;

        // Attachments
        FAttachmentIds.Clear;
        for I := 0 to Card.Attachments.Count - 1 do
        begin
          Attachment := Card.Attachments.Items[I];
          AddCardAttachmentItem(Attachment);
        end;
      end;
    end;
  end;

  EnableControls;
end;

procedure TForm9.ShowCards;
var
  LstName: string;
  Board: TTrelloBoard;
  List: TTrelloList;
  Card: TTrelloCard;
  I: Integer;
begin
  ClearDetails;

  FCardIds.Clear;
  lvCards.Clear;

  if ttLists.TabIndex >= 0 then
  begin
    Board := AdvTrello1.Member.GetBoardByID(GetBoardID);
    LstName := ttLists.Tabs.Strings[ttLists.TabIndex];
    List := Board.GetListByName(LstName);
    if Assigned(List) then
    begin
      AdvTrello1.GetCards(List);

      for I := 0 to List.Cards.Count - 1 do
      begin
        Card := List.Cards[I];
        AddCardListItem(Card);
      end;

      if lvCards.Items.Count > 0 then
        lvCards.ItemIndex := 0;
    end;
  end;

  EnableControls;
end;

procedure TForm9.ShowLists;
var
  ID: string;
  Board: TTrelloBoard;
  List: TTrelloList;
  I: Integer;
  Y: Integer;
begin
  FListIds.Clear;
  FCardIds.Clear;
  lvCards.Clear;
  ClearDetails;

  ID := GetBoardID;
  Board := AdvTrello1.Member.GetBoardByID(ID);

  // Lists
  ttLists.Tabs.BeginUpdate;
  ttLists.Tabs.Clear;

  AdvTrello1.GetLists(Board);

  Y := 0;
  for I := 0 to Board.Lists.Count - 1 do
  begin
    List := Board.Lists[I];
    if not List.Closed then
    begin
      AddBoardListItem(List);
      Inc(Y);
    end;

    if Y = 1 then
      ttLists.TabIndex := 0;
  end;

  ttLists.Tabs.EndUpdate;
end;


procedure TForm9.ttBoardsClick(Sender: TObject);
begin
  if ttBoards.TabIndex >= 0 then
  begin
    DisableControls;

    ShowLists;

    EnableControls;
  end;
end;

procedure TForm9.ttListsClick(Sender: TObject);
begin
  if ttLists.TabIndex >= 0 then
  begin
    DisableControls;
    try
      ShowCards;
    finally
      EnableControls;
    end;
  end;
end;

end.
