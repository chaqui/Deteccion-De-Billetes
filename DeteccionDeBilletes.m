function varargout = DeteccionDeBilletes(varargin)
% DETECCIONDEBILLETES MATLAB code for DeteccionDeBilletes.fig
%      DETECCIONDEBILLETES, by itself, creates a new DETECCIONDEBILLETES or raises the existing
%      singleton*.
%
%      H = DETECCIONDEBILLETES returns the handle to a new DETECCIONDEBILLETES or the handle to
%      the existing singleton*.
%
%      DETECCIONDEBILLETES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DETECCIONDEBILLETES.M with the given input arguments.
%
%      DETECCIONDEBILLETES('Property','Value',...) creates a new DETECCIONDEBILLETES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DeteccionDeBilletes_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DeteccionDeBilletes_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DeteccionDeBilletes

% Last Modified by GUIDE v2.5 11-Nov-2015 08:54:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DeteccionDeBilletes_OpeningFcn, ...
                   'gui_OutputFcn',  @DeteccionDeBilletes_OutputFcn, ...
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


% --- Executes just before DeteccionDeBilletes is made visible.
function DeteccionDeBilletes_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DeteccionDeBilletes (see VARARGIN)

% Choose default command line output for DeteccionDeBilletes
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DeteccionDeBilletes wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DeteccionDeBilletes_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in TomarFoto.
function TomarFoto_Callback(hObject, eventdata, handles)
clc,clear all;
video= videoinput('winvideo',1);
preview(video);
pause(5);
img=getsnapshot(video);
closepreview(video);
delete(video);


% --- Executes on button press in SeleccionFoto.
function SeleccionFoto_Callback(hObject, eventdata, handles)
% hObject    handle to SeleccionFoto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in AnalizarImagen.
function AnalizarImagen_Callback(hObject, eventdata, handles)
% hObject    handle to AnalizarImagen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
