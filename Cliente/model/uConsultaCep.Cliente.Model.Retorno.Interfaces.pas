unit uConsultaCep.Cliente.Model.Retorno.Interfaces;

interface

type
  iRetornoDadosCEP = interface
  ['{96B9A346-D92C-481D-A71B-628B70496613}']
    function getCep: string;
    procedure setCep(const pValor: String);

    function getlogradouro: string;
    procedure setlogradouro(const pValor: String);

    function getComplemento: string;
    procedure setComplemento(const pValor: String);

    function getBairro: string;
    procedure setBairro(const pValor: String);

    function getUf: string;
    procedure setUf(const pValor: String);

    function getEstado: string;
    procedure setEstado(const pValor: String);

    function getIBGE: string;
    procedure SetIBGE(const pValor: String);

    function getDDD: string;
    procedure SetDDD(const pValor: String);

    property Cep          : String read getCep          write setCep;
    property Logradouro   : String read getLogradouro   write setLogradouro;
    property Complemento  : String read getComplemento  write setComplemento;
    property Bairro       : String read getBairro       write setBairro;
    property UF           : String read getUF           write setUF;
    property Estado       : String read getEstado       write setEstado;
    property IBGE         : String read getIBGE         write setIBGE;
    property DDD          : String read getDDD          write setDDD;
  end;

implementation

end.
