unit Janua.Cloud.DMVC.FileUpload;

interface

uses
  MVCFramework, MVCFramework.Commons, System.SysUtils, System.Classes, System.JSON;

type

  [MVCPath('/files')]
  TFileUploadController = class(TMVCController)
  public
  private const
    UPLOAD_FOLDER = 'uploadedfiles';
  public
    [MVCPath('/')]
    [MVCHTTPMethod([httpGET])]
    procedure Index;

    [MVCPath('/file/upload')]
    [MVCHTTPMethod([httpPOST])]
    procedure SaveFile(CTX: TWebContext);

    [MVCPath('/file/list')]
    [MVCProduces('text/html')]
    [MVCHTTPMethod([httpGET])]
    procedure FileList(CTX: TWebContext);
  end;

implementation

uses System.NetEncoding;



{ TFileUploadController }

procedure TFileUploadController.FileList(CTX: TWebContext);
begin

end;

procedure TFileUploadController.Index;
begin

end;

procedure TFileUploadController.SaveFile(CTX: TWebContext);
begin

end;

end.
