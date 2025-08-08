unit DTO.WpJson;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TWPJGetWebTokenRoot = class(TJsonDTO)
  private
    [JSONName('expires_in')]
    FExpiresIn: Integer;
    [JSONName('iat')]
    FIat: Integer;
    [JSONName('jwt_token')]
    FJwtToken: string;
    [JSONName('token_type')]
    FTokenType: string;
  published
    property ExpiresIn: Integer read FExpiresIn write FExpiresIn;
    property Iat: Integer read FIat write FIat;
    property JwtToken: string read FJwtToken write FJwtToken;
    property TokenType: string read FTokenType write FTokenType;
  end;

type
  TWPJErrorRoot = class(TJsonDTO)
  private
    [JSONName('code')]
    FCode: string;
    [JSONName('error')]
    FError: string;
    [JSONName('error_description')]
    FErrorDescription: string;
    [JSONName('status')]
    FStatus: string;
  published
    property Code: string read FCode write FCode;
    property Error: string read FError write FError;
    property ErrorDescription: string read FErrorDescription write FErrorDescription;
    property Status: string read FStatus write FStatus;
  end;


implementation

end.
