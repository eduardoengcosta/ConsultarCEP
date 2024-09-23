unit uConsultaCep.Cliente.Model.Adapter.Interfaces;

interface

uses
  uConsultaCep.Cliente.Model.Retorno.Interfaces,
  uConsultaCep.Cliente.Model.ViaCEP.Interfaces,
  uConsultaCep.Cliente.Model.AwesomeApi.Interfaces,
  uConsultaCep.Cliente.Model.APICEP.Interfaces,
  uConsultaCep.Cliente.Model.Constantes;

type
  iAdapterDadosCEP = interface
   ['{F93C012B-D838-44D1-B663-9713491EC8FD}']
   function retornaDados(const pDados: string; const pTipoApi: TTipoApi): iRetornoDadosCEP;
  end;

implementation

end.
