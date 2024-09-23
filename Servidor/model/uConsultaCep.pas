unit uConsultaCep;

interface

uses
  SysUtils, Classes, StrUtils,
  System.JSON, uConsultaCep.Interfaces,
  uConsultaCep.Cliente.Model.ViaCEP.Interfaces,
  uConsultaCep.Cliente.Model.AwesomeApi.Interfaces,
  uConsultaCep.Cliente.Model.APICEP.Interfaces;

type
  TViaCepService = class(TInterfacedObject, ICepService)
  public
    function GetCepInfo(const pCEP: string): string;
  end;

  TApiCepService  = class(TInterfacedObject, ICepService)
  public
    function GetCepInfo(const pCEP: string): string;
  end;

  TAwesomeApiService  = class(TInterfacedObject, ICepService)
  public
    function GetCepInfo(const pCEP: string): string;
  end;

  TRetornaDados = class
  public
    function retornaDados(const pCEP: string; const pURI: string; const pConcat: Boolean=False): string;
  end;

implementation

uses
   REST.Client;

{ TViaCepService }

function TViaCepService.GetCepInfo(const pCEP: string): string;
var
  lCep: TRetornaDados;
begin
  lCep := TRetornaDados.Create;
  Result := lCep.retornaDados(pCEP, 'https://viacep.com.br/ws/', True);
end;

{ TApiCepService }

function TApiCepService.GetCepInfo(const pCEP: string): string;
var
  lCep: TRetornaDados;
begin
  lCep := TRetornaDados.Create;
  Result := lCep.retornaDados(pCEP, 'https://apicep.com/api/cep/');
end;

{ TAwesomeApiService }

function TAwesomeApiService.GetCepInfo(const pCEP: string): string;
var
  lCep: TRetornaDados;
begin
  lCep := TRetornaDados.Create;
  Result := lCep.retornaDados(pCEP, 'https://cep.awesomeapi.com.br/json/');
end;

{ TRetornaDados }

function TRetornaDados.retornaDados(const pCEP: string; const pURI: string; const pConcat: Boolean): string;
var
  lRESTClient1: TRESTClient;
  lRESTRequest1: TRESTRequest;
  lRESTResponse1: TRESTResponse;

begin
  try
    lRESTClient1            := TRESTClient.Create(nil);
    lRESTRequest1           := TRESTRequest.Create(nil);
    lRESTResponse1          := TRESTResponse.Create(nil);
    lRESTRequest1.Client    := lRESTClient1;
    lRESTRequest1.Response  := lRESTResponse1;
    lRESTClient1.BaseURL    := pURI + pCEP + IfThen(pConcat,'/json', '');
    lRESTRequest1.Execute;
    Result := lRESTResponse1.JSONValue.ToJSON;
  except
    on E: exception do
      Result := E.Message;

  end;

end;

end.
