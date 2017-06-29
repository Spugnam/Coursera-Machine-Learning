%% Machine Learning Online Class

C=0; sigma=0;
C_accu = 0; sigma_accu = 0;

predictions = 1000;
for C_accu = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
for sigma_accu = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
predictions = svmPredict(model, Xval);
if mean(double(predictions ~= yval)) < predictions
predictions = mean(double(predictions ~= yval))
C = C_accu
sigma = sigma_accu
fprintf('Program paused. Press enter to continue.\n');
pause;
endif
end
end
