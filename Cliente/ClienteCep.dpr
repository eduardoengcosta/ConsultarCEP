program ClienteCep;

uses
  System.StartUpCopy,
  FMX.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uConsultaCep.Cliente.Model.ApiClient.Interfaces in 'model\uConsultaCep.Cliente.Model.ApiClient.Interfaces.pas',
  uConsultaCep.Cliente.Model.ApiClient in 'model\uConsultaCep.Cliente.Model.ApiClient.pas',
  uConsultaCep.Cliente.Model.Constantes in 'model\uConsultaCep.Cliente.Model.Constantes.pas',
  uConsultaCep.Cliente.Model.ViaCEP.Interfaces in 'model\uConsultaCep.Cliente.Model.ViaCEP.Interfaces.pas',
  uConsultaCep.Cliente.Model.ViaCEP in 'model\uConsultaCep.Cliente.Model.ViaCEP.pas',
  uConsultaCep.Cliente.Model.APICEP.Interfaces in 'model\uConsultaCep.Cliente.Model.APICEP.Interfaces.pas',
  uConsultaCep.Cliente.Model.APICEP in 'model\uConsultaCep.Cliente.Model.APICEP.pas',
  uConsultaCep.Cliente.Model.AwesomeApi.Interfaces in 'model\uConsultaCep.Cliente.Model.AwesomeApi.Interfaces.pas',
  uConsultaCep.Cliente.Model.AwesomeApi in 'model\uConsultaCep.Cliente.Model.AwesomeApi.pas',
  uConsultaCep.Cliente.Model.Retorno.Interfaces in 'model\uConsultaCep.Cliente.Model.Retorno.Interfaces.pas',
  uConsultaCep.Cliente.Model.Retorno in 'model\uConsultaCep.Cliente.Model.Retorno.pas',
  uConsultaCep.Cliente.Model.Adapter.Interfaces in 'model\uConsultaCep.Cliente.Model.Adapter.Interfaces.pas',
  uConsultaCep.Cliente.Model.Adapter in 'model\uConsultaCep.Cliente.Model.Adapter.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.