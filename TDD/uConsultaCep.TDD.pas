unit uConsultaCep.TDD;

interface

uses
  DUnitX.TestFramework, uConsultaCep.Cliente.Model.ApiClient.Interfaces,
  uConsultaCep.Cliente.Model.ApiClient,
  uConsultaCep.Cliente.Model.Retorno.Interfaces,
  uConsultaCep.Cliente.Model.Retorno;

type
  [TestFixture]
  TTesteConsultaCEP = class
  public
  [test] procedure ConsultaCep;
  end;

implementation

uses
  Rest.Json;

{ TTesteConsultaCEP }

procedure TTesteConsultaCEP.ConsultaCep;
const
  CEP_TDD= '24725270';
var
  lConecApi : IApiClient;
  lJson: String;
  lRetorno: iRetornoDadosCEP;
begin
  lConecApi := TApiClient.New;
  lJson := lConecApi.retornaCep(CEP_TDD);
  lRetorno:= TJson.JsonToObject<TRetornoDadosCEP>(lJson);

  Assert.IsTrue(lRetorno.Logradouro   <>'','Campo "LOGRADOURO" n�o foi encontrado');
  Assert.IsTrue(lRetorno.Bairro       <>'','Campo "BAIRRO" n�o foi encontrado');
  Assert.IsTrue(lRetorno.UF           <>'','Campo "UF" n�o foi encontrado');
  Assert.IsTrue(lRetorno.Estado       <>'','Campo "ESTADO" n�o foi encontrado');
  Assert.IsTrue(lRetorno.IBGE         <>'','Campo "IBGE" n�o foi encontrado');
  Assert.IsTrue(lRetorno.DDD          <>'','Campo "DDD" n�o foi encontrado');

end;

initialization
  TDUnitX.RegisterTestFixture(TTesteConsultaCEP);

end.
