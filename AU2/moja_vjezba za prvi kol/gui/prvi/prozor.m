function varargout = prozor(varargin)
% PROZOR MATLAB code for prozor.fig
%      PROZOR, by itself, creates a new PROZOR or raises the existing
%      singleton*.
%
%      H = PROZOR returns the handle to a new PROZOR or the handle to
%      the existing singleton*.
%
%      PROZOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROZOR.M with the given input arguments.
%
%      PROZOR('Property','Value',...) creates a new PROZOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before prozor_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to prozor_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help prozor

% Last Modified by GUIDE v2.5 24-May-2025 21:45:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @prozor_OpeningFcn, ...
                   'gui_OutputFcn',  @prozor_OutputFcn, ...
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


% --- Executes just before prozor is made visible.
function prozor_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to prozor (see VARARGIN)

% Choose default command line output for prozor
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes prozor wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = prozor_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function otpor_Callback(hObject, eventdata, handles)
% hObject    handle to otpor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of otpor as text
%        str2double(get(hObject,'String')) returns contents of otpor as a double


% --- Executes during object creation, after setting all properties.
function otpor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to otpor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
otpor=str2num(get(handles.otpor,'String')); 
assignin('base','otpor',otpor);
assignin('base','shema',handles) 
assignin('base','startstop_hObject',handles.pushbutton1) 
set_param('shema','SimulationCommand','Start') 
assignin('base','shema',handles) 
assignin('base','startstop_hObject',handles.pushbutton1) 
pause(3) 
vr=evalin('base','t'); 
rpm=evalin('base','rpm'); 
%struja=num2double(struja); 
handles.axes1; 
plot(vr,rpm,'r'); 
grid on
