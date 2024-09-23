unit uConsultaCep.Cliente.Model.ViaCEP;

interface

uses
  System.JSON, SysUtils,
  uConsultaCep.Cliente.Model.ViaCEP.Interfaces;

type
  TDadosViaCEP = class(TInterfacedObject, iDadosViaCEP)
  strict private
    FCep        : string;
    FLogradouro : string;
    FComplemento: string;
    FUnidade    : string;
    FBairro     : string;
    FLocalidade : string;
    FUf         : string;
    FEstado     : string;
    FRegiao     : string;
    FIBGE       : string;
    FGia        : string;
    FDDD        : string;
    Fsiafi      : string;
  private
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
  public
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

    procedure CarregarDados(const pJSON: TJSONObject);
    class function New: iDadosViaCEP;
  end;

implementation


{ TDadosViaCEP }

procedure TDadosViaCEP.CarregarDados(const pJSON: TJSONObject);
begin

  FCep          := pJSON.GetValue<string>('cep');
  FLogradouro   := pJSON.GetValue<string>('logradouro');
  FComplemento  := pJSON.GetValue<string>('complemento');
  FUnidade      := pJSON.GetValue<string>('unidade');
  FBairro       := pJSON.GetValue<string>('bairro');
  FLocalidade   := pJSON.GetValue<string>('localidade');
  FUf           := pJSON.GetValue<string>('uf');
  FEstado       := pJSON.GetValue<string>('estado');
  FRegiao       := pJSON.GetValue<string>('regiao');
  FIBGE         := pJSON.GetValue<string>('ibge');
  FGia          := pJSON.GetValue<string>('gia');
  FDDD          := pJSON.GetValue<string>('ddd');
  Fsiafi        := pJSON.GetValue<string>('siafi');

end;

function TDadosViaCEP.getBairro: string;
begin
  Result := Self.FBairro;
end;

function TDadosViaCEP.getCep: string;
begin
  Result := Self.FCep;
end;

function TDadosViaCEP.getComplemento: string;
begin
  Result := Self.FComplemento;
end;

function TDadosViaCEP.getDDD: string;
begin
  Result := Self.FDDD;
end;

function TDadosViaCEP.getEstado: string;
begin
 Result :=  Self.FEstado;
end;

function TDadosViaCEP.getGia: string;
begin
  Result := Self.FGia;
end;

function TDadosViaCEP.getIBGE: string;
begin
  Result := Self.FIBGE;
end;

function TDadosViaCEP.getLocalidade: string;
begin
  Result := Self.FLocalidade;
end;

function TDadosViaCEP.getlogradouro: string;
begin
  Result := Self.FLogradouro;
end;

function TDadosViaCEP.getRegiao: string;
begin
  Result := Self.FRegiao;
end;

function TDadosViaCEP.getsiafi: string;
begin
  Result := Self.Fsiafi;
end;

function TDadosViaCEP.getUf: string;
begin
  Result := Self.FUf;
end;

function TDadosViaCEP.getUnidade: string;
begin
  Result := Self.FUnidade;
end;

class function TDadosViaCEP.New: iDadosViaCEP;
begin
  Result := Self.Create;
end;

procedure TDadosViaCEP.setBairro(const pValor: String);
begin
  Self.FBairro := pValor;
end;

procedure TDadosViaCEP.setCep(const pValor: String);
begin
  Self.FCep := pValor;
end;

procedure TDadosViaCEP.setComplemento(const pValor: String);
begin
  Self.FComplemento := pValor;
end;

procedure TDadosViaCEP.SetDDD(const pValor: String);
begin
  Self.FDDD := pValor;
end;

procedure TDadosViaCEP.setEstado(const pValor: String);
begin
  Self.FEstado := pValor;
end;

procedure TDadosViaCEP.SetGia(const pValor: String);
begin
  Self.FGia := pvalor;
end;

procedure TDadosViaCEP.SetIBGE(const pValor: String);
begin
  Self.FIBGE := pValor;
end;

procedure TDadosViaCEP.setLocalidade(const pValor: String);
begin
  Self.FLocalidade := pValor;
end;

procedure TDadosViaCEP.setlogradouro(const pValor: String);
begin
  Self.FLogradouro := pValor;
end;

procedure TDadosViaCEP.SetRegiao(const pValor: String);
begin
  Self.FRegiao := pValor;
end;

procedure TDadosViaCEP.setsiafi(const pValor: String);
begin
  Self.Fsiafi :=  pValor;
end;

procedure TDadosViaCEP.setUf(const pValor: String);
begin
  Self.FUf := pValor;
end;

procedure TDadosViaCEP.setUnidade(const pValor: String);
begin
  Self.FUnidade := pValor;
end;

end.
