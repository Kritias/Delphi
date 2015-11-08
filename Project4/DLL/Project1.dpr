library Project1;

uses
  Windows,
  Messages;

var
  HookHandle: HHook=0;
  Wnd: HWND;

function HookProc(Code: Integer; wParam: Word; lParam: Longint): longint; stdcall;
begin
CallNextHookEx(HookHandle, Code, wParam, lParam);
if Code=HC_ACTION then begin
  if (TMsg(Pointer(lParam)^).message=WM_LBUTTONDOWN) 
       and ((TMsg(Pointer(lParam)^).wParam and MK_SHIFT)=MK_SHIFT) then begin
    Wnd:=TMsg(Pointer(lParam)^).hwnd;
    SendMessage(Wnd, EM_SETPASSWORDCHAR, 0, 0);
    InvalidateRect(Wnd, nil, true);
    end;
  end;
end; 

procedure SetHook(State: Boolean) export; stdcall;
begin
if State then
  if HookHandle=0 then
     HookHandle:=SetWindowsHookEx(WH_GETMESSAGE, @HookProc, HInstance, 0)
else begin
  UnhookWindowsHookEx(HookHandle);
  HookHandle:=0;
  end;
end;

{$R *.res}
exports SetHook index 11;

begin

end.
