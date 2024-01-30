Unit uTwoFer;

interface
  function twoFer(aName:string): string; overload;
  function twoFer: string; overload;

implementation

function twoFer(aName:string): string;
begin
  Result := 'One for ' + aName + ', one for me.';
end;

function twoFer: string;
begin
  Result := 'One for you, one for me.';
end;

end.
