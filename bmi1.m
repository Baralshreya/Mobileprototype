function varargout = bmi1(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bmi1_OpeningFcn, ...
                   'gui_OutputFcn',  @bmi1_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before result is made visible.
function bmi1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to result (see VARARGIN)

% Choose default command line output for result
handles.output = hObject;

axes(handles.axes3)
imshow('ind.png');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes result wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bmi1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in graph.
function graph_Callback(hObject, eventdata, handles)
% hObject    handle to graph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function height_Callback(hObject, eventdata, handles)

function height_CreateFcn(hObject, eventdata, handles)
% hObject    handle to height (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function weight_Callback(hObject, eventdata, handles)

function weight_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% --- Executes on button press in bmi1.
function bmi_Callback(hObject, eventdata, handles)
% hObject    handle to bmi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h=str2num(get(handles.height,'string'));
w=str2num(get(handles.weight,'string'));
b=w/(h^2);
bmi=num2str(set(handles.result,'string',b));
 if(b<18.5)
     y='You are underweight.';
    num2str( set(handles.op,'string',y));
 else if(b>=18.5 & b<25)
     y='You are healthyweight.';
    num2str( set(handles.op,'string',y));
     else if(b<30 & b>=25)
     y='You are overweight.';
    num2str( set(handles.op,'string',y));
         else if(b>=30)
     y='You are obese.';
    num2str( set(handles.op,'string',y));
             end
         end
     end
 end
