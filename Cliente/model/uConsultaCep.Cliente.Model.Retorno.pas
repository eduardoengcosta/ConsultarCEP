unit uConsultaCep.Cliente.Model.Retorno;

interface

uses
  System.SysUtils,
  uConsultaCep.Cliente.Model.Retorno.Interfaces;

type
  TRetornoDadosCEP = class(TInterfacedObject, iRetornoDadosCEP)
  strict private
    FCep        : string;
    Flogradouro : string;
    FComplemento: string;
    FBairro     : string;
    FUf         : string;
    FEstado     : string;
    FIBGE       : string;
    FDDD        : string;
  private
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

  public
    property Cep          : String read getCep          write setCep;
    property Logradouro   : String read getLogradouro   write setLogradouro;
    property Complemento  : String read getComplemento  write setComplemento;
    property Bairro       : String read getBairro       write setBairro;
    property UF           : String read getUF           write setUF;
    property Estado       : String read getEstado       write setEstado;
    property IBGE         : String read getIBGE         write setIBGE;
    property DDD          : String read getDDD          write setDDD;

    class function New: iRetornoDadosCEP;
  end;

implementation

{ TRetornoDadosCEP }

function TRetornoDadosCEP.getBairro: string;
begin
  Result := Self.FBairro;
end;

function TRetornoDadosCEP.getCep: string;
begin
  Result := Self.FCep;
end;

function TRetornoDadosCEP.getComplemento: string;
begin
  Result := Self.FComplemento;
end;

function TRetornoDadosCEP.getDDD: string;
begin
  Result := Self.FDDD;
end;

function TRetornoDadosCEP.getEstado: string;
begin
  Result := Self.FEstado;
end;

function TRetornoDadosCEP.getIBGE: string;
begin
  Result := Self.FIBGE;
end;

function TRetornoDadosCEP.getlogradouro: string;
begin
  Result := Self.Flogradouro;
end;

function TRetornoDadosCEP.getUf: string;
begin
  Result := Self.FUf;
end;

class function TRetornoDadosCEP.New: iRetornoDadosCEP;
begin
  Result := Self.Create;
end;

procedure TRetornoDadosCEP.setBairro(const pValor: String);
begin
  Self.FBairro := pValor;
end;

procedure TRetornoDadosCEP.setCep(const pValor: String);
begin
  Self.FCep := pValor;
end;

procedure TRetornoDadosCEP.setComplemento(const pValor: String);
begin
  Self.FComplemento := pValor;
end;

procedure TRetornoDadosCEP.SetDDD(const pValor: String);
begin
  Self.FDDD := pValor;
end;

procedure TRetornoDadosCEP.setEstado(const pValor: String);
begin
  Self.FEstado := pValor;
end;

procedure TRetornoDadosCEP.SetIBGE(const pValor: String);
begin
  Self.FIBGE :=  pValor;
end;

procedure TRetornoDadosCEP.setlogradouro(const pValor: String);
begin
  Self.Flogradouro := pValor;
end;

procedure TRetornoDadosCEP.setUf(const pValor: String);
begin
  Self.FUf := pValor;
end;

end.
