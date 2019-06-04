%{
This function updates the ui Table by converting the data values entered
from matrix.probe to cells
%}

function [] = updateGUI_probeTable(handles, dataMatrixProbe,pk)

data = num2cell(dataMatrixProbe(1:pk,1:17));
set(handles.uiTableProbe, 'data', data);

end