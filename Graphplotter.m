function varargout = Graphplotter(varargin)
% GRAPHPLOTTER MATLAB code for Graphplotter.fig
%      GRAPHPLOTTER, by itself, creates a new GRAPHPLOTTER or raises the existing
%      singleton*.
%
%      H = GRAPHPLOTTER returns the handle to a new GRAPHPLOTTER or the handle to
%      the existing singleton*.
%
%      GRAPHPLOTTER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAPHPLOTTER.M with the given input arguments.
%
%      GRAPHPLOTTER('Property','Value',...) creates a new GRAPHPLOTTER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Graphplotter_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Graphplotter_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Graphplotter

% Last Modified by GUIDE v2.5 06-Aug-2018 03:02:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Graphplotter_OpeningFcn, ...
                   'gui_OutputFcn',  @Graphplotter_OutputFcn, ...
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


% --- Executes just before Graphplotter is made visible.
function Graphplotter_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Graphplotter (see VARARGIN)

% Choose default command line output for Graphplotter
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Graphplotter wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Graphplotter_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function eq_Callback(hObject, eventdata, handles)
% hObject    handle to eq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eq as text
%        str2double(get(hObject,'String')) returns contents of eq as a double


% --- Executes during object creation, after setting all properties.
function eq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ok.
function ok_Callback(hObject, eventdata, handles)
% hObject    handle to ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=get(handles.eq,'string');
x=0:0.1:10;
y=0:0.1:10;
axes(handles.axes1);
plot(eval(a));
