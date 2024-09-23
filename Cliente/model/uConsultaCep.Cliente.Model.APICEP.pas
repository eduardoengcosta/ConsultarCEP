unit uConsultaCep.Cliente.Model.APICEP;

interface

uses
  System.JSON,
  uConsultaCep.Cliente.Model.APICEP.Interfaces;

type
  TAPICep = class(TInterfacedObject, iAPICep)
  strict private
    Fstatus: string;
    FCode: string;
    FState: string;
    FCity: string;
    FDistrict: string;
    FAddress: string;
  private
   function getstatus: string;
    procedure setstatus(const pValor: String);

    function getCode: string;
    procedure setCode(const pValor: String);

    function getState: string;
    procedure setState(const pValor: String);

    function getCity: string;
    procedure setCity(const pValor: String);

    function getDistrict: string;
    procedure setDistrict(const pValor: String);

    function getAddress: string;
    procedure setAddress(const pValor: String);
  public
    procedure CarregarDados(const pJSON: TJSONObject);

    property Status   : string read getStatus   write setStatus;
    property Code     : string read getCode     write setCode;
    property State    : string read getState    write setState;
    property City     : string read getCity     write setCity;
    property District : string read getDistrict write setDistrict;
    property Address  : string read getAddress  write setAddress;

    class function New: iAPICep;
  end;


implementation

{ TAPICep }

procedure TAPICep.CarregarDados(const pJSON: TJSONObject);
begin
  Fstatus   := pJSON.GetValue<string>('status');
  FCode     := pJSON.GetValue<string>('code');
  FState    := pJSON.GetValue<string>('state');
  FCity     := pJSON.GetValue<string>('city');
  FDistrict := pJSON.GetValue<string>('district');
  FAddress  := pJSON.GetValue<string>('address');
end;

function TAPICep.getAddress: string;
begin
  Result := Self.FAddress;
end;

function TAPICep.getCity: string;
begin
  Result := Self.FCity;
end;

function TAPICep.getCode: string;
begin
  Result := Self.FCode;
end;

function TAPICep.getDistrict: string;
begin
  Result := Self.FDistrict;
end;

function TAPICep.getState: string;
begin
  Result := Self.FState;
end;

function TAPICep.getstatus: string;
begin
  Result := Self.Fstatus;
end;

class function TAPICep.New: iAPICep;
begin
  Result := Self.Create;
end;

procedure TAPICep.setAddress(const pValor: String);
begin
  Self.FAddress := pValor;
end;

procedure TAPICep.setCity(const pValor: String);
begin
  Self.FCity := pValor;
end;

procedure TAPICep.setCode(const pValor: String);
begin
  Self.FCode := pValor;
end;

procedure TAPICep.setDistrict(const pValor: String);
begin
  Self.FDistrict := pValor;
end;

procedure TAPICep.setState(const pValor: String);
begin
  Self.FState := pValor;
end;

procedure TAPICep.setstatus(const pValor: String);
begin
  Self.Fstatus := pValor;
end;

end.
