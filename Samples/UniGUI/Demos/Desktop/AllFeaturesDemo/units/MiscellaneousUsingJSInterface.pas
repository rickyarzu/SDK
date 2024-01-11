// Using JSInterface = Miscellaneous
unit MiscellaneousUsingJSInterface;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, uniGUIJSInterface,
  uniGUIClasses, uniGUIFrame, uniPanel, uniButton, uniGUIBaseClasses;

type
  TUniMiscellaneousUsingJSInterface = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniPanel1: TUniPanel;
    UniButton3: TUniButton;
    UniPanel2: TUniPanel;
    UniButton4: TUniButton;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniMiscellaneousUsingJSInterface.UniButton4Click(Sender: TObject);
begin
  with UniButton2 as IUniJSInterface do
    JSCall('setDisabled', [False]);
  // JS equivalent =   (jscmp).setDisabled(false);

  with UniButton1 as IUniJSInterface do
    JSCall('hide', []);
  // JS equivalent =   (jscmp).hide();

end;

procedure TUniMiscellaneousUsingJSInterface.UniButton5Click(Sender: TObject);
begin
  with FormRegion.JSInterface do // here we use the JSInterface which belongs to WebForm of TUniForm
  begin
    JSCallGlobal('alert', ['Message']);
    // alert('Message')
  end;
end;

procedure TUniMiscellaneousUsingJSInterface.UniFrameCreate(Sender: TObject);
var
  IJS : IUniJSInterface;
  JArr : array of TJSVariable; // TJSVariable ia an alias for Delphi TVarRec
  I : Integer;
begin
  // JSConfig
  // JS equivalent =   {disabled: true}
  IJS := UniButton1.JSInterface;
  IJS.JSConfig('disabled', [True]);

  // alternate syntax
  with UniButton2 as IUniJSInterface do
    JSConfig('disabled', [True]);

  // alternate syntax
  with UniButton6.JSInterface do
    JSConfig('disabled', [True]);
  // JSConfig

  // JSConfigObject
  // JS equivalent =  bodyStyle: {backgroundColor: '#7F7', borderRadius: '7px'}
  with UniPanel1 as IUniJSInterface do
  begin
    JSConfigObject('bodyStyle', 'backgroundColor', ['#7F7']);
    JSConfigObject('bodyStyle', 'borderRadius', ['7px']);
  end;


  with UniPanel2 as IUniJSInterface do
  begin
    // create a "const" array with 10 elements
    SetLength(JArr, 10);
    for I := 0 to 9 do
    begin
      // array element is an object
      JArr[I].VType := vtObject;
      // assign a new object to array element
      JArr[I].VObject := JSObject(['f1', I + 1]);
    end;

    JSCallGlobal('Ext.create', ['Ext.data.Store',
      JSObject([
        'fields', JSArray(['f1']),
        'data', JSArray(JArr)
      ])],
      'var xStore1' // assign the result to local var "xStore1"
    );
    // var xStore1 = Ext.create("Ext.data.Store",
    //                          {
    //                            fields:["f1"],
    //                            data:[{f1:1},{f1:2},{f1:3},{f1:4},{f1:5},{f1:6},{f1:7},{f1:8},{f1:9},{f1:10}]
    //                          }
    //                        );

    JSConfigArray('items', [
      JSObject(['xtype', 'button', 'width', '125', 'text', 'Button']),
      JSObject(['xtype', 'combo', 'width', '175', 'y', 40,
        'fieldLabel', 'Choose Item',
        'displayField', 'f1',
        'valueField', 'f1',
        'queryMode', 'local',
        'store', JSStatement('xStore1'),
        'value', 1
        ]),
      JSObject(['xtype', 'textfield', 'width', '75', 'y', 80, 'value', 'Edit'])
    ]);
    // items:[
    //        {
    //         xtype:"button",
    //         width:"125",
    //         text:"Button"
    //        },
    //       {
    //        xtype:"combo",
    //        width:"175",
    //        y:40,
    //        fieldLabel:"Choose Item",
    //        displayField:"f1",
    //        valueField:"f1",
    //        queryMode:"local",
    //        store:xStore1,value:1
    //       },{
    //        xtype:"textfield",
    //        width:"75",
    //        y:80,
    //        value:"Edit"
    //       }
    //      ]

    UniSession.RelocateVar('var xStore1', UniPanel2.JSControl); // make sure in JS output "xStore1" is declared before "UniPanel2"
                                                                // i.e. xStore1 declaration will be moved before UniPanel2

  end;
end;

initialization
  RegisterClass(TUniMiscellaneousUsingJSInterface);

end.
