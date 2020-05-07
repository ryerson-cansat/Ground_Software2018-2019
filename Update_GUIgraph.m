function [] = Update_GUIgraph(app)
% First fill the tables with appropriate columns.
% This function then takes the data in the table and plots it with
% specifications from the axis popup menus.
global matrix;

app.probeData = matrix.probe;

%xAxis = get(app.graphxAxis, 'Value');
%yAxis = get(app.graphyAxis, 'Value');

xAxis = app.graphXAxis.Value;
yAxis = app.graphYAxis.Value;

if(str2num(xAxis)>= 1 && str2num(xAxis)<= 15)
    app.xProbe = app.probeData(:,int64(str2num(xAxis)+1));
else
    app.xProbe = 0;
end

if(str2num(yAxis)>= 1 && str2num(yAxis)<= 15)
    app.yProbe = app.probeData(:,int64(str2num(yAxis)+1));
else
    app.yProbe = 0;
end


cla(app.UIAxes);
%grid(app.Graph1, 'on');
grid(app.UIAxes, 'on');
    
%plot(app.xProbe, app.yProbe, '.-b', 'Parent', app.Graph1);
plot(app.UIAxes, app.xProbe, app.yProbe);
hold(app.UIAxes,'on');

app.UIAxes.XLabel.String = app.graphXAxis.Items(int64(str2num(xAxis)));
app.UIAxes.YLabel.String = app.graphXAxis.Items(int64(str2num(yAxis)));
%plot(app.xProbe, app.yProbe, '.-r','Parent', app.UIAxes);

%{

handles.probeData = matrix.probe;

xAxis = get(handles.graphxAxis, 'Value');
yAxis = get(handles.graphyAxis, 'Value');

switch xAxis
    case 1
        handles.xProbe = handles.probeData(:,2);
    case 2
        handles.xProbe = handles.probeData(:,3);
    case 3
        handles.xProbe = handles.probeData(:,4);
    case 4
        handles.xProbe = handles.probeData(:,5);
    case 5
        handles.xProbe = handles.probeData(:,6);
    case 6
        handles.xProbe = handles.probeData(:,7);
    case 7
        handles.xProbe = handles.probeData(:,8);
    case 8
        handles.xProbe = handles.probeData(:,9);
    case 9
        handles.xProbe = handles.probeData(:,10);
    case 10
        handles.xProbe = handles.probeData(:,11);
    case 11
        handles.xProbe = handles.probeData(:,12);
    case 12
        handles.xProbe = handles.probeData(:,13);
    case 13
        handles.xProbe = handles.probeData(:,14);
    case 14
        handles.xProbe = handles.probeData(:,15);
    case 15
        handles.xProbe = handles.probeData(:,16);
    case 16
        handles.xProbe = handles.probeData(:,17);
    otherwise
        handles.xProbe = 0;
end

switch yAxis
    case 1
        handles.yProbe = handles.probeData(:,2);
    case 2
        handles.yProbe = handles.probeData(:,3);
    case 3
        handles.yProbe = handles.probeData(:,4);
    case 4
        handles.yProbe = handles.probeData(:,5);
    case 5
        handles.yProbe = handles.probeData(:,6);
    case 6
        handles.yProbe = handles.probeData(:,7);
    case 7
        handles.yProbe = handles.probeData(:,8);
    case 8
        handles.yProbe = handles.probeData(:,9);
    case 9
        handles.yProbe = handles.probeData(:,10);
    case 10
        handles.yProbe = handles.probeData(:,11);
    case 11
        handles.yProbe = handles.probeData(:,12);
    case 12
        handles.yProbe = handles.probeData(:,13);
    case 13
        handles.yProbe = handles.probeData(:,14);
    case 14
        handles.yProbe = handles.probeData(:,15);
    case 15
        handles.yProbe = handles.probeData(:,16);
    case 16
        handles.yProbe = handles.probeData(:,17);
    otherwise
        handles.yProbe = 0;
end


cla(handles.Graph1);
grid(handles.Graph1, 'on');
    
plot(handles.xProbe, handles.yProbe, '.-b', 'Parent', handles.Graph1);

hold(handles.Graph1,'on');

plot(handles.xProbe, handles.yProbe, '.-r','Parent', handles.Graph1);
%}