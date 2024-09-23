unit uConsultaCep.Cliente.Model.ApiClient;

interface

uses
  System.JSON, System.SysUtils,
  uConsultaCep.Cliente.Model.ApiClient.Interfaces;

type
  TApiClient = class(TInterfacedObject, IApiClient)
  public
    function retornaCep(const pCEP: string): string;
    class function New: IApiClient;
  end;

implementation

uses
   REST.Client, uConsultaCep.Cliente.Model.Constantes;

{ TApiClient }

class function TApiClient.New: IApiClient;
begin
  Result := Self.Create;
end;

function TApiClient.retornaCep(const pCEP: string): string;
var
  lRESTClient1: TRESTClient;
  lRESTRequest1: TRESTRequest;
  lRESTResponse1: TRESTResponse;
begin
  lRESTClient1            := TRESTClient.Create(nil);
  lRESTRequest1           := TRESTRequest.Create(nil);
  lRESTResponse1          := TRESTResponse.Create(nil);
  lRESTRequest1.Client    := lRESTClient1;
  lRESTRequest1.Response  := lRESTResponse1;
  lRESTClient1.BaseURL    := Format( API_CONSULTA_CEP_URI, [API_CONSULTA_CEP_PORTA] ) + pCEP;
  lRESTRequest1.Execute;
  Result := lRESTResponse1.JSONValue.ToJSON;

end;

end.
