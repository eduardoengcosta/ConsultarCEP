unit uConsultaCep.Cliente.Model.Adapter;

interface

uses
  uConsultaCep.Cliente.Model.Retorno.Interfaces,
  uConsultaCep.Cliente.Model.ViaCEP.Interfaces,
  uConsultaCep.Cliente.Model.AwesomeApi.Interfaces,
  uConsultaCep.Cliente.Model.APICEP.Interfaces,
  uConsultaCep.Cliente.Model.Adapter.Interfaces,
  uConsultaCep.Cliente.Model.Constantes, uConsultaCep.Cliente.Model.ViaCEP,
  uConsultaCep.Cliente.Model.APICEP, uConsultaCep.Cliente.Model.AwesomeApi;

type
  TAdapterDadosCEP = class(TInterfacedObject, iAdapterDadosCEP)
  private
   function retornaDadosViaCEP(const pDados: iDadosViaCEP): iRetornoDadosCEP;
   function retornaDadosAwesome(const pDados: iAwesomeAPI): iRetornoDadosCEP;
   function retornaDadosAPICep(const pDados: iAPICep): iRetornoDadosCEP; overload;
  public
    function retornaDados(const pDados: string; const pTipoApi: TTipoApi): iRetornoDadosCEP; overload;

    class function New: iAdapterDadosCEP;
  end;

implementation

{ TAdapterDadosCEP }

uses
  Rest.Json,
  uConsultaCep.Cliente.Model.Retorno;

class function TAdapterDadosCEP.New: iAdapterDadosCEP;
begin
  Result := Self.Create;
end;

function TAdapterDadosCEP.retornaDadosViaCEP(const pDados: iDadosViaCEP): iRetornoDadosCEP;
begin
  Result              := TRetornoDadosCEP.New;
  Result.Cep          := pDados.Cep;
  Result.Logradouro   := pDados.Logradouro;
  Result.Complemento  := pDados.Complemento;
  Result.Bairro       := pDados.Bairro;
  Result.UF           := pDados.UF;
  Result.Estado       := pDados.Estado;
  Result.IBGE         := pDados.IBGE;
  Result.DDD          := pDados.DDD;
end;

function TAdapterDadosCEP.retornaDadosAwesome(const pDados: iAwesomeAPI): iRetornoDadosCEP;
begin
  Result              := TRetornoDadosCEP.New;
  Result.Cep          := pDados.Cep;
  Result.Logradouro   := pDados.Address;
  Result.Bairro       := pDados.District;
  Result.UF           := pDados.State;
  Result.Estado       := pDados.City;
  Result.IBGE         := pDados.City_Ibge;
  Result.DDD          := pDados.DDD;
end;

function TAdapterDadosCEP.retornaDadosAPICep(const pDados: iAPICep): iRetornoDadosCEP;
begin
  Result              := TRetornoDadosCEP.New;
  Result.Cep          := pDados.Code;
  Result.Logradouro   := pDados.Address;
  Result.Bairro       := pDados.District;
  Result.UF           := pDados.State;
  Result.Estado       := pDados.State;
end;

function TAdapterDadosCEP.retornaDados(const pDados: string;
  const pTipoApi: TTipoApi): iRetornoDadosCEP;
begin
   case pTipoApi of
     ttViaCep     : Result := retornaDadosViaCEP(TJson.JsonToObject<TDadosViaCEP>(pDados))  ;
     ttApiCEP     : Result := retornaDadosAPICep(TJson.JsonToObject<TAPICep>(pDados));
     ttAwesomeAPI : Result := retornaDadosAwesome(TJson.JsonToObject<TAwesomeAPI>(pDados));
   end;
end;

end.
