unit uConsultaCep.Cliente.Model.APICEP.Interfaces;

interface

uses
  System.JSON;

type
  iAPICep = interface
  ['{58E002FF-F037-4738-A4FD-9E40966425CD}']
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

    procedure CarregarDados(const pJSON: TJSONObject);

    property Status   : string read getStatus   write setStatus;
    property Code     : string read getCode     write setCode;
    property State    : string read getState    write setState;
    property City     : string read getCity     write setCity;
    property District : string read getDistrict write setDistrict;
    property Address  : string read getAddress  write setAddress;

  end;



implementation

end.