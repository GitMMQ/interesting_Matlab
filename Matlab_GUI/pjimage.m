function varargout = pjimage(varargin)
% PJIMAGE MATLAB code for pjimage.fig
%      PJIMAGE, by itself, creates a new PJIMAGE or raises the existing
%      singleton*.
%
%      H = PJIMAGE returns the handle to a new PJIMAGE or the handle to
%      the existing singleton*.
%
%      PJIMAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PJIMAGE.M with the given input arguments.
%
%      PJIMAGE('Property','Value',...) creates a new PJIMAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pjimage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pjimage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pjimage

% Last Modified by GUIDE v2.5 15-Oct-2018 23:26:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pjimage_OpeningFcn, ...
                   'gui_OutputFcn',  @pjimage_OutputFcn, ...
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


% --- Executes just before pjimage is made visible.
function pjimage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to pjimage (see VARARGIN)

% Choose default command line output for pjimage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
setappdata(handles.figure_pjimage,'img_src',0);
set(handles.m_image_2bw,'Enable','off');
setappdata(handles.figure_pjimage,'bSave',false); 
setappdata(handles.figure_pjimage,'bChanged',false);

setappdata(handles.figure_pjimage,'fstSave',true); 
setappdata(handles.figure_pjimage,'fstPath',0); 

set(handles.tbl_save,'Enable','off'); 
set(handles.m_file_save,'Enable','off');  





% UIWAIT makes pjimage wait for user response (see UIRESUME)
% uiwait(handles.figure_pjimage);


% --- Outputs from this function are returned to the command line.
function varargout = pjimage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


%�ļ� --------------------------------------------------------------------
function m_file_Callback(hObject, eventdata, handles)
% hObject    handle to m_file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% ��--------------------------------------------------------------------
function m_file_open_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename, pathname] = uigetfile( ... 
    {'*.bmp;*.jpg;*.png;*.jpeg', 'Image Files (*.bmp, *.jpg, *.png, *.jpeg)'; ... 
    '*.*', 'All Files (*.*)'}, ...
    'Pick an image'); 
if isequal(filename,0) || isequal(pathname,0),
    return;%���ȡ��ʲô������
end 
axes(handles.axes_src);%��axes�����趨��ǰ��������������axes_src 
fpath=[pathname filename];%���ļ�����Ŀ¼����ϳ�һ��������·�� 
img_src=imread(fpath);
imshow(img_src);
setappdata(handles.figure_pjimage,'img_src',img_src); %��imshow(imread(fpath));%��imread����ͼƬ������imshow��axes_src����ʾ
set(handles.m_image_2bw,'Enable','on'); 

set(handles.tbl_save,'Enable','on'); 
set(handles.m_file_save,'Enable','on'); 

% ����--------------------------------------------------------------------
function m_file_save_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uiputfile({'*.bmp','BMP files';'*.jpg;','JPG files'}, 'Pick an Image');
if isequal(filename,0) || isequal(pathname,0) 
    return;%������ˡ�ȡ���� 
else
    fpath=fullfile(pathname, filename);%���ȫ·������һ�ַ���
end
img_src=getappdata(handles.figure_pjimage,'img_src');%ȡ�ô�ͼƬ�� ���� 
imwrite(img_src,fpath);%����ͼƬ

%�˳� --------------------------------------------------------------------
function m_file_exit_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(handles.figure_pjimage);%����delete����Ҳ�ǿ��Եģ����ǣ�delete(handles.figure_pjimage);


% --------------------------------------------------------------------
function m_image_2bw_Callback(hObject, eventdata, handles)
% hObject    handle to m_image_2bw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h=im2bw_args;
setappdata(handles.figure_pjimage,'bChanged',true);


% --------------------------------------------------------------------
function axes_dst_menu_save_Callback(hObject, eventdata, handles)
% hObject    handle to axes_dst_menu_save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function axes_dst_menu_Callback(hObject, eventdata, handles)
% hObject    handle to axes_dst_menu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
bChanged=getappdata(handles.figure_pjimage,'bChanged');%����Ƿ���� 
bSave=getappdata(handles.figure_pjimage,'bSave');%����Ƿ񱣴� 
if bChanged==true && bSave==false,%�����ˣ���û����ʱ 
    btnName=questdlg('���Ѿ�������ͼƬ����û�б��档Ҫ������?','��ʾ',' ����','������','����');%�����ʶԻ��� 
    switch btnName, 
        case '����', %ִ��axes_dst_menu_save_Callback�Ĺ��� 
            feval(@axes_dst_menu_save_Callback,handles.axes_dst_menu_save,eventdata,handles); 
        case '������',%ʲôҲ���� 
    end
end
h=findobj('Tag','figure_im2bw');%�����Ƿ������ͼ���ֵ���������� 
if ~isempty(h),%�ҵ��Ļ�����ر� 
    close(h); 
end
close(findobj('Tag','figure_pjimage'));%�ر�������


% --------------------------------------------------------------------
function tbl_save_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to tbl_save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fstSave=getappdata(handles.figure_pjimage,'fstSave'); 
if(fstSave==true)
    [filename, pathname] = uiputfile({'*.bmp','BMP files';'*.jpg;','JPG files'}, 'Pick an Image'); 
    if isequal(filename,0) || isequal(pathname,0) return; else fpath=fullfile(pathname, filename); 
    end
    img_dst=getimage(handles.axes_dst); 
    imwrite(img_dst,fpath); 
    setappdata(handles.figure_pjimage,'fstPath',fpath); 
    setappdata(handles.figure_pjimage,'bSave',true); 
    setappdata(handles.figure_pjimage,'fstSave',false); 
else
    img_dst=getimage(handles.axes_dst);
    fpath=getappdata(handles.figure_pjimage,'fstPath'); 
    imwrite(img_dst,fpath); 
end 
    

% --------------------------------------------------------------------
function tbl_open_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to tbl_open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
feval(@m_file_open_Callback,handles.m_file_open,eventdata,handles); 
