unit uConsultaCep.Cliente.Model.AwesomeApi;

interface

uses
  System.JSON, SysUtils,
  uConsultaCep.Cliente.Model.AwesomeApi.Interfaces;

type
  TAwesomeAPI = class(TInterfacedObject, iAwesomeAPI)
  strict private
    FCep          : string;
    FAddress_Type : string;
    FAddress_Name : string;
    FAddress      : string;
    FDistrict     : string;
    FState        : string;
    FCity         : string;
    FLat          : string;
    FLng          : string;
    FDdd          : string;
    FCity_Ibge    : string;
  private
    function getCep: string;
    procedure setCep(const pValor: String);

    function getAddress_Type: string;
    procedure setAddress_Type(const pValor: String);

    function getAddress_Name: string;
    procedure setAddress_Name(const pValor: String);

    function getAddress: string;
    procedure setAddress(const pValor: String);

    function getDistrict: string;
    procedure setDistrict(const pValor: String);

    function getState: string;
    procedure setState(const pValor: String);

    function getCity: string;
    procedure setCity(const pValor: String);

    function getLat: string;
    procedure setLat(const pValor: String);

    function getLng: string;
    procedure setLng(const pValor: String);

    function getDdd: string;
    procedure setDdd(const pValor: String);

    function getCity_Ibge: string;
    procedure setCity_Ibge(const pValor: String);
  public
    procedure CarregarDados(const pJSON: TJSONObject);

    property Cep          : string read getCep          write setCep;
    property Address_Type : string read getAddress_Type write setAddress_Type;
    property Address_Name : string read getAddress_Name write setAddress_Name;
    property Address      : string read getAddress      write setAddress;
    property District     : string read getDistrict     write setDistrict;
    property State        : string read getState        write setState;
    property City         : string read getCity         write setCity;
    property Lat          : string read getLat          write setLat;
    property Lng          : string read getLng          write setLng;
    property Ddd          : string read getDdd          write setDdd;
    property City_Ibge    : string read getCity_Ibge    write setCity_Ibge;

    class function New: iAwesomeAPI;
  end;


implementation

{ TAwesomeAPI }

procedure TAwesomeAPI.CarregarDados(const pJSON: TJSONObject);
begin
  FCep          := pJSON.GetValue<string>('cep');
  FAddress_Type := pJSON.GetValue<string>('address_type');
  FAddress_Name := pJSON.GetValue<string>('address_name');
  FAddress      := pJSON.GetValue<string>('address');
  FDistrict     := pJSON.GetValue<string>('district');
  FState        := pJSON.GetValue<string>('state');
  FCity         := pJSON.GetValue<string>('city');
  FLat          := pJSON.GetValue<string>('lat');
  FLng          := pJSON.GetValue<string>('lng');
  FDdd          := pJSON.GetValue<string>('ddd');
  FCity_Ibge    := pJSON.GetValue<string>('city_ibge');
end;

function TAwesomeAPI.getAddress: string;
begin
  Result := Self.FAddress;
end;

function TAwesomeAPI.getAddress_Name: string;
begin
  Result := Self.FAddress_Name;
end;

function TAwesomeAPI.getAddress_Type: string;
begin
  Result := Self.FAddress_Type;
end;

function TAwesomeAPI.getCep: string;
begin
  Result := Self.FCep;
end;

function TAwesomeAPI.getCity: string;
begin
  Result := Self.FCity;
end;

function TAwesomeAPI.getCity_Ibge: string;
begin
  Result := Self.FCity_Ibge;
end;

function TAwesomeAPI.getDdd: string;
begin
  Result := Self.FDdd;
end;

function TAwesomeAPI.getDistrict: string;
begin
  Result := Self.FDistrict;
end;

function TAwesomeAPI.getLat: string;
begin
  Result := Self.FLat;
end;

function TAwesomeAPI.getLng: string;
begin
  Result := Self.FLng;
end;

function TAwesomeAPI.getState: string;
begin
  Result := Self.FState;
end;

class function TAwesomeAPI.New: iAwesomeAPI;
begin
  Result := Self.Create;
end;

procedure TAwesomeAPI.setAddress(const pValor: String);
begin
  Self.FAddress := pValor;
end;

procedure TAwesomeAPI.setAddress_Name(const pValor: String);
begin
  Self.FAddress_Name := pValor;
end;

procedure TAwesomeAPI.setAddress_Type(const pValor: String);
begin
  Self.FAddress_Type := pValor;
end;

procedure TAwesomeAPI.setCep(const pValor: String);
begin
  Self.FCep := pValor;
end;

procedure TAwesomeAPI.setCity(const pValor: String);
begin
  Self.FCity := pValor;
end;

procedure TAwesomeAPI.setCity_Ibge(const pValor: String);
begin
  Self.FCity_Ibge := pValor;
end;

procedure TAwesomeAPI.setDdd(const pValor: String);
begin
  Self.FDdd := pValor;
end;

procedure TAwesomeAPI.setDistrict(const pValor: String);
begin
  Self.FDistrict := pValor;
end;

procedure TAwesomeAPI.setLat(const pValor: String);
begin
  Self.FLat := pValor;
end;

procedure TAwesomeAPI.setLng(const pValor: String);
begin
  Self.FLng := pValor;
end;

procedure TAwesomeAPI.setState(const pValor: String);
begin
  Self.FState := pValor;
end;

end.
