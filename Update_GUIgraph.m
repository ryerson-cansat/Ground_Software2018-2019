function [] = Update_GUIgraph(handles, table_filename)
% First fill the tables with appropriate columns.
% This function then takes the data in the table and plots it with
% specifications from the axis popup menus.
global matrix;

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

