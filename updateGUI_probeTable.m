%{
This function updates the ui Table by converting the data values entered
from matrix.probe to cells
%}

function [] = updateGUI_probeTable(app, dataMatrixProbe,pk)
dataMatrixProbe(1:pk,1:15)
data = num2cell(dataMatrixProbe(1:pk,1:15));
%set(handles.uiTableProbe, 'data', data);
app.UITable.Data = data;
end