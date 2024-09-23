unit uConsultaCep.Cliente.Model.ViaCEP.Interfaces;

interface

uses
  System.JSON;

type
  iDadosViaCEP = interface
  ['{0D48C18F-3323-48AE-8267-4A4CC4F161E4}']
    function getCep: string;
    procedure setCep(const pValor: String);

    function getlogradouro: string;
    procedure setlogradouro(const pValor: String);

    function getComplemento: string;
    procedure setComplemento(const pValor: String);

    function getUnidade: string;
    procedure setUnidade(const pValor: String);

    function getBairro: string;
    procedure setBairro(const pValor: String);

    function getLocalidade: string;
    procedure setLocalidade(const pValor: String);

    function getUf: string;
    procedure setUf(const pValor: String);

    function getEstado: string;
    procedure setEstado(const pValor: String);

    function getRegiao: string;
    procedure SetRegiao(const pValor: String);

    function getIBGE: string;
    procedure SetIBGE(const pValor: String);

    function getGia: string;
    procedure SetGia(const pValor: String);

    function getDDD: string;
    procedure SetDDD(const pValor: String);

    function getsiafi: string;
    procedure setsiafi(const pValor: String);

    procedure CarregarDados(const pJSON: TJSONObject);

    property Cep          : String read getCep          write setCep;
    property Logradouro   : String read getLogradouro   write setLogradouro;
    property Complemento  : String read getComplemento  write setComplemento;
    property Unidade      : String read getUnidade      write setUnidade;
    property Bairro       : String read getBairro       write setBairro;
    property Localidade   : String read getLocalidade   write setLocalidade;
    property UF           : String read getUF           write setUF;
    property Estado       : String read getEstado       write setEstado;
    property Regiao       : String read getRegiao       write setRegiao;
    property IBGE         : String read getIBGE         write setIBGE;
    property Gia          : String read getGia          write setGia;
    property DDD          : String read getDDD          write setDDD;
    property Siafi        : String read getSiafi        write setSiafi;
  end;

implementation

end.
