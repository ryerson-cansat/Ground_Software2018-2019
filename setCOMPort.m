function [] = setCOMPort(app)
%setCOMPort sets available serial port of the arduino
%   Looks up all available ports and sets the proper port. If no port,
%   displays EMPTY PORTS.

% Returns serial prot HW information as object.
info = instrhwinfo('serial');
availPorts = info.SerialPorts; % Returns matrix

if (numel(availPorts) ~=0)
    app.COMSelectDropDown.Items = availPorts;
%     set(app.COMSelect, 'Value', 1);
else
    app.COMSelectDropDown.Items = {'EMPTY PORTS'};
   
end

end

