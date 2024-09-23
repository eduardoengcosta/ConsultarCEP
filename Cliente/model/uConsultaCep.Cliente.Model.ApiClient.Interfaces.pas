unit uConsultaCep.Cliente.Model.ApiClient.Interfaces;

interface

uses
  System.JSON;

type
  IApiClient = interface
    ['{199CB8F2-0FA6-4274-A2F9-F42C1815AD79}']
    function retornaCep(const pCEP: string): string;
  end;

implementation

end.
