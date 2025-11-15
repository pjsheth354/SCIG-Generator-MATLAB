clc;
%Time for Array (To Workspace) - SCIG Model (Simulink based)
t = 0:0.000002:1;
subplot(311);
plot(t,out.is_IG,'LineWidth',1.5);
xlabel("Time");ylabel("A");title("Stator Currents (ias,ibs,ics)");ylim([-30000 30000]);
subplot(312);
plot(t,out.Te_IG,'LineWidth',1.5);
xlabel("Time");ylabel("Nm");title("Electromagnetic Torque (Te)");ylim([-40000 40000]);
subplot(313);
plot(t,out.nm_IG,'LineWidth',1.5);
xlabel("Time");ylabel("RPM");title("Rotor Speed (nm)");ylim([1440 1520]);
stepinfo(out.nm_IG,t)

%Time for Array (To Workspace) - SCIG Model (Simscape Based)
% t = 0:0.000002:1;
% subplot(311);
% plot(t,out.is_IG2,'LineWidth',1.5);
% xlabel("Time");ylabel("A");title("Stator Currents ias,ibs,ics");ylim([-30000 30000]);
% subplot(312);
% plot(t,out.Te_IG2,'LineWidth',1.5);
% xlabel("Time");ylabel("Nm");title("Electromagnetic Torque (Te)");ylim([-40000 40000]);
% subplot(313);
% plot(t,out.nm_IG2,'LineWidth',1.5);
% xlabel("Time");ylabel("RPM");title("Rotor Speed (nm)");ylim([1440 1520]);
% stepinfo(out.nm_IG2,t)
