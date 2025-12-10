clear

dirRuns = dir("subj*");
for iR = 1:numel(dirRuns)
    dRname = dirRuns(iR).name;
    dirTrials = dir(fullfile(dRname, "epoch*.mat"));
    eeg = [];
    for iT = 1:numel(dirTrials)
        load(fullfile(dirTrials(iT).folder, dirTrials(iT).name))
        if isempty(eeg)
            eeg = eegNow;
        else
            eeg = cat(3, eeg, eegNow);
        end
    end
    eeg = shiftdim(eeg, 2);

    fields = split(dRname, '_');
    fields = fields(1:end-1);
    values = {};
    for iF = 1:numel(fields)
        elem = split(fields(iF), '-');
        values{iF} = lower(elem{2});
    end
    saveName = sprintf("sub-%s_ses-%s_task-rocket_run-%s_eeg.mat", ...
        values{1}, values{3}, values{4});
    save(saveName, "eeg")
end