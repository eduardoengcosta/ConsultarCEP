unit uConsultaCep.Cliente.Model.AwesomeApi.Interfaces;

interface

uses
  System.JSON;

type
  iAwesomeAPI = interface
  ['{CC9ED5DC-75B7-4E7E-ABB7-C7FC5282A242}']

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
  end;

implementation

end.
