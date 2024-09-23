unit uConsultaCep.model.State;

interface

uses
 System.JSON,
 uConsultaCep.Interfaces;

type  //parei aqui criar uma interfaces
  TCepServiceContext = class
  private
    FState: iCepService;
  public
    procedure SetState(pNewState: iCepService);
    function GetCepInfo(const pCEP: string): string;
  end;

implementation

{ TConsultaCEPContext }

function TCepServiceContext.GetCepInfo(const pCEP: string): string;
begin
  Result := FState.GetCepInfo(pCEP);
end;

procedure TCepServiceContext.SetState(pNewState: iCepService);
begin
  Self.FState := pNewState;
end;

end.
