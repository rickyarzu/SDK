unit UGTaskDemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, CloudBase, CloudBaseWin,
  CloudCustomGoogle, CloudGoogleWin, StdCtrls, CloudCustomGTasks, CloudGTasks,
  ComCtrls;

type
  TForm98 = class(TForm)
    AdvGTasks1: TAdvGTasks;
    btnConnect: TButton;
    lstTaskList: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    btnAddTask: TButton;
    btnSaveTask: TButton;
    btnAddList: TButton;
    btnSaveList: TButton;
    btnRemoveTaskList: TButton;
    lstvTaskLists: TListView;
    btnNextPage: TButton;
    btnNextPageTasks: TButton;
    btnAddChildTask: TButton;
    btnRemoveTask: TButton;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblLastUpdated: TLabel;
    lblTaskListId: TLabel;
    GroupBox2: TGroupBox;
    edTitle: TEdit;
    dtDue: TDateTimePicker;
    cbCompleted: TCheckBox;
    Label8: TLabel;
    Label9: TLabel;
    edListTitle: TEdit;
    Label10: TLabel;
    lblTaskId: TLabel;
    btnDisconnect: TButton;
    Label3: TLabel;
    MemoNotes: TMemo;
    procedure btnConnectClick(Sender: TObject);
    procedure AdvGTasks1ReceivedAccessToken(Sender: TObject);
    procedure btnAddTaskClick(Sender: TObject);
    procedure lstTaskListClick(Sender: TObject);
    procedure lstTasksClick(Sender: TObject);
    procedure btnSaveTaskClick(Sender: TObject);
    procedure btnRemoveTaskListClick(Sender: TObject);
    procedure btnAddListClick(Sender: TObject);
    procedure btnSaveListClick(Sender: TObject);
    procedure btnNextPageClick(Sender: TObject);
    procedure btnNextPageTasksClick(Sender: TObject);
    procedure lstvTaskListsSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure btnAddChildTaskClick(Sender: TObject);
    procedure btnRemoveTaskClick(Sender: TObject);
    procedure btnDisconnectClick(Sender: TObject);
  private
    procedure SaveTask;
    procedure RemoveTask;
    procedure AddTask( parent : string = '' );
    procedure GetTasks;
    procedure AddTaskList;
    procedure SaveTaskList;
    procedure RemoveTaskList;
    procedure ClearListFields;
    procedure ClearTaskFields;
    procedure GetNextPage;
    procedure GetTasksList;
    procedure DisableTaskListsElements;
    procedure EnableTaskListsElements;
    procedure DisableTasksElements;
    procedure EnableTasksElements;
    procedure GetNextTasksPage;
    procedure ShowTasks(item : TGTaskListItem);
    procedure AddChildTask;
    { Private declarations }
  public
    { Public declarations }
    procedure GetTaskLists;
  end;

var
  Form98: TForm98;

implementation

{$R *.dfm}

{$I APPIDS.INC}


// EVENTS
procedure TForm98.AdvGTasks1ReceivedAccessToken(Sender: TObject);
begin
  //lstTaskList.Items.Add('got token');
  AdvGTasks1.SaveTokens;

  btnDisconnect.Enabled := true;
  btnConnect.Enabled := false;
  //AdvGTasks1.GetTaskListItems
  GetTaskLists;
end;

procedure TForm98.btnAddChildTaskClick(Sender: TObject);
begin
 AddChildTask();
end;

procedure TForm98.btnAddListClick(Sender: TObject);
begin
  AddTaskList;
end;

procedure TForm98.btnNextPageClick(Sender: TObject);
begin
  GetNextPage;
end;

procedure TForm98.btnNextPageTasksClick(Sender: TObject);
begin
  GetNextTasksPage();
end;

procedure TForm98.btnRemoveTaskClick(Sender: TObject);
var
  answer: integer;
begin
  answer := MessageDlg('Are you sure you want to delete the selected Task?', mtConfirmation, mbOKCancel, 0);
  if answer = mrOk then
    RemoveTask;
end;

procedure TForm98.btnSaveListClick(Sender: TObject);
begin
  SaveTaskList;
end;

procedure TForm98.btnConnectClick(Sender: TObject);
var
  acc: boolean;

begin
  AdvGTasks1.App.Key := GAppkey;
  AdvGTasks1.App.Secret := GAppSecret;
  //AdvGTasks1.App.CallBackURL := '';

  AdvGTasks1.LoadTokens;

  acc := AdvGTasks1.TestTokens;

  if not acc then
  begin
    AdvGTasks1.RefreshAccess;
    acc := AdvGTasks1.TestTokens;
  end;

  if acc then
  begin
    btnDisconnect.Enabled := true;
    btnConnect.Enabled := false;
    // Visual Stuff
    DisableTasksElements();
    ClearTaskFields();
    lstvTaskLists.Items.Clear;

    // Get the list
    GetTaskLists();

    // More visual stuff...
    btnRemoveTaskList.Enabled := false;
    btnSaveList.Enabled := false;
  end
  else
    AdvGTasks1.DoAuth;
end;

procedure TForm98.btnAddTaskClick(Sender: TObject);
begin
  AddTask;
end;

procedure TForm98.btnSaveTaskClick(Sender: TObject);
begin
  SaveTask;
end;

procedure TForm98.btnDisconnectClick(Sender: TObject);
begin
  AdvGTasks1.Logout;
  AdvGTasks1.ClearTokens;

  lstTaskList.Clear;
  lstvTaskLists.Clear;
  DisableTaskListsElements;
  DisableTasksElements;
  btnConnect.Enabled := true;
  btnDisconnect.Enabled := false;
end;

procedure TForm98.btnRemoveTaskListClick(Sender: TObject);
var
  answer: integer;
begin
  answer := MessageDlg('Are you sure you want to delete the selected Task List?', mtConfirmation, mbOKCancel, 0);
  if answer = mrOk then
    RemoveTaskList;
end;

procedure TForm98.lstTaskListClick(Sender: TObject);
begin
  GetTasks;
end;

procedure TForm98.lstTasksClick(Sender: TObject);
begin
  GetTasksList;
end;

procedure TForm98.lstvTaskListsSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  GetTasksList;
end;


// EVENT METHODS
procedure TForm98.AddChildTask();
var
  parentId : string;
begin
  parentId := lblTaskId.Caption;
  AddTask(parentId);
end;

procedure TForm98.AddTask( parent : string = '' );
var
  TaskListItem : TGTaskListItem;
  TaskListIndex: integer;
  TaskItem : TGTaskItem;
  Completed : string;
begin
  // Get all the stuff
  TaskListIndex := lstTaskList.ItemIndex;

  if (TaskListIndex >= 0)  then
  begin
    TaskListItem := TGTaskListItem(lstTaskList.Items.Objects[TaskListIndex]);

    // Set all the stuff
    TaskItem := TGTaskItem(TaskListItem.TaskItems.Add);
    TaskItem.Title := edTitle.Text;
    TaskItem.Due := dtDue.DateTime;
    TaskItem.Parent := parent;

    if cbCompleted.Checked then
    begin
      TaskItem.Status := 'completed';
      Completed := 'Yes';
    end
    else
    begin
      TaskItem.Status := 'needsAction';
      Completed := 'No';
    end;

    TaskItem.Notes := MemoNotes.Text;

    // Sent insert to api
    TaskListItem.AddTaskToList(TaskItem);

    TaskListItem.GetTaskItems;

    ShowTasks(TaskListItem);

    // Select the added item
    lstvTaskLists.Items[0].MakeVisible(true);
    lstvTaskLists.SetFocus();
    lstvTaskLists.ItemIndex := 0;
  end;


end;

procedure TForm98.SaveTask;
var
  TaskListItem : TGTaskListItem;
  TaskListIndex: integer;
  TaskItem : TGTaskItem;
  TaskIndex: integer;
  Completed : string;
begin
  TaskListIndex := lstTaskList.ItemIndex;
  TaskIndex := lstvTaskLists.ItemIndex;
  TaskListItem := TGTaskListItem(lstTaskList.Items.Objects[TaskListIndex]);

  if TaskIndex >= 0 then
  begin
    TaskItem := TGTaskItem(lstvTaskLists.Items[TaskIndex].Data);

    // Set the values
    TaskItem.Title := edTitle.Text;
    edTitle.SetFocus();
    TaskItem.Due := dtDue.DateTime;

    if cbCompleted.Checked then
    begin
      TaskItem.Status := 'completed';
      Completed := 'Yes';
    end
    else
    begin
      TaskItem.Status := 'needsAction';
      Completed := 'No';
    end;

    if dtDue.Checked = false then
    begin
      TaskItem.Due := Date;
    end;

    TaskItem.Notes := MemoNotes.Text;

    TaskListItem.UpdateTask(TaskItem);

    // Add the task to the list

    // ListView
    lstvTaskLists.Items[TaskIndex].Caption := TaskItem.Title;
    lstvTaskLists.Items[TaskIndex].SubItems[0] := DateToStr(TaskItem.Due);
    lstvTaskLists.Items[TaskIndex].SubItems[1] := Completed;
    lstvTaskLists.Items[TaskIndex].Data := TaskItem;
  end;
end;

procedure TForm98.RemoveTask;
var
  TaskListItem : TGTaskListItem;
  TaskListIndex: integer;
  TaskItem : TGTaskItem;
  TaskIndex: integer;
begin
  TaskListIndex := lstTaskList.ItemIndex;
  TaskIndex := lstvTaskLists.ItemIndex;

  if TaskIndex >= 0 then
  begin
    // Get the items
    TaskListItem := TGTaskListItem(lstTaskList.Items.Objects[TaskListIndex]);
    TaskItem := TGTaskItem(lstvTaskLists.Items[TaskIndex].Data);

    // Sent delete to api
    TaskListItem.DeleteTask(TaskItem);

    // remove from listview
    lstvTaskLists.Items[TaskIndex].Delete;


    // Go to previous selected item
    if (TaskIndex - 1 ) >= 0 then
    begin
      lstvTaskLists.ItemIndex := (TaskIndex -1 );

      // Scroll into view
      lstvTaskLists.Items[(TaskIndex -1 )].MakeVisible(true);
    end
    else
    begin
    ClearTaskFields();
    btnRemoveTask.Enabled := false;
    btnSaveTask.Enabled := false;
    end;
  end;
end;

procedure TForm98.AddTaskList;
var
  TaskListItem : TGTaskListItem;
begin
  // Sent insert to api
  TaskListItem := AdvGTasks1.AddTaskList(edListTitle.Text);

  // Add listbox item
  lstTaskList.Items.AddObject(TaskListItem.Title, TaskListItem);

  lstTaskList.ItemIndex := lstTaskList.Items.Count - 1;
  lstTaskList.OnClick(Self);

  edListTitle.SetFocus();
end;

procedure TForm98.SaveTaskList;
var
  TaskListItem : TGTaskListItem;
  TaskListIndex: integer;
begin
  // Sent insert to api
  TaskListIndex := lstTaskList.ItemIndex;

  if TaskListIndex >= 0 then
  begin
    TaskListItem := TGTaskListItem(lstTaskList.Items.Objects[TaskListIndex]);
    TaskListItem.Title := edListTitle.Text;

    AdvGTasks1.UpdateTaskList(TaskListItem);

    // Update listbox item
    lstTaskList.Items[TaskListIndex] := edListTitle.Text;

    // Visuals
    lstTaskList.ItemIndex := TaskListIndex;
    lstTaskList.OnClick(Self);
    edListTitle.SetFocus();
  end
  else
  begin
    ClearListFields();
  end;
end;

procedure TForm98.RemoveTaskList;
var
  TaskListItem : TGTaskListItem;
  TaskListIndex: integer;
begin

  // Get Index & Build Object
  TaskListIndex := lstTaskList.ItemIndex;
  TaskListItem := TGTaskListItem(lstTaskList.Items.Objects[TaskListIndex]);

  // Delete
  AdvGTasks1.DeleteTaskList(TaskListItem);

  //Remove from list
  lstTaskList.Items.Delete(TaskListIndex);

  // Select another
  if (TaskListIndex -1) >= 0  then
  begin
    lstTaskList.ItemIndex := (TaskListIndex -1);
    lstTaskList.OnClick(Self)
  end;

end;

procedure TForm98.GetTaskLists;
var
  List: TObject;
  Name : string;
begin
  lstTaskList.Items.Clear;
  ClearTaskFields;

  AdvGTasks1.GetTaskListItems;
  for List in AdvGTasks1.TaskLists do
  begin
    Name := 'No name given...';
    if TGTaskListItem(List).Title <> '' then
      begin
        Name := TGTaskListItem(List).Title;
      end;

    // listbox
    lstTaskList.AddItem(Name, List);
  end;

  btnNextPage.Enabled := AdvGTasks1.HasNextPage;
end;

procedure TForm98.GetNextPage;
var
  List: TObject;
  Name : string;
  index: integer;
begin
  // Get the index
  index := lstTaskList.ItemIndex;

  // Fill it
  lstTaskList.Clear;
  AdvGTasks1.GetNextTaskListItems();

  // Show it
  for List in AdvGTasks1.TaskLists do
  begin
    Name := 'No name given...';
    if TGTaskListItem(List).Title <> '' then
      begin
        Name := TGTaskListItem(List).Title;
      end;

    lstTaskList.AddItem(Name, List);
  end;

  // Make button visible if there's a next page
  btnNextPage.Enabled := AdvGTasks1.HasNextPage;

  // Select same item
  if index >= 0  then
  begin
    lstTaskList.ItemIndex := index;
    lstTaskList.OnClick(Self)
  end;

end;

procedure TForm98.GetNextTasksPage();
var
  Id : string;
  listIndex, taskIndex: integer;
  TaskListItem : TGTaskListItem;
begin
  // Get some stuff
  listIndex := lstTaskList.ItemIndex;
  taskIndex := lstvTaskLists.ItemIndex;
  TaskListItem := TGTaskListItem(lstTaskList.Items.Objects[listIndex]);
  Id := TaskListItem.Id;

  lstvTaskLists.Items.BeginUpdate;
  lstvTaskLists.Items.Clear;

  TaskListItem.GetNextTaskItems;

  // Fill the task list
  ShowTasks(TaskListItem);

  lstvTaskLists.Items.EndUpdate;

  // Visuals
  if (taskindex >= 0) then
  begin
    lstvTaskLists.Items[taskIndex].MakeVisible(true);
    lstvTaskLists.Items[taskIndex].Selected := true;
  end;
end;

procedure TForm98.GetTasks;
var
  item: TGTaskListItem;
  selitem: integer;
begin
  // Visual Stuff...
  ClearTaskFields();
  EnableTaskListsElements();
  EnableTasksElements();

  // Get the list item
  selitem := lstTaskList.ItemIndex;

  if selitem >= 0 then
  begin
    btnRemoveTask.Enabled := false;
    btnSaveTask.Enabled := false;

    // Clear all previous tasks in the list
    lstvTaskLists.Items.Clear;

    if selitem >= 0 then
    begin
      item := TGTaskListItem(lstTaskList.Items.Objects[selitem]);

      // Set the list detail info
      edListTitle.Text := item.Title;
      lblTaskListId.Caption :=  item.Id;
      lblLastUpdated.Caption := DateTimeToStr(item.Updated);

      // Get all tasks
      item.GetTaskItems;

      // Fill the task list
      ShowTasks(item);
    end;

    // Visuals
    edListTitle.SetFocus();
  end
  else
  begin
    ClearListFields();
    ClearTaskFields();
  end;
end;

procedure TForm98.ShowTasks(item : TGTaskListItem);
var
  TaskItem: TObject;
  Completed, Child : string;
  Itm: TListItem;
  Name : string;
begin
  // First remove all items
  lstvTaskLists.Items.Clear;

  for TaskItem in item.TaskItems do
    begin
      // In case we have an empty name
      Name := 'No Taskname given';

      if TGTaskItem(TaskItem).Title <> '' then
      begin
        // Fill the name
        Name := TGTaskItem(TaskItem).Title;
      end;

      if TGTaskItem(TaskItem).Status = 'completed' then
      begin
        Completed := 'Yes';
      end
      else
      begin
        Completed := 'No';
      end;

      if TGTaskItem(TaskItem).Parent = '' then
      begin
        Child := 'Yes';
      end
      else
      begin
        Child := 'No';
      end;

      // ListView
      Itm := lstvTaskLists.Items.Add;
      Itm.Caption := Name;
      Itm.SubItems.Add(DateTimeToStr(TGTaskItem(TaskItem).Due));
      Itm.SubItems.Add(Completed);
      Itm.SubItems.Add(Child);
      Itm.Data := TGTaskItem(TaskItem);

    end;

  // Make button visible if there's a next page
  if item.HasNextPage then
  begin
    btnNextPageTasks.Enabled := true;
  end
  else
  begin
    btnNextPageTasks.Enabled := false;
  end;
end;

procedure TForm98.GetTasksList;
var
  task: TGTaskItem;
  selitem: integer;
  myYear, myMonth, myDay : Word;
begin
  // Visual Stuff...
  EnableTasksElements();
  btnAddChildTask.Enabled := true;

  // Get the selected task object
  selitem := lstvTaskLists.ItemIndex;

  if selitem >= 0 then
  begin
    task := TGTaskItem(lstvTaskLists.Items[selitem].Data);

    if task <> nil then
    begin
      // Set the task details
      edTitle.SetFocus();
      lblTaskId.Caption := task.Id;
      edTitle.Text := task.Title;

      DecodeDate(task.Due, myYear, myMonth, myDay);
      // 1970 = Default sql - no known - date
      if myYear > 1970 then
      begin
        dtDue.DateTime := task.Due;
        dtDue.Checked := true;
      end
      else
        dtDue.Checked := false;

      if task.Status = 'completed' then
      begin
        cbCompleted.Checked := true;
      end
      else
        cbCompleted.Checked := false;
     end;

     MemoNotes.Text := task.Notes;
  end
  else
  begin
    ClearTaskFields();
  end;
end;

procedure TForm98.ClearTaskFields;
begin
  edTitle.Text := EmptyStr;
  dtDue.Checked := false;
  dtDue.DateTime:= Date;
  cbCompleted.Checked := false;
  lblTaskId.Caption := EmptyStr;
end;

procedure TForm98.ClearListFields;
begin
  edListTitle.Clear;
  lblLastUpdated.Caption := EmptyStr;
  lblTaskListId.Caption := EmptyStr;
end;

procedure TForm98.DisableTaskListsElements;
begin
  edListTitle.Enabled := false;
  btnAddList.Enabled := false;
  btnSaveList.Enabled := false;
  btnNextPage.Enabled := false;
  btnRemoveTaskList.Enabled := false; // remove btn
end;

procedure TForm98.EnableTaskListsElements;
begin
  edListTitle.Enabled := true;
  btnAddList.Enabled := true;
  btnSaveList.Enabled := true;
  btnRemoveTaskList.Enabled := true; // remove btn
end;

procedure TForm98.DisableTasksElements;
begin
  edTitle.Enabled := false;
  dtDue.Enabled := false;
  cbCompleted.Enabled := false;
  btnAddTask.Enabled := false; // add btn
  btnSaveTask.Enabled := false; // save btn
  btnRemoveTask.Enabled := false; // remove btn
  btnAddChildTask.Enabled := false;
end;

procedure TForm98.EnableTasksElements;
begin
  edTitle.Enabled := true;
  dtDue.Enabled := true;
  cbCompleted.Enabled := true;
  btnAddTask.Enabled := true; // add btn
  btnSaveTask.Enabled := true; // save btn
  btnRemoveTask.Enabled := true; // remove btn
end;










end.
