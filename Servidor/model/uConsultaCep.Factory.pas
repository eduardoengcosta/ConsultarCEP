unit uConsultaCep.Factory;

interface

uses
  uConsultaCep.Interfaces;

type
  TCepServiceFactory = class
  public
    class function CreateViaCEP     : ICepService;
    class function CreateApiCEP     : ICepService;
    class function CreateAwesomeAPI : ICepService;
  end;

implementation

uses uConsultaCep;


class function TCepServiceFactory.CreateViaCEP: ICepService;
begin
  Result := TViaCepService.Create;
end;

class function TCepServiceFactory.CreateApiCEP: ICepService;
begin
  Result := TApiCepService.Create;
end;

class function TCepServiceFactory.CreateAwesomeAPI: ICepService;
begin
  Result := TAwesomeApiService.Create;
end;


end.
