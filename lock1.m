function varargout = lock1(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lock1_OpeningFcn, ...
                   'gui_OutputFcn',  @lock1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function lock1_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

function varargout = lock1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function pw_Callback(hObject, eventdata, handles)




function pw_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in a.
function a_Callback(hObject, eventdata, handles)

y=get(handles.pw,'string');
y=strcat(y,('1'));
set(handles.pw,'string',y);
% --- Executes on button press in pushbutton2.
function b_Callback(hObject, eventdata, handles)

y=get(handles.pw,'string');
y=strcat(y,('2'));
set(handles.pw,'string',y);



% --- Executes on button press in f.
function f_Callback(hObject, eventdata, handles)

y=get(handles.pw,'string');
y=strcat(y,('6'));
set(handles.pw,'string',y);

% --- Executes on button press in n.
function n_Callback(hObject, eventdata, handles)

y=get(handles.pw,'string');
y=strcat(y,('5'));
set(handles.pw,'string',y);


% --- Executes on button press in d.
function d_Callback(hObject, eventdata, handles)


y=get(handles.pw,'string');
y=strcat(y,('4'));
set(handles.pw,'string',y);

% --- Executes on button press in c.
function c_Callback(hObject, eventdata, handles)

y=get(handles.pw,'string');
y=strcat(y,('3'));
set(handles.pw,'string',y);


% --- Executes on button press in g.
function g_Callback(hObject, eventdata, handles)

y=get(handles.pw,'string');
y=strcat(y,('7'));
set(handles.pw,'string',y);


% --- Executes on button press in h.
function h_Callback(hObject, eventdata, handles)


y=get(handles.pw,'string');
y=strcat(y,('8'));
set(handles.pw,'string',y);

% --- Executes on button press in i.
function i_Callback(hObject, eventdata, handles)
y=get(handles.pw,'string');
y=strcat(y,('9'));
set(handles.pw,'string',y);

% --- Executes on button press in j.
function j_Callback(hObject, eventdata, handles)
%tructure with handles and user data (see GUIDATA)
y=get(handles.pw,'string');
y(end)='';
set(handles.pw,'string',y);
% --- Executes on button press in k.
function k_Callback(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y=get(handles.pw,'string');
y=strcat(y,('0'));
set(handles.pw,'string',y);
% --- Executes on button press in ok.
function ok_Callback(hObject, eventdata, handles)
% hObject    handle to ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
p='555';
y=get(handles.pw,'string');
l=strcmp(y,p);
if(l==1)
home1;
 else
errordlg('Wrong passcode!!!!!');   
end
% --- Executes on button press in off.
function off_Callback(hObject, eventdata, handles)
% hObject    handle to off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.off;
close(lock1);
