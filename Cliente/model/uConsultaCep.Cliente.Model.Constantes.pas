unit uConsultaCep.Cliente.Model.Constantes;

interface

uses
  SysUtils;


const
  API_CONSULTA_CEP_PORTA = 9000;
  API_CONSULTA_CEP_URI   = 'http://localhost:%d/cep?cep=';

type

  TTipoApi = (ttViaCep, ttApiCEP, ttAwesomeAPI);

implementation

end.
