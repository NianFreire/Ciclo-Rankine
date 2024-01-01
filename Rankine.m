function varargout = Rankine(varargin)
% RANKINE MATLAB code for Rankine.fig
%      RANKINE, by itself, creates a new RANKINE or raises the existing
%      singleton*.
%
%      H = RANKINE returns the handle to a new RANKINE or the handle to
%      the existing singleton*.
%
%      RANKINE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RANKINE.M with the given input arguments.
%
%      RANKINE('Property','Value',...) creates a new RANKINE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Rankine_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Rankine_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Rankine

% Last Modified by GUIDE v2.5 31-May-2016 19:29:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Rankine_OpeningFcn, ...
                   'gui_OutputFcn',  @Rankine_OutputFcn, ...
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


% --- Executes just before Rankine is made visible.
function Rankine_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Rankine (see VARARGIN)

% Choose default command line output for Rankine
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Rankine wait for user response (see UIRESUME)
% uiwait(handles.figure1);

clc
movegui('center')
set(handles.radiobutton1, 'Value', 1);
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);
set(handles.radiobutton6, 'Value', 0);
set(handles.radiobutton9, 'Value', 1);
set(handles.radiobutton10, 'Value', 0);
axes(handles.axes1);
imageR=imread('Exemplo.png');
image(imageR);
axis off
axis image
yh=get(handles.togglebutton1, 'Value');
if yh==1
    cla 
end
axes(handles.axes2);
image1=imread('Logo_EEL.jpg');
image(image1);
axis off
axis image
axes(handles.axes3);
image2=imread('Logo_USP.jpg');
image(image2);
axis off
axis image


% --- Outputs from this function are returned to the command line.
function varargout = Rankine_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

  
% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel3,'Visible','On');
ps=[0.6113	0.8721	1.2276	1.7050	2.3390	3.1690	4.2460	5.6280	7.3840	9.5930	12.3500	15.7580	19.9410	25.0300	31.1900	38.5800	47.3900	57.8300	70.1400	84.5500	101.3000 120.8000 143.3000 169.1000	198.5000 232.1000 270.1000 313.0000	361.3000 415.4000 475.9000 543.1000	617.8000 700.5000 791.7000 892.0000	1002.2000 1122.7000	1254.4000 1397.8000	1553.8000 1723.0000	1906.3000 2104.2000	2317.8000 2547.7000	2794.9000 3060.1000	3344.2000 3648.2000	3973.0000 4319.5000	4688.6000 5081.3000	5498.7000 5941.8000	6411.7000 6909.4000	7436.0000 7992.8000	8581.0000 9201.8000	9856.6000 10547.0000 11274.0000 12040.0000 12845.0000 13694.0000 14586.0000 15525.0000 16514.0000 17554.0000 18651.0000 19807.0000 21028.0000 22089.0000];
Ts=[0.01 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100 105 110 115 120 125 130 135 140 145 150 155 160 165 170 175 180 185 190 195 200 205 210 215 220 225 230 235 240 245 250 255 260 265 270 275 280 285 290 295 300 305 310 315 320 325 330 335 340 345 350 355 360 365 370 374.1];
D=[0.001	0.001	0.001	0.001001	0.001002	0.001003	0.001004	0.001006	0.001008	0.00101	0.001012	0.001015	0.001017	0.00102	0.001023	0.001026	0.001029	0.001032	0.001036	0.00104	0.001044	0.001047	0.001052	0.001056	0.00106	0.001065	0.00107	0.001075	0.00108	0.001085	0.00109	0.001096	0.001102	0.001108	0.001114	0.001121	0.001127	0.001134	0.001141	0.001149	0.001156	0.001164	0.001173	0.001181	0.00119	0.001199	0.001209	0.001219	0.001229	0.00124	0.001251	0.001263	0.001276	0.001289	0.001302	0.001317	0.001332	0.001348	0.001366	0.001384	0.001404	0.001425	0.001447 0.001472 0.001499 0.001528 0.001561 0.001597 0.001638 0.001685 0.00174 0.001807 0.001892 0.002011 0.002213 0.003155]; 
Els=[0.0000	20.9800	41.9900	62.9800	83.9400	104.8700	125.7700	146.6600	167.5400	188.4200	209.3100	230.2000	251.1100	272.0300	292.9600	313.9100	334.8800	355.8800	376.9000	397.9400	419.0200	440.1300	461.2700	482.4600	503.6900	524.9600	546.2900	567.6700	589.1100	610.6100	632.1800	653.8200	675.5300	697.3200	719.2000	741.1600	763.2100	785.3600	807.6100	829.9600	852.4300	875.0300	897.7500	920.6100	943.6100	966.7700	990.1000	1013.6100	1036.3100	1061.2100	1085.3400	1109.7200	1134.3500	1159.2700	1184.4900	1210.0500	1235.9700	1262.2900	1289.0400	1316.2700	1344.0100	1372.3300	1401.2900 1430.9700 1461.4500 1492.8400 1525.2900 1558.9800 1594.1500 1631.1700 1670.5400 1713.1300 1760.4800 1815.9600 1890.3700 2099.2600];
Sls=[0.0000	0.0761	0.1510	0.2245	0.2966	0.3673	0.4369	0.5052	0.5724	0.6386	0.7037	0.7679	0.8311	0.8934	0.9548	1.0154	1.0752	1.1342	1.1924	1.2500	1.3068	1.3629	1.4184	1.4733	1.5275	1.5812	1.6343	1.6869	1.7390	1.7906	1.8417	1.8924	1.9426	1.9924	2.0418	2.0909	2.1395	2.1878	2.2358	2.2835	2.3308	2.3779	2.4247	2.4713	2.5177	2.5639	2.6099	2.6557	2.7015	2.7471	2.7927	2.8382	2.8837	2.9293	2.9750	3.0208	3.0667	3.1129	3.1593	3.2061	3.2533	3.3009	3.3492 3.3981 3.4479 3.4987 3.5506 3.6040 3.6593 3.7169 3.7776 3.8427 3.9146 3.9983 4.1104 4.4297];
Evs=[2501.3500	2510.5400	2519.7400	2528.9100	2538.0600	2547.1700	2556.2500	2565.2800	2574.2600	2583.1900	2592.0600	2600.8600	2609.5900	2618.2400	2626.8000	2635.2800	2643.6600	2651.9300	2660.0900	2668.1300	2676.0500	2683.8300	2691.4700	2698.9600	2706.3000	2713.4600	2720.4600	2727.2600	2733.8700	2740.2600	2746.4400	2752.3900	2758.0900	2763.5300	2768.7000	2773.5800	2778.1600	2782.4300	2786.3700	2789.9600	2793.1800	2796.0300	2798.4800	2800.5100	2802.1200	2803.2700	2803.9500	2804.1300	2803.8100	2802.9500	2801.5200	2799.5100	2796.8900	2793.6100	2789.6500	2784.9700	2779.5300	2773.2700	2766.1300	2758.0500	2748.9400	2738.7200	2727.2700 2714.4400 2700.0800 2683.9700 2665.8500 2645.3500 2622.0100 2595.1900 2563.9200 2526.7200 2481.0000 2421.4000 2332.1200 2099.2600];
Svs=[9.1562	9.0257	8.9007	8.7813	8.6671	8.5579	8.4533	8.3530	8.2569	8.1647	8.0762	7.9912	7.9095	7.8309	7.7552	7.6824	7.6121	7.5444	7.4790	7.4158	7.3548	7.2958	7.2386	7.1832	7.1295	7.0774	7.0269	6.9777	6.9298	6.8832	6.8378	6.7934	6.7501	6.7078	6.6663	6.6256	6.5857	6.5464	6.5078	6.4697	6.4322	6.3951	6.3584	6.3221	6.2860	6.2502	6.2146	6.1791	6.1436	6.1083	6.0729	6.0374	6.0018	5.9661	5.9301	5.8937	5.8570	5.8198	5.7821	5.7436	5.7044	5.6642	5.6229 5.5803 5.5361 5.4900 5.4416 5.3903 5.3356 5.2763 5.2111 5.1378 5.0525 4.9470 4.7972 4.4297];
TSVap=[50 100 150 200 250 300 350 375 400 500 600 700 800 900 1000 1100 1200 1300];
PSVap=[10 50 100 200 300 400 500 600 800 1000 1200 1400 1600 1800 2000 2500 3000 4000 5000 6000 8000 10000 15000 20000 25000 30000 35000 40000 45000 50000];
EVap=[2592.56	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0; 2687.46	2682.52	2676.22	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0; 2782.99	2780.08	2776.38	2768.8	2760.95	2752.82	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0; 2879.52	2877.64	2875.27	2870.46	2865.54	2860.51	2855.37	2850.12	2839.25	2827.86	2815.9	2803.32	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0; 2977.31	2975.99	2974.33	2970.98	2967.59	2964.16	2960.68	2957.16	2949.97	2942.59	2935.01	2927.22	2919.2	2910.96	2902.46	2880.06	2855.75	0	0	0	0	0	0	0	0	0	0	0	0	0; 3076.51	3075.52	3074.28	3071.79	3069.28	3066.75	3064.2	3061.63	3056.43	3051.15	3045.8	3040.35	3034.83	3029.21	3023.5	3008.81	2993.48	2960.68	2924.53	2884.19	2784.98	0	0	0	0	0	0	0	0	0; 3178.01	3177.21	3176.2	3174.17	3172.13	3170.08	3167.65	3165.66	3161.68	3157.65	3153.59	3149.49	3145.35	3141.18	3136.96	3126.24	3115.25	3092.43	3068.39	3042.97	2987.3	2923.39	2692.41	0	0	0	0	0	0	0; 3228.76	3228.05	3227.16	3225.36	3223.56	3221.75	3219.74	3217.96	3214.38	3210.77	3207.13	3203.46	3199.76	3196.04	3192.28	3182.76	3173.04	3152.97	3131.02	3110.07	3062.79	3009.93	2833.93	2519.5	1848 1791.43	1762.4	1742.71	1729.66	1716.6; 3279.51	3278.89	3278.11	3276.55	3274.98	3273.41	3271.83	3270.25	3267.07	3263.88	3260.66	3257.42	3254.17	3250.9	3247.6	3239.28	3230.82	3213.51	3195.64	3177.17	3138.28	3096.46	2975.44	2818.07	2580.2	2151.04	1987.6	1930.83	1902.72	1874.6; 3489.05	3488.62	3488.09	3487.03	3485.96	3484.89	3483.82	3482.75	3480.6	3478.44	3476.28	3474.11	3471.93	3469.75	3467.55	3462.04	3456.48	3445.21	3433.76	3422.12	3398.27	3373.63	3308.53	3238.18	3162.4	3081.03	2994.4	2903.26	2811.68	2720.1; 3705.4	3705.1	3704.72	3703.96	3703.2	3702.44	3701.67	3700.91	3699.38	3697.85	3696.32	3694.78	3693.23	3691.69	3690.14	3686.25	3682.34	3674.44	3666.47	3658.4	3642.03	3625.34	3582.3	3537.57	3491.4	3443.91	3395.5	3346.38	3296.99	3247.6; 3928.73	3928.51	3928.23	3297.66	3927.1	3926.53	3925.97	3925.41	3924.27	3923.14	3922.01	3920.87	3919.73	3918.59	3917.45	3914.59	3911.72	3905.94	3900.13	3894.28	3882.47	3870.52	3840.12	3809.09	3777.5	3745.67	3713.5	3681.29	3649.05	3616.8; 4159.1	4158.92	4158.71	4158.27	4157.83	4157.4	4156.96	4156.52	4155.65	4154.78	4153.9	4153.03	4152.15	4151.27	4150.4	4148.2	4146	4141.59	4137.17	4132.74	4123.84	4114.91	4092.43	4069.8	4047.1	4024.31	4001.5	3978.8	3956.20	3933.6; 4396.44	4396.3	4396.12	4395.77	4395.42	4395.06	4394.71	4394.36	4393.65	4392.94	4392.23	4391.53	4390.82	4390.11	4389.4	4387.64	4385.87	4382.34	4378.82	4375.29	4368.26	4361.24	4343.75	4326.37	4309.1	4291.93	4274.9	4257.93	4241.17	4224.4; 4640.58	4640.46	4640.31	4640.01	4639.71	4639.41	4639.11	4638.81	4638.2	4637.6	4637	4636.41	4635.81	4635.21	4634.61	4633.12	4631.63	4628.65	4625.69	4622.74	4616.87	4611.04	4596.63	4582.45	4568.5	4554.68	4541.1	4527.59	4514.35	4501.1; 4891.19	4891.08	4890.95	4890.68	4890.41	4890.15	4889.88	4889.61	4889.08	4888.55	4888.02	4887.49	4886.95	4886.42	4885.89	4884.57	4883.26	4880.63	4878.02	4875.42	4870.25	4865.14	4852.56	4840.24	4828.2	4816.28	4804.6	4793.08	4781.79	4770.5; 5147.78	5147.69	5147.56	5147.32	5147.07	5146.83	5146.58	5146.34	5145.85	5145.36	5144.87	5144.38	5143.89	5143.4	5142.92	5141.7	5140.49	5138.07	5135.67	5133.28	5128.54	5123.84	5112.27	5100.96	5089.9	5078.97	5068.3	5057.72	5047.46	5037.2; 5409.7	5409.61	5409.49	5409.26	5409.03	5408.8	5408.57	5408.34	5407.87	5407.41	5406.95	5406.49	5406.02	5405.56	5405.1	5403.95	5402.81	5400.52	5398.24	5395.97	5391.46	5386.99	5375.94	5365.1	5354.4	5343.95	5333.6	5323.45	5313.53	5303.6];
SVap=[8.1749	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0; 8.4479	7.6947	7.3612	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0; 8.6881	7.94	7.6133	7.2795	7.0778	6.9299	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0; 8.9037	8.1579	7.8342	7.5066	7.3115	7.1706	7.0592	6.9665	6.8158	6.6939	6.5898	6.4975	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0; 9.1002	8.3555	8.0332	7.7085	7.5165	7.3788	7.2708	7.1816	7.0384	6.9246	6.8293	6.7467	6.6732	6.6066	6.5452	6.4084	6.2871	0	0	0	0	0	0	0	0	0	0	0	0	0; 9.2812	8.5372	8.2157	7.8926	7.7022	7.5661	7.4598	7.3723	7.2327	7.1228	7.0316	6.9533	6.8844	6.8226	6.7663	6.6437	6.5389	6.3614	6.2083	6.0673	5.7905	0	0	0	0	0	0	0	0	0; 9.4444	8.7007	8.3796	8.0572	7.8676	7.7323	7.6328	7.5463	7.4088	7.301	7.212	7.1359	7.0693	7.0099	6.9562	6.8402	6.7427	6.582	6.4492	6.3334	6.13	5.9442	5.442	0	0	0	0	0	0	0; 9.526	8.7824	8.4615	8.1394	7.9502	7.8153	7.7102	7.6239	7.4444	7.3795	7.2909	7.2152	7.1491	7.0901	7.0368	6.922	6.8255	6.6703	6.5364	6.4224	6.2201	6.0781	5.6615	5.0954	4.032	3.9303	3.8722	3.8289	3.7964	3.7639; 9.6076	8.8641	8.5434	8.2217	8.0329	7.8984	7.7937	7.7078	7.515	7.465	7.3773	7.3025	7.2373	7.1793	7.127	7.0147	6.9211	6.7689	6.6458	6.5407	6.3633	6.2119	5.881	5.5539	5.1418	4.4728	4.2126	4.1134	4.0583	4.0031; 9.8977	9.1545	8.8341	8.5132	8.325	8.1912	8.0872	8.002	7.8672	7.7621	7.6758	7.6026	7.5389	7.4824	7.4316	7.3233	7.2337	7.09	6.9758	6.8802	6.7239	6.5965	6.3442	6.14	5.9592	5.7904	5.6282	5.4699	5.3213	5.1726; 10.1608	9.4177	9.0975	8.7769	8.5892	8.4557	8.3521	8.2673	8.1332	8.0289	7.9434	7.871	7.808	7.7523	7.7023	7.596	7.5084	7.3688	7.2588	7.1676	7.0205	6.9028	6.6775	6.5048	6.3602	6.233	6.1179	6.0113	5.9146	5.8178; 10.4028	9.6599	9.3398	9.0194	8.8319	8.6987	8.5952	8.5107	8.377	8.2731	8.1881	8.116	8.0535	7.9983	7.9487	7.8435	7.7571	7.6198	7.5122	7.4234	7.2812	7.1687	6.9572	6.7993	6.6707	6.5606	6.4631	6.375	6.2970	6.2189; 10.6281	9.8852	9.5652	9.245	9.0575	8.9244	8.8211	8.7367	8.6033	8.4996	8.4149	8.3431	8.2808	8.2258	8.1766	8.072	7.9862	7.8502	7.744	7.6566	7.5173	7.4077	7.204	7.0544	6.9345	6.8332	6.745	6.6662	6.5976	6.529; 10.8395	10.0967	9.7767	9.4565	9.2691	9.1361	9.0329	8.9485	8.8153	8.7118	8.6272	8.5555	8.4934	8.4386	8.3895	8.2853	8.1999	8.0647	7.9593	7.8727	7.735	7.6272	7.4279	7.283	7.168	7.0717	6.9386	6.915	6.8516	6.7882; 11.0392	10.2964	9.9764	9.6563	9.4689	9.336	9.2238	9.1484	9.0153	8.9119	8.8274	8.7558	8.6938	8.639	8.59	8.486	8.4009	8.2661	8.1612	8.0751	7.9384	7.8315	7.6347	7.4925	7.3802	7.2867	7.2064	7.1356	7.0751	7.0146; 11.2287	10.4858	10.1658	9.8458	9.6585	9.5255	9.4224	9.3381	9.2049	9.1016	9.0171	8.9456	8.8837	8.829	8.78	8.6761	8.5911	8.4566	8.3519	8.2661	8.1299	8.0236	7.8282	7.6874	7.5765	7.4845	7.4037	7.3364	7.2774	7.2184; 11.409	10.6662	10.3462	10.0262	9.8389	9.7059	9.6028	9.5185	9.3854	9.2821	9.1977	9.1262	9.0642	9.0096	8.9606	8.8569	8.7719	8.6376	8.533	8.4473	8.3115	8.2054	8.0108	7.8706	7.7605	7.6691	7.591	7.5224	7.4641	7.4058; 11.581	10.8382	10.5182	10.1982	10.0109	9.878	9.7749	9.6906	9.5575	9.4542	9.3698	9.2983	9.2364	9.1817	9.1328	9.0291	8.9442	8.8099	8.7055	8.6199	8.4842	8.3783	8.1839	8.0441	7.9342	7.8432	7.7653	7.6969	7.6389	7.5808];
Phi=str2double(get(handles.edit1, 'String'));
Ph=Phi*100;
Th=str2double(get(handles.edit2, 'String'));
Pci=str2double(get(handles.edit3, 'String'));
Pc=Pci*100;
Pri=str2double(get(handles.edit4, 'String'));
Pr2=Pri*100;
Tr2=str2double(get(handles.edit5, 'String'));
Pmi=str2double(get(handles.edit12, 'String'));
Pm=Pmi*100;
Pmi2=str2double(get(handles.edit6, 'String'));
Pm2=Pmi2*100;
Pmi3=str2double(get(handles.edit7, 'String'));
Pm3=Pmi3*100;
Ef1i=str2double(get(handles.edit24, 'String'));
Ef1=Ef1i/100;
Ef2i=str2double(get(handles.edit25, 'String'));
Ef2=Ef2i/100;
Ef3i=str2double(get(handles.edit26, 'String'));
Ef3=Ef3i/100;
Ef4i=str2double(get(handles.edit27, 'String'));
Ef4=Ef4i/100;
index1=get(handles.radiobutton1, 'Value');
index2=get(handles.radiobutton2, 'Value');
index3=get(handles.radiobutton3, 'Value');
index4=get(handles.radiobutton4, 'Value');
index5=get(handles.radiobutton5, 'Value');
index6=get(handles.radiobutton6, 'Value');
irr1=get(handles.radiobutton9, 'Value');
irr2=get(handles.radiobutton10, 'Value');
if irr1==1
if index1==1
    if(Ph>ps(end))
        Tcs=Ts(end);
    else
        Tcs=spline(ps,Ts,Ph);
    end
    if(Ph>=PSVap(1) && Ph<=PSVap(end))
    if(Th>Tcs && Th<=800)
        if(Pc>=ps(1) && Pc<=100)
    Elsc=spline(ps,Els,Pc);
    Slsc=spline(ps,Sls,Pc);
    Evsc=spline(ps,Evs,Pc);
    Svsc=spline(ps,Svs,Pc);
    Svv=spline(Ts,Svs,Tcs);
    Evv=spline(Ts,Evs,Tcs);
    Svh1=spline(PSVap,SVap,Ph);
    Svh2=transpose(Svh1);
    Li=length(TSVap);
    if(Ph<ps(end))
        K1=sum(Svh2<Svv);
        K2=Li+1-K1;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svv;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evv;
        Evh=spline(Tth,Evh3,Th);
    else
        K1=find(TSVap==375);
        K2=Li+2-K1;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svh3(3)-(Svh3(3)-Svh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evh3(3)-(Evh3(3)-Evh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Evh=spline(Tth,Evh3,Th);
    end
    D1=spline(ps,D,Pc);
    X=(Svh-Slsc)/(Svsc-Slsc);
    Erc=Evsc*X+(1-X)*Elsc;
    Tb=D1*(Ph-Pc);
    Qh=Evh-Tb-Elsc;
    Tt=Evh-Erc;
    Ef=((Tt-Tb)/Qh)*100;
    set(handles.edit8, 'String', Qh);
    set(handles.edit9, 'String', Tt);
    set(handles.edit10, 'String', Tb);
    set(handles.edit11, 'String', Ef);
    axes(handles.axes1);
    imageC=imread('1.png');
    image(imageC);
    axis off
    axis image
    else
            set(handles.uipanel7,'Visible','On');
            set(handles.text18,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text17,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text16,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
end
if index2==1
    if(Ph>ps(end))
        Tcs=Ts(end);
    else
        Tcs=spline(ps,Ts,Ph);
    end
    if(Ph>=PSVap(1) && Ph<=PSVap(end))
    if(Th>Tcs && Th<=800)
        if(Pc>=ps(1) && Pc<=100)
    Elsc=spline(ps,Els,Pc);
    Slsc=spline(ps,Sls,Pc);
    Evsc=spline(ps,Evs,Pc);
    Svsc=spline(ps,Svs,Pc);
    Svv=spline(Ts,Svs,Tcs);
    Evv=spline(Ts,Evs,Tcs);
    Svh1=spline(PSVap,SVap,Ph);
    Svh2=transpose(Svh1);
    Li=length(TSVap);
    if(Ph<ps(end))
        K1=sum(Svh2<Svv);
        K2=Li+1-K1;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svv;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evv;
        Evh=spline(Tth,Evh3,Th);
    else
        K1=find(TSVap==375);
        K2=Li+2-K1;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svh3(3)-(Svh3(3)-Svh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evh3(3)-(Evh3(3)-Evh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Evh=spline(Tth,Evh3,Th);
    end
    if(Pm>=ps(1) && Pm<ps(end))
        if(Ph>Pm)
    D1=spline(ps,D,Pc);
    D2=spline(ps,D,Pm);
    Elm=spline(ps,Els,Pm);
    Evm=spline(ps,Evs,Pm);
    Slm=spline(ps,Sls,Pm);
    Svm=spline(ps,Svs,Pm); 
    Tsat=spline(ps,Ts,Pm);
    if(Svh<=Svm)
        X1=(Svh-Slsc)/(Svsc-Slsc);
        X2=(Svh-Slm)/(Svm-Slm);
        Tb1=D1*(Pm-Pc);
        Tb2=D2*(Ph-Pm);
        Erc=Evsc*X1+(1-X1)*Elsc;
        Erm=Evm*X2+(1-X2)*Elm;
        Qh=Evh-Tb2-Elm;
        Tt=(Evh-Erc)-(Erm-Erc)*((Elm-Elsc-Tb1)/(Erm-Elsc-Tb1));
        Ef=((Tt-Tb1-Tb2)/Qh)*100;
        Tb=Tb1+Tb2;
        %Misturador=Mistura Saturada
    else
        Smh1=spline(PSVap,SVap,Pm);
        Smh2=transpose(Smh1);
        J=sum(Smh2<Svm);
        N=Li+1-J;
        Smh=wkeep(Smh2,N,'r');
        TSVap1=wkeep(TSVap,N,'r');
        Smh(1)=Svm;
        TSVap1(1)=Tsat;
        Tmh=spline(Smh,TSVap1,Svh);
        Emvh1=spline(PSVap,EVap,Pm);
        Emvh2=transpose(Emvh1);
        Emvh3=wkeep(Emvh2,N,'r');
        Emvh3(1)=Evm;
        Emvh=spline(TSVap1,Emvh3,Tmh);
        X1=(Svh-Slsc)/(Svsc-Slsc);
        Tb1=D1*(Pm-Pc);
        Tb2=D2*(Ph-Pm);
        Erc=Evsc*X1+(1-X1)*Elsc;
        Qh=Evh-Tb2-Elm;
        Tt=(Evh-Erc)-(Emvh-Erc)*((Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1));
        Ef=((Tt-Tb1-Tb2)/Qh)*100;
        Tb=Tb1+Tb2;
        %Misturador=Vapor Superaquecido
    end
        set(handles.edit8, 'String', Qh);
        set(handles.edit9, 'String', Tt);
        set(handles.edit10, 'String', Tb);
        set(handles.edit11, 'String', Ef);
        axes(handles.axes1);
        imageC=imread('2.png');
        image(imageC);
        axis off
        axis image
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text25,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text25,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text18,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text17,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text16,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
end
if index3==1
    if(Ph>ps(end))
        Tcs=Ts(end);
    else
        Tcs=spline(ps,Ts,Ph);
    end
    if(Ph>=PSVap(1) && Ph<=PSVap(end))
    if(Th>Tcs && Th<=800)
        if(Pc>=ps(1) && Pc<=100)
    Elsc=spline(ps,Els,Pc);
    Slsc=spline(ps,Sls,Pc);
    Evsc=spline(ps,Evs,Pc);
    Svsc=spline(ps,Svs,Pc);
    Svv=spline(Ts,Svs,Tcs);
    Evv=spline(Ts,Evs,Tcs);
    Svh1=spline(PSVap,SVap,Ph);
    Svh2=transpose(Svh1);
    Li=length(TSVap);
    if(Ph<ps(end))
        K1=sum(Svh2<Svv);
        K2=Li+1-K1;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svv;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evv;
        Evh=spline(Tth,Evh3,Th);
    else
        K1=find(TSVap==375);
        K2=Li+2-K1;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svh3(3)-(Svh3(3)-Svh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evh3(3)-(Evh3(3)-Evh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Evh=spline(Tth,Evh3,Th);
    end
    if(Pr2>=PSVap(1) && Pr2<=ps(end))
        Trs=spline(ps,Ts,Pr2);
        if(Tr2>=Trs && Tr2<=800)
    D1=spline(ps,D,Pc);
    Svr=spline(ps,Svs,Pr2);
    Slr=spline(ps,Sls,Pr2);
    Evr=spline(ps,Evs,Pr2);
    Elr=spline(ps,Els,Pr2);
    Tsat=spline(ps,Ts,Pr2);
    Svr1=spline(PSVap,SVap,Pr2);
    Svr2=transpose(Svr1);
    K11=sum(Svr2<Svr);
    K22=Li+1-K11;
    Svr3=wkeep(Svr2,K22,'r');
    Svr3(1)=Svr;
    Ttr=wkeep(TSVap,K22,'r');
    Ttr(1)=Tsat;
    Svrh=spline(Ttr,Svr3,Tr2);
    Evr1=spline(PSVap,EVap,Pr2);
    Evr2=transpose(Evr1);
    Evr3=wkeep(Evr2,K22,'r');
    Evr3(1)=Evr;
    Evrh=spline(Ttr,Evr3,Tr2);
    if(Svh<=Svr)
        X1=(Svrh-Slsc)/(Svsc-Slsc);
        X2=(Svh-Slr)/(Svr-Slr);
        Tb=D1*(Ph-Pc);
        Erc=Evsc*X1+(1-X1)*Elsc;
        Err=Evr*X2+(1-X2)*Elr;
        Qh1=Evh-Elsc-Tb;
        Tt1=Evh-Err;
        Tt2=Evrh-Erc;
        Qr=Evrh-Err;
        Ef=((Tt1+Tt2-Tb)/(Qh1+Qr))*100;
        Qh=Qh1+Qr;      
        Tt=Tt1+Tt2;
        %Saída da TAP=Mistura Saturada
    else
        Srh1=spline(PSVap,SVap,Pr2);
        Srh2=transpose(Srh1);
        J=sum(Srh2<Svr);
        N=Li+1-J;
        Srh=wkeep(Srh2,N,'r');
        TSVap1=wkeep(TSVap,N,'r');
        Srh(1)=Svr;
        TSVap1(1)=Tsat;
        Trh=spline(Srh,TSVap1,Svh);
        Ert=spline(PSVap,EVap,Pr2);
        Ert1=transpose(Ert);
        Y=sum(Ert1<Evr);
        Y1=Li+1-Y;
        Ert2=wkeep(Ert1,Y1,'r');
        Ert2(1)=Evr;
        Ervh=spline(TSVap1,Ert2,Trh);
        X1=(Svrh-Slsc)/(Svsc-Slsc);
        Tb=D1*(Ph-Pc);
        Erc=Evsc*X1+(1-X1)*Elsc;
        Qh1=Evh-Tb-Elsc;
        Tt1=Evh-Ervh;
        Tt2=Evrh-Erc;
        Qr=Evrh-Ervh;
        Ef=((Tt1+Tt2-Tb)/(Qh1+Qr))*100;
        Qh=Qh1+Qr;
        Tt=Tt1+Tt2;
        %Saída da TAP=Vapor Superaquecido
    end
        set(handles.edit8, 'String', Qh);
        set(handles.edit9, 'String', Tt);
        set(handles.edit10, 'String', Tb);
        set(handles.edit11, 'String', Ef);
        axes(handles.axes1);
        imageC=imread('3.png');
        image(imageC);
        axis off
        axis image
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text20,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text19,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text18,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text17,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text16,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
end
if index4==1
    if(Ph>ps(end))
        Tcs=Ts(end);
    else
        Tcs=spline(ps,Ts,Ph);
    end
    if(Ph>=PSVap(1) && Ph<=PSVap(end))
    if(Th>Tcs && Th<=800)
        if(Pc>=ps(1) && Pc<=100)
    Elsc=spline(ps,Els,Pc);
    Slsc=spline(ps,Sls,Pc);
    Evsc=spline(ps,Evs,Pc);
    Svsc=spline(ps,Svs,Pc);
    Svv=spline(Ts,Svs,Tcs);
    Evv=spline(Ts,Evs,Tcs);
    Svh1=spline(PSVap,SVap,Ph);
    Svh2=transpose(Svh1);
    Li=length(TSVap);
    if(Ph<ps(end))
        K1=sum(Svh2<Svv);
        K2=Li+1-K1;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svv;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evv;
        Evh=spline(Tth,Evh3,Th);
    else
        K1=find(TSVap==375);
        K2=Li+2-K1;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svh3(3)-(Svh3(3)-Svh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evh3(3)-(Evh3(3)-Evh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Evh=spline(Tth,Evh3,Th);
    end
    if(Pm2>=ps(1) && Pm2<ps(end))
        if(Pr2>=PSVap(1) && Pr2<=ps(end))
            Tr2s=spline(ps,Ts,Pr2);
            if(Tr2>=Tr2s && Tr2<=800)
                if(Ph>Pm2)
    D1=spline(ps,D,Pc);
    D2=spline(ps,D,Pm2);
    Svr=spline(ps,Svs,Pr2);
    Slr=spline(ps,Sls,Pr2);
    Svm=spline(ps,Svs,Pm2);
    Slm=spline(ps,Sls,Pm2);
    Elr=spline(ps,Els,Pr2);
    Evr=spline(ps,Evs,Pr2);
    Elm=spline(ps,Els,Pm2);
    Evm=spline(ps,Evs,Pm2);
    Tsat1=spline(ps,Ts,Pr2);
    Tsat2=spline(ps,Ts,Pm2);
    Svr1=spline(PSVap,SVap,Pr2);
    Svr2=transpose(Svr1);
    K11=sum(Svr2<Svr);
    K22=Li+1-K11;
    Svr3=wkeep(Svr2,K22,'r');
    Svr3(1)=Svr;
    Ttr=wkeep(TSVap,K22,'r');
    Ttr(1)=Tsat1;
    Svrh=spline(Ttr,Svr3,Tr2);
    Evr1=spline(PSVap,EVap,Pr2);
    Evr2=transpose(Evr1);
    Evr3=wkeep(Evr2,K22,'r');
    Evr3(1)=Evr;
    Evrh=spline(Ttr,Evr3,Tr2);
    if (Svh>Svr)
        Srh1=spline(PSVap,SVap,Pr2);
        Srh2=transpose(Srh1);
        J=sum(Srh2<Svr);
        N=Li+1-J;
        Srh=wkeep(Srh2,N,'r');
        TSVap1=wkeep(TSVap,N,'r');
        Srh(1)=Svr;
        TSVap1(1)=Tsat1;
        Trh=spline(Srh,TSVap1,Svh);
        Ert=spline(PSVap,EVap,Pr2);
        Ert1=transpose(Ert);
        Y=sum(Ert1<Evr);
        Y1=Li+1-Y;
        Ert2=wkeep(Ert1,Y1,'r');
        Ert2(1)=Evr;
        Ervh=spline(TSVap1,Ert2,Trh);
        %Saída da TAP=Vapor Superaquecido
        if(Svrh>Svm)
            Smh3=spline(PSVap,SVap,Pm2);
            Smh4=transpose(Smh3);
            J=sum(Smh4<Svm);
            N=Li+1-J;
            Smh=wkeep(Smh4,N,'r');
            TSVap2=wkeep(TSVap,N,'r');
            Smh(1)=Svm;
            TSVap2(1)=Tsat2;
            Tmh=spline(Smh,TSVap2,Svrh);
            Em5=spline(PSVap,EVap,Pm2);
            Em6=transpose(Em5);
            Emh=wkeep(Em6,N,'r');
            Emh(1)=Evm;
            Emvh=spline(TSVap2,Emh,Tmh);
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            Tb1=D1*(Pm2-Pc);
            Tb2=D2*(Ph-Pm2);
            Erc=Evsc*X1+(1-X1)*Elsc;
            Qh1=Evh-Tb2-Elm;
            Qr=Evrh-Ervh;
            Qh=Qh1+Qr;
            Tt1=Evh-Ervh;
            M=(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
            Tt2=(Evrh-Erc)-(Emvh-Erc)*((Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1));                     
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Vapor Superaquecido
        else
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            X3=(Svrh-Slm)/(Svm-Slm);
            Tb1=D1*(Pm2-Pc);
            Tb2=D2*(Ph-Pm2);
            Erc=Evsc*X1+(1-X1)*Elsc;
            Erm=Evm*X3+(1-X3)*Elm;
            Qh1=Evh-Tb2-Elm;
            Qr=Evrh-Ervh;
            Qh=Qr+Qh1;
            Tt1=Evh-Ervh;
            M=(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
            Tt2=(Evrh-Erc)-(Erm-Erc)*((Elm-Elsc-Tb1)/(Erm-Elsc-Tb1));
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Mistura Saturada
            end
    else
        X2=(Svh-Slr)/(Svr-Slr);
        %Saída da TAP=Mistura Saturada
        if(Svrh>Svm)
            Smh3=spline(PSVap,SVap,Pm2);
            Smh4=transpose(Smh3);
            J=sum(Smh4<Svm);
            N=Li+1-J;
            Smh=wkeep(Smh4,N,'r');
            TSVap2=wkeep(TSVap,N,'r');
            Smh(1)=Svm;
            TSVap2(1)=Tsat2;
            Tmh=spline(Smh,TSVap2,Svrh);
            Em5=spline(PSVap,EVap,Pm2);
            Em6=transpose(Em5);
            Emh=wkeep(Em6,N,'r');
            Emh(1)=Evm;
            Emvh=spline(TSVap2,Emh,Tmh);
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            Tb1=D1*(Pm2-Pc);
            Tb2=D2*(Ph-Pm2);
            Erc=Evsc*X1+(1-X1)*Elsc;
            Err=Evr*X2+(1-X2)*Elr;
            Qh1=Evh-Tb2-Elm;
            Qr=Evrh-Err;
            Qh=Qh1+Qr;
            Tt1=Evh-Err;
            M=(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
            Tt2=(Evrh-Erc)-(Emvh-Erc)*((Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1));
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Vapor Superaquecido
        else
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            X3=(Svrh-Slm)/(Svm-Slm);
            Tb1=D1*(Pm2-Pc);
            Tb2=D2*(Ph-Pm2);
            Erc=Evsc*X1+(1-X1)*Elsc;
            Err=Evr*X2+(1-X2)*Elr;
            Erm=Evm*X3+(1-X3)*Elm;
            Qh1=Evh-Tb2-Elm;
            Qr=Evrh-Err;
            Qh=Qr+Qh1;
            Tt1=Evh-Err;
            M=(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
            Tt2=(Evrh-Erc)-(Erm-Erc)*((Elm-Elsc-Tb1)/(Erm-Elsc-Tb1));
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Mistura Saturada
        end
        end
        set(handles.edit8, 'String', Qh);
        set(handles.edit9, 'String', Tt);
        set(handles.edit10, 'String', Tb);
        set(handles.edit11, 'String', Ef);
        set(handles.uipanel16,'Visible','On');
        set(handles.text51,'Visible','On');
        set(handles.edit29,'Visible','On');
        set(handles.edit29, 'String', M);
        axes(handles.axes1);
        imageC=imread('4.png');
        image(imageC);
        axis off
        axis image
                else
                    set(handles.uipanel7,'Visible','On');
                    set(handles.text21,'Visible','On');
                    set(handles.uipanel3,'Visible','Off');
                end
            else
               set(handles.uipanel7,'Visible','On');
               set(handles.text20,'Visible','On'); 
               set(handles.uipanel3,'Visible','Off');
            end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text19,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text21,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text18,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text17,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text16,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
end
if index5==1
    if(Ph>ps(end))
        Tcs=Ts(end);
    else
        Tcs=spline(ps,Ts,Ph);
    end
    if(Ph>=PSVap(1) && Ph<=PSVap(end))
    if(Th>Tcs && Th<=800)
        if(Pc>=ps(1) && Pc<=100)
    Elsc=spline(ps,Els,Pc);
    Slsc=spline(ps,Sls,Pc);
    Evsc=spline(ps,Evs,Pc);
    Svsc=spline(ps,Svs,Pc);
    Svv=spline(Ts,Svs,Tcs);
    Evv=spline(Ts,Evs,Tcs);
    Svh1=spline(PSVap,SVap,Ph);
    Svh2=transpose(Svh1);
    Li=length(TSVap);
    if(Ph<ps(end))
        K1=sum(Svh2<Svv);
        K2=Li+1-K1;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svv;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evv;
        Evh=spline(Tth,Evh3,Th);
    else
        K1=find(TSVap==375);
        K2=Li+2-K1;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svh3(3)-(Svh3(3)-Svh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evh3(3)-(Evh3(3)-Evh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Evh=spline(Tth,Evh3,Th);
    end
    if(Pm3>=ps(1) && Pm3<ps(end))
        if(Pr2>=PSVap(1) && Pr2<=ps(end))
            Tr2s=spline(ps,Ts,Pr2);
            if(Tr2>=Tr2s && Tr2<=800)
                if(Ph>Pm3)
    D1=spline(ps,D,Pc);
    D2=spline(ps,D,Pm3);
    Svr=spline(ps,Svs,Pr2);
    Slr=spline(ps,Sls,Pr2);
    Svm=spline(ps,Svs,Pm3);
    Slm=spline(ps,Sls,Pm3);
    Elr=spline(ps,Els,Pr2);
    Evr=spline(ps,Evs,Pr2);
    Elm=spline(ps,Els,Pm3);
    Evm=spline(ps,Evs,Pm3);
    Tsat1=spline(ps,Ts,Pr2);
    Tsat2=spline(ps,Ts,Pm3);
    Svr1=spline(PSVap,SVap,Pr2);
    Svr2=transpose(Svr1);
    K11=sum(Svr2<Svr);
    K22=Li+1-K11;
    Svr3=wkeep(Svr2,K22,'r');
    Svr3(1)=Svr;
    Ttr=wkeep(TSVap,K22,'r');
    Ttr(1)=Tsat1;
    Svrh=spline(Ttr,Svr3,Tr2);
    Evr1=spline(PSVap,EVap,Pr2);
    Evr2=transpose(Evr1);
    Evr3=wkeep(Evr2,K22,'r');
    Evr3(1)=Evr;
    Evrh=spline(Ttr,Evr3,Tr2);
    if (Svh>Svr)
        Srh1=spline(PSVap,SVap,Pr2);
        Srh2=transpose(Srh1);
        J=sum(Srh2<Svr);
        N=Li+1-J;
        Srh=wkeep(Srh2,N,'r');
        TSVap1=wkeep(TSVap,N,'r');
        Srh(1)=Svr;
        TSVap1(1)=Tsat1;
        Trh=spline(Srh,TSVap1,Svh);
        Ert=spline(PSVap,EVap,Pr2);
        Ert1=transpose(Ert);
        Y=sum(Ert1<Evr);
        Y1=Li+1-Y;
        Ert2=wkeep(Ert1,Y1,'r');
        Ert2(1)=Evr;
        Ervh=spline(TSVap1,Ert2,Trh);
        %Saída da TAP=Vapor Superaquecido
        if(Svh>Svm)
            Smh3=spline(PSVap,SVap,Pm3);
            Smh4=transpose(Smh3);
            J=sum(Smh4<Svm);
            N=Li+1-J;
            Smh=wkeep(Smh4,N,'r');
            TSVap2=wkeep(TSVap,N,'r');
            Smh(1)=Svm;
            TSVap2(1)=Tsat2;
            Tmh=spline(Smh,TSVap2,Svh);
            Emt=spline(PSVap,EVap,Pm3);
            Emt1=transpose(Emt);
            W=sum(Emt1<Evm);
            W1=Li+1-W;
            Emt2=wkeep(Emt1,W1,'r');
            Emt2(1)=Evm;
            Emvh=spline(TSVap2,Emt2,Tmh);         
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            Tb1=D1*(Pm3-Pc);
            Tb2=D2*(Ph-Pm3);
            Erc=Evsc*X1+(1-X1)*Elsc;
            B=(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
            Qh1=Evh-Tb2-Elm;
            Qr=(Evrh-Ervh)*(1-B);
            Qh=Qh1+Qr;
            Tt1=(Evh-Ervh)-(Emvh-Ervh)*((Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1));
            Tt2=(Evrh-Erc)*(1-B);                     
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Vapor Superaquecido
        else
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            X3=(Svh-Slm)/(Svm-Slm);
            Tb1=D1*(Pm3-Pc);
            Tb2=D2*(Ph-Pm3);
            Erc=Evsc*X1+(1-X1)*Elsc;
            Erm=Evm*X3+(1-X3)*Elm;
            B=(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
            Qh1=Evh-Tb2-Elm;
            Qr=(Evrh-Ervh)*(1-B);
            Qh=Qr+Qh1;
            Tt1=(Evh-Ervh)-(Erm-Ervh)*((Elm-Elsc-Tb1)/(Erm-Elsc-Tb1));
            Tt2=(Evrh-Erc)*(1-B);
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Mistura Saturada;
         end
    else
        X2=(Svh-Slr)/(Svr-Slr);
        %Saída da TAP=Mistura Saturada
        if(Svh>Svm)
            Smh3=spline(PSVap,SVap,Pm3);
            Smh4=transpose(Smh3);
            J=sum(Smh4<Svm);
            N=Li+1-J;
            Smh=wkeep(Smh4,N,'r');
            TSVap2=wkeep(TSVap,N,'r');
            Smh(1)=Svm;
            TSVap2(1)=Tsat2;
            Tmh=spline(Smh,TSVap2,Svh);
            Emt=spline(PSVap,EVap,Pm3);
            Emt1=transpose(Emt);
            W=sum(Emt1<Evm);
            W1=Li+1-W;
            Emt2=wkeep(Emt1,W1,'r');
            Emt2(1)=Evm;
            Emvh=spline(TSVap2,Emt2,Tmh); 
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            Tb1=D1*(Pm3-Pc);
            Tb2=D2*(Ph-Pm3);
            Erc=Evsc*X1+(1-X1)*Elsc;
            Err=Evr*X2+(1-X2)*Elr;
            B=(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
            Qh1=Evh-Tb2-Elm;
            Qr=(Evrh-Err)*(1-B);
            Qh=Qh1+Qr;
            Tt1=(Evh-Err)-(Emvh-Err)*((Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1));
            Tt2=(Evrh-Erc)*(1-B);
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Vapor Superaquecido;
        else
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            X3=(Svh-Slm)/(Svm-Slm);
            Tb1=D1*(Pm3-Pc);
            Tb2=D2*(Ph-Pm3);
            Erc=Evsc*X1+(1-X1)*Elsc;
            Err=Evr*X2+(1-X2)*Elr;
            Erm=Evm*X3+(1-X3)*Elm;
            B=(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
            Qh1=Evh-Tb2-Elm;
            Qr=(Evrh-Err)*(1-B);
            Qh=Qh1+Qr;
            Tt1=(Evh-Err)-(Erm-Err)*((Elm-Elsc-Tb1)/(Erm-Elsc-Tb1));
            Tt2=(Evrh-Erc)*(1-B);
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Mistura Saturada
        end
    end
        set(handles.edit8, 'String', Qh);
        set(handles.edit9, 'String', Tt);
        set(handles.edit10, 'String', Tb);
        set(handles.edit11, 'String', Ef);
        set(handles.uipanel16,'Visible','On');
        set(handles.text50,'Visible','On');
        set(handles.edit28,'Visible','On');
        set(handles.edit28, 'String', B);
        axes(handles.axes1);
        imageC=imread('5.png');
        image(imageC);
        axis off
        axis image
                else
                    set(handles.uipanel7,'Visible','On');
                    set(handles.text22,'Visible','On');
                    set(handles.uipanel3,'Visible','Off');
                end
            else
                set(handles.uipanel7,'Visible','On');
                set(handles.text20,'Visible','On');
                set(handles.uipanel3,'Visible','Off');
            end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text19,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text22,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text18,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text17,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text16,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
end
if index6==1
    if(Ph>ps(end))
        Tcs=Ts(end);
    else
        Tcs=spline(ps,Ts,Ph);
    end
    if(Ph>=PSVap(1) && Ph<=PSVap(end))
    if(Th>Tcs && Th<=800)
        if(Pc>=ps(1) && Pc<=100)
    Elsc=spline(ps,Els,Pc);
    Slsc=spline(ps,Sls,Pc);
    Evsc=spline(ps,Evs,Pc);
    Svsc=spline(ps,Svs,Pc);
    Svv=spline(Ts,Svs,Tcs);
    Evv=spline(Ts,Evs,Tcs);
    Svh1=spline(PSVap,SVap,Ph);
    Svh2=transpose(Svh1);
    Li=length(TSVap);
    if(Ph<ps(end))
        K1=sum(Svh2<Svv);
        K2=Li+1-K1;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svv;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evv;
        Evh=spline(Tth,Evh3,Th);
    else
        K1=find(TSVap==375);
        K2=Li+2-K1;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svh3(3)-(Svh3(3)-Svh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evh3(3)-(Evh3(3)-Evh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Evh=spline(Tth,Evh3,Th);
    end
    if(Pm2>=ps(1) && Pm2<ps(end))
        if(Pm3>=ps(1) && Pm3<ps(end))
            if(Pr2>=PSVap(1) && Pr2<=ps(end))
                Tr2s=spline(ps,Ts,Pr2);
                if(Tr2>=Tr2s && Tr2<=800)
                    if(Pm3>Pm2)
                        if(Ph>Pm3)
    D1=spline(ps,D,Pc);
    D2=spline(ps,D,Pm2);
    D3=spline(ps,D,Pm3);
    Svr=spline(ps,Svs,Pr2);
    Slr=spline(ps,Sls,Pr2);
    Svm=spline(ps,Svs,Pm2);
    Slm=spline(ps,Sls,Pm2);
    Elr=spline(ps,Els,Pr2);
    Evr=spline(ps,Evs,Pr2);
    Elm=spline(ps,Els,Pm2);
    Evm=spline(ps,Evs,Pm2);
    Svmm=spline(ps,Svs,Pm3);
    Slmm=spline(ps,Sls,Pm3);
    Evmm=spline(ps,Evs,Pm3);
    Elmm=spline(ps,Els,Pm3);    
    Tsat1=spline(ps,Ts,Pr2);
    Tsat2=spline(ps,Ts,Pm2);
    Tsat3=spline(ps,Ts,Pm3);
    Svr1=spline(PSVap,SVap,Pr2);
    Svr2=transpose(Svr1);
    K11=sum(Svr2<Svr);
    K22=Li+1-K11;
    Svr3=wkeep(Svr2,K22,'r');
    Svr3(1)=Svr;
    Ttr=wkeep(TSVap,K22,'r');
    Ttr(1)=Tsat1;
    Svrh=spline(Ttr,Svr3,Tr2);
    Evr1=spline(PSVap,EVap,Pr2);
    Evr2=transpose(Evr1);
    Evr3=wkeep(Evr2,K22,'r');
    Evr3(1)=Evr;
    Evrh=spline(Ttr,Evr3,Tr2);
    if (Svh>Svr)
        Srh1=spline(PSVap,SVap,Pr2);
        Srh2=transpose(Srh1);
        J=sum(Srh2<Svr);
        N=Li+1-J;
        Srh=wkeep(Srh2,N,'r');
        TSVap1=wkeep(TSVap,N,'r');
        Srh(1)=Svr;
        TSVap1(1)=Tsat1;
        Trh=spline(Srh,TSVap1,Svh);
        Ert=spline(PSVap,EVap,Pr2);
        Ert1=transpose(Ert);
        Y=sum(Ert1<Evr);
        Y1=Li+1-Y;
        Ert2=wkeep(Ert1,Y1,'r');
        Ert2(1)=Evr;
        Ervh=spline(TSVap1,Ert2,Trh);
        %Saída da TAP=Vapor Superaquecido
        if(Svh>Svmm)
            Smh5=spline(PSVap,SVap,Pm3);
            Smh6=transpose(Smh5);
            J=sum(Smh6<Svmm);
            N=Li+1-J;
            Smmh=wkeep(Smh6,N,'r');
            TSVap3=wkeep(TSVap,N,'r');
            Smmh(1)=Svmm;
            TSVap3(1)=Tsat3;
            Tmmh=spline(Smmh,TSVap3,Svh);
            Emmt=spline(PSVap,EVap,Pm3);
            Emmt1=transpose(Emmt);
            L=sum(Emmt1<Evmm);
            L1=Li+1-L;
            Emmt2=wkeep(Emmt1,L1,'r');
            Emmt2(1)=Evmm;
            Emmvh=spline(TSVap3,Emmt2,Tmmh);
            %Misturador da TAP=Vapor Superaquecido
            if(Svrh>Svm)
                Smh3=spline(PSVap,SVap,Pm2);
                Smh4=transpose(Smh3);
                G=sum(Smh4<Svm);
                Nt=Li+1-G;
                Smh=wkeep(Smh4,Nt,'r');
                TSVap2=wkeep(TSVap,Nt,'r');
                Smh(1)=Svm;
                TSVap2(1)=Tsat2;
                Tmh=spline(Smh,TSVap2,Svh);
                Emt=spline(PSVap,EVap,Pm2);
                Emt1=transpose(Emt);
                W=sum(Emt1<Evm);
                W1=Li+1-W;
                Emt2=wkeep(Emt1,W1,'r');
                Emt2(1)=Evm;
                Emvh=spline(TSVap2,Emt2,Tmh); 
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                Tb1=D1*(Pm2-Pc);
                Tb2=D2*(Pm3-Pm2);
                Tb3=D3*(Ph-Pm3);
                Erc=Evsc*X1+(1-X1)*Elsc;
                B=(Elmm-Elm-Tb2)/(Emmvh-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Qr=(Evrh-Ervh)*(1-B);
                Qh=Qh1+Qr;
                Tt1=(Evh-Ervh);
                Z=(1-B)*(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
                Tt2=(Evrh-Emvh)*(1-B)+(Emvh-Erc)*(1-B-Z);                     
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Vapor Superaquecido
            else
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                X3=(Svrh-Slm)/(Svm-Slm);
                Tb1=D1*(Pm2-Pc);
                Tb2=D2*(Pm3-Pm2);
                Tb3=D3*(Ph-Pm3);
                Erc=Evsc*X1+(1-X1)*Elsc;
                Erm=Evm*X3+(1-X3)*Elm;
                B=(Elmm-Elm-Tb2)/(Emmvh-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Qr=(Evrh-Ervh)*(1-B);
                Qh=Qr+Qh1;
                Tt1=(Evh-Ervh);
                Z=(1-B)*(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
                Tt2=(Evrh-Erm)*(1-B)+(Erm-Erc)*(1-B-Z);                              
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Mistura Saturada
                end
        else
            X4=(Svh-Slmm)/(Svmm-Slmm);
            Ermm=Evmm*X4+(1-X4)*Elmm;
            %Misturador da TAP=Mistura Saturada
            if(Svrh>Svm)
                Smh3=spline(PSVap,SVap,Pm2);
                Smh4=transpose(Smh3);
                G=sum(Smh4<Svm);
                Nt=Li+1-G;
                Smh=wkeep(Smh4,Nt,'r');
                TSVap2=wkeep(TSVap,Nt,'r');
                Smh(1)=Svm;
                TSVap2(1)=Tsat2;
                Tmh=spline(Smh,TSVap2,Svh);
                Emt=spline(PSVap,EVap,Pm2);
                Emt1=transpose(Emt);
                W=sum(Emt1<Evm);
                W1=Li+1-W;
                Emt2=wkeep(Emt1,W1,'r');
                Emt2(1)=Evm;
                Emvh=spline(TSVap2,Emt2,Tmh);
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                Tb1=D1*(Pm2-Pc);
                Tb2=D2*(Pm3-Pm2);
                Tb3=D3*(Ph-Pm3);
                Erc=Evsc*X1+(1-X1)*Elsc;
                B=(Elmm-Elm-Tb2)/(Ermm-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Qr=(Evrh-Ervh)*(1-B);
                Qh=Qh1+Qr;
                Tt1=(Evh-Ervh);
                Z=(1-B)*(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
                Tt2=(Evrh-Emvh)*(1-B)+(Emvh-Erc)*(1-B-Z);                             
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Vapor Superaquecido
            else
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                X3=(Svrh-Slm)/(Svm-Slm);
                Tb1=D1*(Pm2-Pc);
                Tb2=D2*(Pm3-Pm2);
                Tb3=D3*(Ph-Pm3);
                Erc=Evsc*X1+(1-X1)*Elsc;
                Erm=Evm*X3+(1-X3)*Elm;
                B=(Elmm-Elm-Tb2)/(Ermm-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Qr=(Evrh-Ervh)*(1-B);
                Qh=Qh1+Qr;
                Tt1=(Evh-Ervh);
                Z=(1-B)*(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
                Tt2=(Evrh-Erm)*(1-B)+(Erm-Erc)*(1-B-Z);                                   
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Mistura Saturada
                end
        end
    else            
        X2=(Svh-Slr)/(Svr-Slr);
        Err=Evr*X2+(1-X2)*Elr;
        %Saída da TAP=Mistura Saturada
        if(Svh>Svmm)
            Smh5=spline(PSVap,SVap,Pm3);
            Smh6=transpose(Smh5);
            J=sum(Smh6<Svmm);
            N=Li+1-J;
            Smmh=wkeep(Smh6,N,'r');
            TSVap3=wkeep(TSVap,N,'r');
            Smmh(1)=Svmm;
            TSVap3(1)=Tsat3;
            Tmmh=spline(Smmh,TSVap3,Svh);
            Emmt=spline(PSVap,EVap,Pm3);
            Emmt1=transpose(Emmt);
            L=sum(Emmt1<Evmm);
            L1=Li+1-L;
            Emmt2=wkeep(Emmt1,L1,'r');
            Emmt2(1)=Evmm;
            Emmvh=spline(TSVap3,Emmt2,Tmmh);
            %Misturador da TAP=Vapor Superaquecido
            if(Svrh>Svm)
                Smh3=spline(PSVap,SVap,Pm2);
                Smh4=transpose(Smh3);
                G=sum(Smh4<Svm);
                Nt=Li+1-G;
                Smh=wkeep(Smh4,Nt,'r');
                TSVap2=wkeep(TSVap,Nt,'r');
                Smh(1)=Svm;
                TSVap2(1)=Tsat2;
                Tmh=spline(Smh,TSVap2,Svh);
                Emt=spline(PSVap,EVap,Pm2);
                Emt1=transpose(Emt);
                W=sum(Emt1<Evm);
                W1=Li+1-W;
                Emt2=wkeep(Emt1,W1,'r');
                Emt2(1)=Evm;
                Emvh=spline(TSVap2,Emt2,Tmh);
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                Tb1=D1*(Pm2-Pc);
                Tb2=D2*(Pm3-Pm2);
                Tb3=D3*(Ph-Pm3);
                Erc=Evsc*X1+(1-X1)*Elsc;
                B=(Elmm-Elm-Tb2)/(Emmvh-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Qr=(Evrh-Err)*(1-B);
                Qh=Qr+Qh1;
                Tt1=(Evh-Err);
                Z=(1-B)*(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
                Tt2=(Evrh-Emvh)*(1-B)+(Emvh-Erc)*(1-B-Z);                                   
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Vapor Superaquecido
            else
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                X3=(Svrh-Slm)/(Svm-Slm);
                Tb1=D1*(Pm2-Pc);
                Tb2=D2*(Pm3-Pm2);
                Tb3=D3*(Ph-Pm3);
                Erc=Evsc*X1+(1-X1)*Elsc;
                Erm=Evm*X3+(1-X3)*Elm;
                B=(Elmm-Elm-Tb2)/(Emmvh-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Qr=(Evrh-Ervh)*(1-B);
                Qh=Qh1+Qr;
                Tt1=(Evh-Err);
                Z=(1-B)*(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
                Tt2=(Evrh-Erm)*(1-B)+(Erm-Erc)*(1-B-Z);                                      
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100; 
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Mistura Saturada
                end
        else
            X4=(Svh-Slmm)/(Svmm-Slmm);
            Ermm=Evmm*X4+(1-X4)*Elmm;
            %Misturador da TAP=Mistura Saturada
            if(Svrh>Svm)
                Smh3=spline(PSVap,SVap,Pm2);
                Smh4=transpose(Smh3);
                G=sum(Smh4<Svm);
                Nt=Li+1-G;
                Smh=wkeep(Smh4,Nt,'r');
                TSVap2=wkeep(TSVap,Nt,'r');
                Smh(1)=Svm;
                TSVap2(1)=Tsat2;
                Tmh=spline(Smh,TSVap2,Svh);
                Emt=spline(PSVap,EVap,Pm2);
                Emt1=transpose(Emt);
                W=sum(Emt1<Evm);
                W1=Li+1-W;
                Emt2=wkeep(Emt1,W1,'r');
                Emt2(1)=Evm;
                Emvh=spline(TSVap2,Emt2,Tmh);
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                Tb1=D1*(Pm2-Pc);
                Tb2=D2*(Pm3-Pm2);
                Tb3=D3*(Ph-Pm3);
                Erc=Evsc*X1+(1-X1)*Elsc;
                B=(Elmm-Elm-Tb2)/(Ermm-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Qr=(Evrh-Err)*(1-B);
                Qh=Qh1+Qr;
                Tt1=(Evh-Err);
                Z=(1-B)*(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
                Tt2=(Evrh-Emvh)*(1-B)+(Emvh-Erc)*(1-B-Z);                                    
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Vapor Superaquecido
            else
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                X3=(Svrh-Slm)/(Svm-Slm);
                Tb1=D1*(Pm2-Pc);
                Tb2=D2*(Pm3-Pm2);
                Tb3=D3*(Ph-Pm3);
                Erc=Evsc*X1+(1-X1)*Elsc;
                Erm=Evm*X3+(1-X3)*Elm;
                B=(Elmm-Elm-Tb2)/(Ermm-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Qr=(Evrh-Ervh)*(1-B);
                Qh=Qh1+Qr;
                Tt1=(Evh-Err);
                Z=(1-B)*(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
                Tt2=(Evrh-Erm)*(1-B)+(Erm-Erc)*(1-B-Z);                                   
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Mistura Saturada
            end
        end
    end  
        set(handles.edit8, 'String', Qh);
        set(handles.edit9, 'String', Tt);
        set(handles.edit10, 'String', Tb);
        set(handles.edit11, 'String', Ef);
        set(handles.uipanel16,'Visible','On');
        set(handles.text50,'Visible','On');
        set(handles.text51,'Visible','On');
        set(handles.edit28,'Visible','On');
        set(handles.edit29,'Visible','On');
        set(handles.edit28, 'String', B);
        set(handles.edit29, 'String', Z);
        axes(handles.axes1);
        imageC=imread('6.png');
        image(imageC);
        axis off
        axis image
                        else
                            set(handles.uipanel7,'Visible','On');
                            set(handles.text22,'Visible','On');
                            set(handles.uipanel3,'Visible','Off');
                        end
                    else
                        set(handles.uipanel7,'Visible','On');
                        set(handles.text23,'Visible','On');
                        set(handles.uipanel3,'Visible','Off');
                    end
                else
                    set(handles.uipanel7,'Visible','On');
                    set(handles.text20,'Visible','On');
                    set(handles.uipanel3,'Visible','Off');
                end
            else
                set(handles.uipanel7,'Visible','On');
                set(handles.text19,'Visible','On');
                set(handles.uipanel3,'Visible','Off');
            end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text22,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text21,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text18,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text17,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text16,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
end
end
%COMEÇA CICLO REAL
if irr2==1
    if index1==1
        if(Ef1>=0 && Ef1<=1)
            if(Ef4>=0 && Ef4<=1)
    if(Ph>ps(end))
        Tcs=Ts(end);
    else
        Tcs=spline(ps,Ts,Ph);
    end
    if(Ph>=PSVap(1) && Ph<=PSVap(end))
    if(Th>Tcs && Th<=800)
        if(Pc>=ps(1) && Pc<=100)
    Elsc=spline(ps,Els,Pc);
    Slsc=spline(ps,Sls,Pc);
    Evsc=spline(ps,Evs,Pc);
    Svsc=spline(ps,Svs,Pc);
    Svv=spline(Ts,Svs,Tcs);
    Evv=spline(Ts,Evs,Tcs);
    Svh1=spline(PSVap,SVap,Ph);
    Svh2=transpose(Svh1);
    Li=length(TSVap);
    if(Ph<ps(end))
        K1=sum(Svh2<Svv);
        K2=Li+1-K1;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svv;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evv;
        Evh=spline(Tth,Evh3,Th);
    else
        K1=find(TSVap==375);
        K2=Li+2-K1;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svh3(3)-(Svh3(3)-Svh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evh3(3)-(Evh3(3)-Evh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Evh=spline(Tth,Evh3,Th);
    end
    D1=spline(ps,D,Pc);
    X=(Svh-Slsc)/(Svsc-Slsc);
    Erc=Evsc*X+(1-X)*Elsc;
    Tbi=D1*(Ph-Pc);
    Tb=Tbi/Ef4;
    Qh=Evh-Tb-Elsc;
    Tti=Evh-Erc;
    Tt=Tti*Ef1;
    Ef=((Tt-Tb)/Qh)*100;
    set(handles.edit8, 'String', Qh);
    set(handles.edit9, 'String', Tt);
    set(handles.edit10, 'String', Tb);
    set(handles.edit11, 'String', Ef);
    axes(handles.axes1);
    imageC=imread('1.png');
    image(imageC);
    axis off
    axis image
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text18,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text17,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text16,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
            else
                set(handles.uipanel7,'Visible','On');
                set(handles.uipanel3,'Visible','Off');
                set(handles.text48,'Visible','On');
            end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
            set(handles.text45,'Visible','On');
        end
end
if index2==1
    if(Ef1>=0 && Ef1<=1)
        if(Ef4>=0 && Ef4<=1)
    if(Ph>ps(end))
        Tcs=Ts(end);
    else
        Tcs=spline(ps,Ts,Ph);
    end
    if(Ph>=PSVap(1) && Ph<=PSVap(end))
    if(Th>Tcs && Th<=800)
        if(Pc>=ps(1) && Pc<=100)
    Elsc=spline(ps,Els,Pc);
    Slsc=spline(ps,Sls,Pc);
    Evsc=spline(ps,Evs,Pc);
    Svsc=spline(ps,Svs,Pc);
    Svv=spline(Ts,Svs,Tcs);
    Evv=spline(Ts,Evs,Tcs);
    Svh1=spline(PSVap,SVap,Ph);
    Svh2=transpose(Svh1);
    Li=length(TSVap);
    if(Ph<ps(end))
        K1=sum(Svh2<Svv);
        K2=Li+1-K1;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svv;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evv;
        Evh=spline(Tth,Evh3,Th);
    else
        K1=find(TSVap==375);
        K2=Li+2-K1;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svh3(3)-(Svh3(3)-Svh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evh3(3)-(Evh3(3)-Evh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Evh=spline(Tth,Evh3,Th);
    end
    if(Pm>=ps(1) && Pm<ps(end))
        if(Ph>Pm)
    D1=spline(ps,D,Pc);
    D2=spline(ps,D,Pm);
    Elm=spline(ps,Els,Pm);
    Evm=spline(ps,Evs,Pm);
    Slm=spline(ps,Sls,Pm);
    Svm=spline(ps,Svs,Pm); 
    Tsat=spline(ps,Ts,Pm);
    if(Svh<=Svm)
        X1=(Svh-Slsc)/(Svsc-Slsc);
        X2=(Svh-Slm)/(Svm-Slm);
        Tb1i=D1*(Pm-Pc);
        Tb1=Tb1i/Ef4;
        Tb2i=D2*(Ph-Pm);
        Tb2=Tb2i/Ef4;
        Erc=Evsc*X1+(1-X1)*Elsc;
        Erm=Evm*X2+(1-X2)*Elm;
        Qh=Evh-Tb2-Elm;
        Tti=(Evh-Erc)-(Erm-Erc)*((Elm-Elsc-Tb1)/(Erm-Elsc-Tb1));
        Tt=Tti*Ef1;
        Ef=((Tt-Tb1-Tb2)/Qh)*100;
        Tb=Tb1+Tb2;
        %Misturador=Mistura Saturada
    else
        Smh1=spline(PSVap,SVap,Pm);
        Smh2=transpose(Smh1);
        J=sum(Smh2<Svm);
        N=Li+1-J;
        Smh=wkeep(Smh2,N,'r');
        TSVap1=wkeep(TSVap,N,'r');
        Smh(1)=Svm;
        TSVap1(1)=Tsat;
        Tmh=spline(Smh,TSVap1,Svh);
        Emvh1=spline(PSVap,EVap,Pm);
        Emvh2=transpose(Emvh1);
        Emvh3=wkeep(Emvh2,N,'r');
        Emvh3(1)=Evm;
        Emvh=spline(TSVap1,Emvh3,Tmh);
        X1=(Svh-Slsc)/(Svsc-Slsc);
        Tb1i=D1*(Pm-Pc);
        Tb1=Tb1i/Ef4;
        Tb2i=D2*(Ph-Pm);
        Tb2=Tb2i/Ef4;
        Erc=Evsc*X1+(1-X1)*Elsc;
        Qh=Evh-Tb2-Elm;
        Tti=(Evh-Erc)-(Emvh-Erc)*((Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1));
        Tt=Tti*Ef1;
        Ef=((Tt-Tb1-Tb2)/Qh)*100;
        Tb=Tb1+Tb2;
        %Misturador=Vapor Superaquecido
    end
        set(handles.edit8, 'String', Qh);
        set(handles.edit9, 'String', Tt);
        set(handles.edit10, 'String', Tb);
        set(handles.edit11, 'String', Ef);
        axes(handles.axes1);
        imageC=imread('2.png');
        image(imageC);
        axis off
        axis image
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text25,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text25,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text18,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text17,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text16,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
            set(handles.text48,'Visible','On');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
        set(handles.text45,'Visible','On');
    end
end
if index3==1
    if(Ef2>=0 && Ef2<=1)
        if(Ef3>=0 && Ef3<=1)
            if(Ef4>=0 && Ef4<=1)
    if(Ph>ps(end))
        Tcs=Ts(end);
    else
        Tcs=spline(ps,Ts,Ph);
    end
    if(Ph>=PSVap(1) && Ph<=PSVap(end))
    if(Th>Tcs && Th<=800)
        if(Pc>=ps(1) && Pc<=100)
    Elsc=spline(ps,Els,Pc);
    Slsc=spline(ps,Sls,Pc);
    Evsc=spline(ps,Evs,Pc);
    Svsc=spline(ps,Svs,Pc);
    Svv=spline(Ts,Svs,Tcs);
    Evv=spline(Ts,Evs,Tcs);
    Svh1=spline(PSVap,SVap,Ph);
    Svh2=transpose(Svh1);
    Li=length(TSVap);
    if(Ph<ps(end))
        K1=sum(Svh2<Svv);
        K2=Li+1-K1;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svv;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evv;
        Evh=spline(Tth,Evh3,Th);
    else
        K1=find(TSVap==375);
        K2=Li+2-K1;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svh3(3)-(Svh3(3)-Svh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evh3(3)-(Evh3(3)-Evh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Evh=spline(Tth,Evh3,Th);
    end
    if(Pr2>=PSVap(1) && Pr2<=ps(end))
        Trs=spline(ps,Ts,Pr2);
        if(Tr2>=Trs && Tr2<=800)
    D1=spline(ps,D,Pc);
    Svr=spline(ps,Svs,Pr2);
    Slr=spline(ps,Sls,Pr2);
    Evr=spline(ps,Evs,Pr2);
    Elr=spline(ps,Els,Pr2);
    Tsat=spline(ps,Ts,Pr2);
    Svr1=spline(PSVap,SVap,Pr2);
    Svr2=transpose(Svr1);
    K11=sum(Svr2<Svr);
    K22=Li+1-K11;
    Svr3=wkeep(Svr2,K22,'r');
    Svr3(1)=Svr;
    Ttr=wkeep(TSVap,K22,'r');
    Ttr(1)=Tsat;
    Svrh=spline(Ttr,Svr3,Tr2);
    Evr1=spline(PSVap,EVap,Pr2);
    Evr2=transpose(Evr1);
    Evr3=wkeep(Evr2,K22,'r');
    Evr3(1)=Evr;
    Evrh=spline(Ttr,Evr3,Tr2);
    if(Svh<=Svr)
        X1=(Svrh-Slsc)/(Svsc-Slsc);
        X2=(Svh-Slr)/(Svr-Slr);
        Tbi=D1*(Ph-Pc);
        Tb=Tbi/Ef4;
        Erc=Evsc*X1+(1-X1)*Elsc;
        Err=Evr*X2+(1-X2)*Elr;
        Qh1=Evh-Elsc-Tb;
        Tt1i=Evh-Err;
        Tt1=Tt1i*Ef2;
        Tt2i=Evrh-Erc;
        Tt2=Tt2i*Ef3;
        Eis=(1-Ef2)*Evrh+Err*Ef2;
        Qr=Evrh-Eis;
        Qh=Qh1+Qr;
        Ef=((Tt1+Tt2-Tb)/(Qh1+Qr))*100;
        Tt=Tt1+Tt2;
        %Saída da TAP=Mistura Saturada
    else
        Srh1=spline(PSVap,SVap,Pr2);
        Srh2=transpose(Srh1);
        J=sum(Srh2<Svr);
        N=Li+1-J;
        Srh=wkeep(Srh2,N,'r');
        TSVap1=wkeep(TSVap,N,'r');
        Srh(1)=Svr;
        TSVap1(1)=Tsat;
        Trh=spline(Srh,TSVap1,Svh);
        Ert=spline(PSVap,EVap,Pr2);
        Ert1=transpose(Ert);
        Y=sum(Ert1<Evr);
        Y1=Li+1-Y;
        Ert2=wkeep(Ert1,Y1,'r');
        Ert2(1)=Evr;
        Ervh=spline(TSVap1,Ert2,Trh);
        X1=(Svrh-Slsc)/(Svsc-Slsc);
        Tbi=D1*(Ph-Pc);
        Tb=Tbi/Ef4;
        Erc=Evsc*X1+(1-X1)*Elsc;
        Qh1=Evh-Tb-Elsc;
        Tt1i=Evh-Ervh;
        Tt1=Tt1i*Ef2;
        Tt2i=Evrh-Erc;
        Tt2=Tt2i*Ef3;
        Eis=(1-Ef2)*Evrh+Ervh*Ef2;
        Qr=Evrh-Eis;
        Qh=Qr+Qh1;
        Ef=((Tt1+Tt2-Tb)/(Qh1+Qr))*100;
        Tt=Tt1+Tt2;
        %Saída da TAP=Vapor Superaquecido
    end
        set(handles.edit8, 'String', Qh);
        set(handles.edit9, 'String', Tt);
        set(handles.edit10, 'String', Tb);
        set(handles.edit11, 'String', Ef);
        axes(handles.axes1);
        imageC=imread('3.png');
        image(imageC);
        axis off
        axis image
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text20,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text19,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text18,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text17,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text16,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
            else
                set(handles.uipanel7,'Visible','On');
                set(handles.uipanel3,'Visible','Off');
                set(handles.text48,'Visible','On');
            end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
            set(handles.text47,'Visible','On');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
        set(handles.text46,'Visible','On');
    end
end
if index4==1
    if(Ef2>=0 && Ef2<=1)
        if(Ef3>=0 && Ef3<=1)
            if(Ef4>=0 && Ef4<=1)
    if(Ph>ps(end))
        Tcs=Ts(end);
    else
        Tcs=spline(ps,Ts,Ph);
    end
    if(Ph>=PSVap(1) && Ph<=PSVap(end))
    if(Th>Tcs && Th<=800)
        if(Pc>=ps(1) && Pc<=100)
    Elsc=spline(ps,Els,Pc);
    Slsc=spline(ps,Sls,Pc);
    Evsc=spline(ps,Evs,Pc);
    Svsc=spline(ps,Svs,Pc);
    Svv=spline(Ts,Svs,Tcs);
    Evv=spline(Ts,Evs,Tcs);
    Svh1=spline(PSVap,SVap,Ph);
    Svh2=transpose(Svh1);
    Li=length(TSVap);
    if(Ph<ps(end))
        K1=sum(Svh2<Svv);
        K2=Li+1-K1;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svv;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evv;
        Evh=spline(Tth,Evh3,Th);
    else
        K1=find(TSVap==375);
        K2=Li+2-K1;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svh3(3)-(Svh3(3)-Svh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evh3(3)-(Evh3(3)-Evh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Evh=spline(Tth,Evh3,Th);
    end
    if(Pm2>=ps(1) && Pm2<ps(end))
        if(Pr2>=PSVap(1) && Pr2<=ps(end))
            Tr2s=spline(ps,Ts,Pr2);
            if(Tr2>=Tr2s && Tr2<=800)
                if(Ph>Pm2)
    D1=spline(ps,D,Pc);
    D2=spline(ps,D,Pm2);
    Svr=spline(ps,Svs,Pr2);
    Slr=spline(ps,Sls,Pr2);
    Svm=spline(ps,Svs,Pm2);
    Slm=spline(ps,Sls,Pm2);
    Elr=spline(ps,Els,Pr2);
    Evr=spline(ps,Evs,Pr2);
    Elm=spline(ps,Els,Pm2);
    Evm=spline(ps,Evs,Pm2);
    Tsat1=spline(ps,Ts,Pr2);
    Tsat2=spline(ps,Ts,Pm2);
    Svr1=spline(PSVap,SVap,Pr2);
    Svr2=transpose(Svr1);
    K11=sum(Svr2<Svr);
    K22=Li+1-K11;
    Svr3=wkeep(Svr2,K22,'r');
    Svr3(1)=Svr;
    Ttr=wkeep(TSVap,K22,'r');
    Ttr(1)=Tsat1;
    Svrh=spline(Ttr,Svr3,Tr2);
    Evr1=spline(PSVap,EVap,Pr2);
    Evr2=transpose(Evr1);
    Evr3=wkeep(Evr2,K22,'r');
    Evr3(1)=Evr;
    Evrh=spline(Ttr,Evr3,Tr2);
    if (Svh>Svr)
        Srh1=spline(PSVap,SVap,Pr2);
        Srh2=transpose(Srh1);
        J=sum(Srh2<Svr);
        N=Li+1-J;
        Srh=wkeep(Srh2,N,'r');
        TSVap1=wkeep(TSVap,N,'r');
        Srh(1)=Svr;
        TSVap1(1)=Tsat1;
        Trh=spline(Srh,TSVap1,Svh);
        Ert=spline(PSVap,EVap,Pr2);
        Ert1=transpose(Ert);
        Y=sum(Ert1<Evr);
        Y1=Li+1-Y;
        Ert2=wkeep(Ert1,Y1,'r');
        Ert2(1)=Evr;
        Ervh=spline(TSVap1,Ert2,Trh);
        %Saída da TAP=Vapor Superaquecido
        if(Svrh>Svm)
            Smh3=spline(PSVap,SVap,Pm2);
            Smh4=transpose(Smh3);
            J=sum(Smh4<Svm);
            N=Li+1-J;
            Smh=wkeep(Smh4,N,'r');
            TSVap2=wkeep(TSVap,N,'r');
            Smh(1)=Svm;
            TSVap2(1)=Tsat2;
            Tmh=spline(Smh,TSVap2,Svrh);
            Em5=spline(PSVap,EVap,Pm2);
            Em6=transpose(Em5);
            Emh=wkeep(Em6,N,'r');
            Emh(1)=Evm;
            Emvh=spline(TSVap2,Emh,Tmh);
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            Tb1i=D1*(Pm2-Pc);
            Tb1=Tb1i/Ef4;
            Tb2i=D2*(Ph-Pm2);
            Tb2=Tb2i/Ef4;
            Erc=Evsc*X1+(1-X1)*Elsc;
            Qh1=Evh-Tb2-Elm;
            Eis=(1-Ef2)*Evrh+Ervh*Ef2;
            Qr=Evrh-Eis;
            Qh=Qr+Qh1;
            Tt1i=Evh-Ervh;
            Tt1=Tt1i*Ef2;
            M=(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
            Tt2i=(Evrh-Erc)-(Emvh-Erc)*((Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1));
            Tt2=Tt2i*Ef3;
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Vapor Superaquecido
        else
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            X3=(Svrh-Slm)/(Svm-Slm);
            Tb1i=D1*(Pm2-Pc);
            Tb1=Tb1i/Ef4;
            Tb2i=D2*(Ph-Pm2);
            Tb2=Tb2i/Ef4;
            Erc=Evsc*X1+(1-X1)*Elsc;
            Erm=Evm*X3+(1-X3)*Elm;
            Qh1=Evh-Tb2-Elm;
            Eis=(1-Ef2)*Evrh+Ervh*Ef2;
            Qr=Evrh-Eis;
            Qh=Qr+Qh1;
            Tt1i=Evh-Ervh;
            Tt1=Tt1i*Ef2;
            M=(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
            Tt2i=(Evrh-Erc)-(Erm-Erc)*((Elm-Elsc-Tb1)/(Erm-Elsc-Tb1));
            Tt2=Tt2i*Ef3;
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Mistura Saturada
            end
    else
        X2=(Svh-Slr)/(Svr-Slr);
        %Saída da TAP=Mistura Saturada
        if(Svrh>Svm)
            Smh3=spline(PSVap,SVap,Pm2);
            Smh4=transpose(Smh3);
            J=sum(Smh4<Svm);
            N=Li+1-J;
            Smh=wkeep(Smh4,N,'r');
            TSVap2=wkeep(TSVap,N,'r');
            Smh(1)=Svm;
            TSVap2(1)=Tsat2;
            Tmh=spline(Smh,TSVap2,Svrh);
            Em5=spline(PSVap,EVap,Pm2);
            Em6=transpose(Em5);
            Emh=wkeep(Em6,N,'r');
            Emh(1)=Evm;
            Emvh=spline(TSVap2,Emh,Tmh);
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            Tb1i=D1*(Pm2-Pc);
            Tb1=Tb1i/Ef4;
            Tb2i=D2*(Ph-Pm2);
            Tb2=Tb2i/Ef4;
            Erc=Evsc*X1+(1-X1)*Elsc;
            Err=Evr*X2+(1-X2)*Elr;
            Qh1=Evh-Tb2-Elm;
            Eis=(1-Ef2)*Evrh+Err*Ef2;
            Qr=Evrh-Eis;
            Qh=Qh1+Qr;
            Tt1i=Evh-Err;
            Tt1=Tt1i*Ef2;
            M=(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
            Tt2i=(Evrh-Erc)-(Emvh-Erc)*((Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1));
            Tt2=Tt2i/Ef3;
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Vapor Superaquecido
        else
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            X3=(Svrh-Slm)/(Svm-Slm);
            Tb1i=D1*(Pm2-Pc);
            Tb1=Tb1i/Ef4;
            Tb2i=D2*(Ph-Pm2);
            Tb2=Tb2i/Ef4;
            Erc=Evsc*X1+(1-X1)*Elsc;
            Err=Evr*X2+(1-X2)*Elr;
            Erm=Evm*X3+(1-X3)*Elm;
            Qh1=Evh-Tb2-Elm;
            Eis=(1-Ef2)*Evrh+Err*Ef2;
            Qr=Evrh-Eis;
            Qh=Qr+Qh1;
            Tt1i=Evh-Err;
            Tt1=Tt1i*Ef2;
            M=(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
            Tt2i=(Evrh-Erc)-(Erm-Erc)*((Elm-Elsc-Tb1)/(Erm-Elsc-Tb1));
            Tt2=Tt2i*Ef3;
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Mistura Saturada
        end
        end
        set(handles.edit8, 'String', Qh);
        set(handles.edit9, 'String', Tt);
        set(handles.edit10, 'String', Tb);
        set(handles.edit11, 'String', Ef);
        set(handles.uipanel16,'Visible','On');
        set(handles.text51,'Visible','On');
        set(handles.edit29,'Visible','On');
        set(handles.edit29, 'String', M);
        axes(handles.axes1);
        imageC=imread('4.png');
        image(imageC);
        axis off
        axis image
                else
                    set(handles.uipanel7,'Visible','On');
                    set(handles.text21,'Visible','On');
                    set(handles.uipanel3,'Visible','Off');
                end
            else
               set(handles.uipanel7,'Visible','On');
               set(handles.text20,'Visible','On'); 
               set(handles.uipanel3,'Visible','Off');
            end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text19,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text21,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text18,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text17,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text16,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
            else
                set(handles.uipanel7,'Visible','On');
                set(handles.uipanel3,'Visible','Off');
                set(handles.text48,'Visible','On');
            end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
            set(handles.text47,'Visible','On');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
        set(handles.text46,'Visible','On');
    end
end
if index5==1
    if(Ef2>=0 && Ef2<=1)
        if(Ef3>=0 && Ef3<=1)
            if(Ef4>=0 && Ef4<=1)
    if(Ph>ps(end))
        Tcs=Ts(end);
    else
        Tcs=spline(ps,Ts,Ph);
    end
    if(Ph>=PSVap(1) && Ph<=PSVap(end))
    if(Th>Tcs && Th<=800)
        if(Pc>=ps(1) && Pc<=100)
    Elsc=spline(ps,Els,Pc);
    Slsc=spline(ps,Sls,Pc);
    Evsc=spline(ps,Evs,Pc);
    Svsc=spline(ps,Svs,Pc);
    Svv=spline(Ts,Svs,Tcs);
    Evv=spline(Ts,Evs,Tcs);
    Svh1=spline(PSVap,SVap,Ph);
    Svh2=transpose(Svh1);
    Li=length(TSVap);
    if(Ph<ps(end))
        K1=sum(Svh2<Svv);
        K2=Li+1-K1;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svv;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evv;
        Evh=spline(Tth,Evh3,Th);
    else
        K1=find(TSVap==375);
        K2=Li+2-K1;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svh3(3)-(Svh3(3)-Svh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evh3(3)-(Evh3(3)-Evh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Evh=spline(Tth,Evh3,Th);
    end
    if(Pm3>=ps(1) && Pm3<ps(end))
        if(Pr2>=PSVap(1) && Pr2<=ps(end))
            Tr2s=spline(ps,Ts,Pr2);
            if(Tr2>=Tr2s && Tr2<=800)
                if(Ph>Pm3)
    D1=spline(ps,D,Pc);
    D2=spline(ps,D,Pm3);
    Svr=spline(ps,Svs,Pr2);
    Slr=spline(ps,Sls,Pr2);
    Svm=spline(ps,Svs,Pm3);
    Slm=spline(ps,Sls,Pm3);
    Elr=spline(ps,Els,Pr2);
    Evr=spline(ps,Evs,Pr2);
    Elm=spline(ps,Els,Pm3);
    Evm=spline(ps,Evs,Pm3);
    Tsat1=spline(ps,Ts,Pr2);
    Tsat2=spline(ps,Ts,Pm3);
    Svr1=spline(PSVap,SVap,Pr2);
    Svr2=transpose(Svr1);
    K11=sum(Svr2<Svr);
    K22=Li+1-K11;
    Svr3=wkeep(Svr2,K22,'r');
    Svr3(1)=Svr;
    Ttr=wkeep(TSVap,K22,'r');
    Ttr(1)=Tsat1;
    Svrh=spline(Ttr,Svr3,Tr2);
    Evr1=spline(PSVap,EVap,Pr2);
    Evr2=transpose(Evr1);
    Evr3=wkeep(Evr2,K22,'r');
    Evr3(1)=Evr;
    Evrh=spline(Ttr,Evr3,Tr2);
    if (Svh>Svr)
        Srh1=spline(PSVap,SVap,Pr2);
        Srh2=transpose(Srh1);
        J=sum(Srh2<Svr);
        N=Li+1-J;
        Srh=wkeep(Srh2,N,'r');
        TSVap1=wkeep(TSVap,N,'r');
        Srh(1)=Svr;
        TSVap1(1)=Tsat1;
        Trh=spline(Srh,TSVap1,Svh);
        Ert=spline(PSVap,EVap,Pr2);
        Ert1=transpose(Ert);
        Y=sum(Ert1<Evr);
        Y1=Li+1-Y;
        Ert2=wkeep(Ert1,Y1,'r');
        Ert2(1)=Evr;
        Ervh=spline(TSVap1,Ert2,Trh);
        %Saída da TAP=Vapor Superaquecido
        if(Svh>Svm)
            Smh3=spline(PSVap,SVap,Pm3);
            Smh4=transpose(Smh3);
            J=sum(Smh4<Svm);
            N=Li+1-J;
            Smh=wkeep(Smh4,N,'r');
            TSVap2=wkeep(TSVap,N,'r');
            Smh(1)=Svm;
            TSVap2(1)=Tsat2;
            Tmh=spline(Smh,TSVap2,Svh);
            Emt=spline(PSVap,EVap,Pm3);
            Emt1=transpose(Emt);
            W=sum(Emt1<Evm);
            W1=Li+1-W;
            Emt2=wkeep(Emt1,W1,'r');
            Emt2(1)=Evm;
            Emvh=spline(TSVap2,Emt2,Tmh);         
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            Tb1i=D1*(Pm3-Pc);
            Tb1=Tb1i/Ef4;
            Tb2i=D2*(Ph-Pm3);
            Tb2=Tb2i/Ef4;
            Erc=Evsc*X1+(1-X1)*Elsc;
            B=(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
            Qh1=Evh-Tb2-Elm;
            Eis=(1-Ef2)*Evrh+Ervh*Ef2;
            Qr=(Evrh-Eis)*(1-B);
            Qh=Qh1+Qr;
            Tt1i=(Evh-Ervh)-(Emvh-Ervh)*((Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1));
            Tt1=Tt1i*Ef2;
            Tt2i=(Evrh-Erc)*(1-B); 
            Tt2=Tt2i*Ef3;
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Vapor Superaquecido
        else
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            X3=(Svh-Slm)/(Svm-Slm);
            Tb1i=D1*(Pm3-Pc);
            Tb1=Tb1i/Ef4;
            Tb2i=D2*(Ph-Pm3);
            Tb2=Tb2i/Ef4;
            Erc=Evsc*X1+(1-X1)*Elsc;
            Erm=Evm*X3+(1-X3)*Elm;
            B=(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
            Qh1=Evh-Tb2-Elm;
            Eis=(1-Ef2)*Evrh+Ervh*Ef2;
            Qr=(Evrh-Eis)*(1-B);
            Qh=Qr+Qh1;
            Tt1i=(Evh-Ervh)-(Erm-Ervh)*((Elm-Elsc-Tb1)/(Erm-Elsc-Tb1));
            Tt1=Tt1i*Ef2;
            Tt2i=(Evrh-Erc)*(1-B);
            Tt2=Tt2i*Ef3;
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Mistura Saturada;
         end
    else
        X2=(Svh-Slr)/(Svr-Slr);
        %Saída da TAP=Mistura Saturada
        if(Svh>Svm)
            Smh3=spline(PSVap,SVap,Pm3);
            Smh4=transpose(Smh3);
            J=sum(Smh4<Svm);
            N=Li+1-J;
            Smh=wkeep(Smh4,N,'r');
            TSVap2=wkeep(TSVap,N,'r');
            Smh(1)=Svm;
            TSVap2(1)=Tsat2;
            Tmh=spline(Smh,TSVap2,Svh);
            Emt=spline(PSVap,EVap,Pm3);
            Emt1=transpose(Emt);
            W=sum(Emt1<Evm);
            W1=Li+1-W;
            Emt2=wkeep(Emt1,W1,'r');
            Emt2(1)=Evm;
            Emvh=spline(TSVap2,Emt2,Tmh); 
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            Tb1i=D1*(Pm3-Pc);
            Tb1=Tb1i/Ef4;
            Tb2i=D2*(Ph-Pm3);
            Tb2=Tb2i/Ef4;
            Erc=Evsc*X1+(1-X1)*Elsc;
            Err=Evr*X2+(1-X2)*Elr;
            B=(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
            Qh1=Evh-Tb2-Elm;
            Eis=(1-Ef2)*Evrh+Err*Ef2;
            Qr=(Evrh-Eis)*(1-B);
            Qh=Qh1+Qr;
            Tt1i=(Evh-Err)-(Emvh-Err)*((Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1));
            Tt1=Tt1i*Ef2;
            Tt2i=(Evrh-Erc)*(1-B);
            Tt2=Tt2i*Ef3;
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Vapor Superaquecido;
        else
            X1=(Svrh-Slsc)/(Svsc-Slsc);
            X3=(Svh-Slm)/(Svm-Slm);
            Tb1i=D1*(Pm3-Pc);
            Tb1=Tb1i/Ef4;
            Tb2i=D2*(Ph-Pm3);
            Tb2=Tb2i/Ef4;
            Erc=Evsc*X1+(1-X1)*Elsc;
            Err=Evr*X2+(1-X2)*Elr;
            Erm=Evm*X3+(1-X3)*Elm;
            B=(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
            Qh1=Evh-Tb2-Elm;
            Eis=(1-Ef2)*Evrh+Err*Ef2;
            Qr=(Evrh-Eis)*(1-B);
            Qh=Qh1+Qr;
            Tt1i=(Evh-Err)-(Erm-Err)*((Elm-Elsc-Tb1)/(Erm-Elsc-Tb1));
            Tt1=Tt1i*Ef2;
            Tt2i=(Evrh-Erc)*(1-B);
            Tt2=Tt2i*Ef3;
            Ef=((Tt1+Tt2-Tb1-Tb2)/(Qh1+Qr))*100;
            Tt=Tt1+Tt2;
            Tb=Tb1+Tb2;
            %Misturador=Mistura Saturada
        end
    end
        set(handles.edit8, 'String', Qh);
        set(handles.edit9, 'String', Tt);
        set(handles.edit10, 'String', Tb);
        set(handles.edit11, 'String', Ef);
        set(handles.uipanel16,'Visible','On');
        set(handles.text50,'Visible','On');
        set(handles.edit28,'Visible','On');
        set(handles.edit28, 'String', B);
        axes(handles.axes1);
        imageC=imread('5.png');
        image(imageC);
        axis off
        axis image
                else
                    set(handles.uipanel7,'Visible','On');
                    set(handles.text22,'Visible','On');
                    set(handles.uipanel3,'Visible','Off');
                end
            else
                set(handles.uipanel7,'Visible','On');
                set(handles.text20,'Visible','On');
                set(handles.uipanel3,'Visible','Off');
            end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text19,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text22,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text18,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text17,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text16,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
            else
                set(handles.uipanel7,'Visible','On');
                set(handles.uipanel3,'Visible','Off');
                set(handles.text48,'Visible','On');
            end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
            set(handles.text47,'Visible','On');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
        set(handles.text46,'Visible','On');
    end
end
if index6==1
    if(Ef2>=0 && Ef2<=1)
        if(Ef3>=0 && Ef3<=1)
            if(Ef4>=0 && Ef4<=1)
    if(Ph>ps(end))
        Tcs=Ts(end);
    else
        Tcs=spline(ps,Ts,Ph);
    end
    if(Ph>=PSVap(1) && Ph<=PSVap(end))
    if(Th>Tcs && Th<=800)
        if(Pc>=ps(1) && Pc<=100)
    Elsc=spline(ps,Els,Pc);
    Slsc=spline(ps,Sls,Pc);
    Evsc=spline(ps,Evs,Pc);
    Svsc=spline(ps,Svs,Pc);
    Svv=spline(Ts,Svs,Tcs);
    Evv=spline(Ts,Evs,Tcs);
    Svh1=spline(PSVap,SVap,Ph);
    Svh2=transpose(Svh1);
    Li=length(TSVap);
    if(Ph<ps(end))
        K1=sum(Svh2<Svv);
        K2=Li+1-K1;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svv;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evv;
        Evh=spline(Tth,Evh3,Th);
    else
        K1=find(TSVap==375);
        K2=Li+2-K1;
        Tth=wkeep(TSVap,K2,'r');
        Tth(1)=Tcs;
        Svh3=wkeep(Svh2,K2,'r');
        Svh3(1)=Svh3(3)-(Svh3(3)-Svh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Svh=spline(Tth,Svh3,Th);
        Evh1=spline(PSVap,EVap,Ph);
        Evh2=transpose(Evh1);
        Evh3=wkeep(Evh2,K2,'r');
        Evh3(1)=Evh3(3)-(Evh3(3)-Evh3(2))*(Tth(3)-Tth(1))/(Tth(3)-Tth(2));
        Evh=spline(Tth,Evh3,Th);
    end
    if(Pm2>=ps(1) && Pm2<ps(end))
        if(Pm3>=ps(1) && Pm3<ps(end))
            if(Pr2>=PSVap(1) && Pr2<=ps(end))
                Tr2s=spline(ps,Ts,Pr2);
                if(Tr2>=Tr2s && Tr2<=800)
                    if(Pm3>Pm2)
                        if(Ph>Pm3)
    D1=spline(ps,D,Pc);
    D2=spline(ps,D,Pm2);
    D3=spline(ps,D,Pm3);
    Svr=spline(ps,Svs,Pr2);
    Slr=spline(ps,Sls,Pr2);
    Svm=spline(ps,Svs,Pm2);
    Slm=spline(ps,Sls,Pm2);
    Elr=spline(ps,Els,Pr2);
    Evr=spline(ps,Evs,Pr2);
    Elm=spline(ps,Els,Pm2);
    Evm=spline(ps,Evs,Pm2);
    Svmm=spline(ps,Svs,Pm3);
    Slmm=spline(ps,Sls,Pm3);
    Evmm=spline(ps,Evs,Pm3);
    Elmm=spline(ps,Els,Pm3);    
    Tsat1=spline(ps,Ts,Pr2);
    Tsat2=spline(ps,Ts,Pm2);
    Tsat3=spline(ps,Ts,Pm3);
    Svr1=spline(PSVap,SVap,Pr2);
    Svr2=transpose(Svr1);
    K11=sum(Svr2<Svr);
    K22=Li+1-K11;
    Svr3=wkeep(Svr2,K22,'r');
    Svr3(1)=Svr;
    Ttr=wkeep(TSVap,K22,'r');
    Ttr(1)=Tsat1;
    Svrh=spline(Ttr,Svr3,Tr2);
    Evr1=spline(PSVap,EVap,Pr2);
    Evr2=transpose(Evr1);
    Evr3=wkeep(Evr2,K22,'r');
    Evr3(1)=Evr;
    Evrh=spline(Ttr,Evr3,Tr2);
    if (Svh>Svr)
        Srh1=spline(PSVap,SVap,Pr2);
        Srh2=transpose(Srh1);
        J=sum(Srh2<Svr);
        N=Li+1-J;
        Srh=wkeep(Srh2,N,'r');
        TSVap1=wkeep(TSVap,N,'r');
        Srh(1)=Svr;
        TSVap1(1)=Tsat1;
        Trh=spline(Srh,TSVap1,Svh);
        Ert=spline(PSVap,EVap,Pr2);
        Ert1=transpose(Ert);
        Y=sum(Ert1<Evr);
        Y1=Li+1-Y;
        Ert2=wkeep(Ert1,Y1,'r');
        Ert2(1)=Evr;
        Ervh=spline(TSVap1,Ert2,Trh);
        %Saída da TAP=Vapor Superaquecido
        if(Svh>Svmm)
            Smh5=spline(PSVap,SVap,Pm3);
            Smh6=transpose(Smh5);
            J=sum(Smh6<Svmm);
            N=Li+1-J;
            Smmh=wkeep(Smh6,N,'r');
            TSVap3=wkeep(TSVap,N,'r');
            Smmh(1)=Svmm;
            TSVap3(1)=Tsat3;
            Tmmh=spline(Smmh,TSVap3,Svh);
            Emmt=spline(PSVap,EVap,Pm3);
            Emmt1=transpose(Emmt);
            L=sum(Emmt1<Evmm);
            L1=Li+1-L;
            Emmt2=wkeep(Emmt1,L1,'r');
            Emmt2(1)=Evmm;
            Emmvh=spline(TSVap3,Emmt2,Tmmh);
            %Misturador da TAP=Vapor Superaquecido
            if(Svrh>Svm)
                Smh3=spline(PSVap,SVap,Pm2);
                Smh4=transpose(Smh3);
                G=sum(Smh4<Svm);
                Nt=Li+1-G;
                Smh=wkeep(Smh4,Nt,'r');
                TSVap2=wkeep(TSVap,Nt,'r');
                Smh(1)=Svm;
                TSVap2(1)=Tsat2;
                Tmh=spline(Smh,TSVap2,Svh);
                Emt=spline(PSVap,EVap,Pm2);
                Emt1=transpose(Emt);
                W=sum(Emt1<Evm);
                W1=Li+1-W;
                Emt2=wkeep(Emt1,W1,'r');
                Emt2(1)=Evm;
                Emvh=spline(TSVap2,Emt2,Tmh); 
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                Tb1i=D1*(Pm2-Pc);
                Tb1=Tb1i/Ef4;
                Tb2i=D2*(Pm3-Pm2);
                Tb2=Tb2i/Ef4;
                Tb3i=D3*(Ph-Pm3);
                Tb3=Tb3i/Ef4;
                Erc=Evsc*X1+(1-X1)*Elsc;
                B=(Elmm-Elm-Tb2)/(Emmvh-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Eis=(1-Ef2)*Evrh+Ervh*Ef2;
                Qr=(Evrh-Eis)*(1-B);
                Qh=Qh1+Qr;
                Tt1i=(Evh-Ervh);
                Tt1=Tt1i*Ef2;
                Z=(1-B)*(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
                Tt2i=(Evrh-Emvh)*(1-B)+(Emvh-Erc)*(1-B-Z);  
                Tt2=Tt2i*Ef3;
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Vapor Superaquecido
            else
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                X3=(Svrh-Slm)/(Svm-Slm);
                Tb1i=D1*(Pm2-Pc);
                Tb1=Tb1i/Ef4;
                Tb2i=D2*(Pm3-Pm2);
                Tb2=Tb2i/Ef4;
                Tb3i=D3*(Ph-Pm3);
                Tb3=Tb3i/Ef4;
                Erc=Evsc*X1+(1-X1)*Elsc;
                Erm=Evm*X3+(1-X3)*Elm;
                B=(Elmm-Elm-Tb2)/(Emmvh-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Eis=(1-Ef2)*Evrh+Ervh*Ef2;
                Qr=(Evrh-Eis)*(1-B);
                Qh=Qr+Qh1;
                Tt1i=(Evh-Ervh);
                Tt1=Tt1i*Ef2;
                Z=(1-B)*(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
                Tt2i=(Evrh-Erm)*(1-B)+(Erm-Erc)*(1-B-Z);
                Tt2=Tt2i*Ef3;
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Mistura Saturada
                end
        else
            X4=(Svh-Slmm)/(Svmm-Slmm);
            Ermm=Evmm*X4+(1-X4)*Elmm;
            %Misturador da TAP=Mistura Saturada
            if(Svrh>Svm)
                Smh3=spline(PSVap,SVap,Pm2);
                Smh4=transpose(Smh3);
                G=sum(Smh4<Svm);
                Nt=Li+1-G;
                Smh=wkeep(Smh4,Nt,'r');
                TSVap2=wkeep(TSVap,Nt,'r');
                Smh(1)=Svm;
                TSVap2(1)=Tsat2;
                Tmh=spline(Smh,TSVap2,Svh);
                Emt=spline(PSVap,EVap,Pm2);
                Emt1=transpose(Emt);
                W=sum(Emt1<Evm);
                W1=Li+1-W;
                Emt2=wkeep(Emt1,W1,'r');
                Emt2(1)=Evm;
                Emvh=spline(TSVap2,Emt2,Tmh);
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                Tb1i=D1*(Pm2-Pc);
                Tb1=Tb1i/Ef4;
                Tb2i=D2*(Pm3-Pm2);
                Tb2=Tb2i/Ef4;
                Tb3i=D3*(Ph-Pm3);
                Tb3=Tb3i/Ef4;
                Erc=Evsc*X1+(1-X1)*Elsc;
                B=(Elmm-Elm-Tb2)/(Ermm-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Eis=(1-Ef2)*Evrh+Ervh*Ef2;
                Qr=(Evrh-Eis)*(1-B);
                Qh=Qr+Qh1;
                Tt1i=(Evh-Ervh);
                Tt1=Tt1i*Ef2;
                Z=(1-B)*(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
                Tt2i=(Evrh-Emvh)*(1-B)+(Emvh-Erc)*(1-B-Z); 
                Tt2=Tt2i*Ef3;
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Vapor Superaquecido
            else
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                X3=(Svrh-Slm)/(Svm-Slm);
                Tb1i=D1*(Pm2-Pc);
                Tb1=Tb1i/Ef4;
                Tb2i=D2*(Pm3-Pm2);
                Tb2=Tb2i/Ef4;
                Tb3i=D3*(Ph-Pm3);
                Tb3=Tb3i/Ef4;
                Erc=Evsc*X1+(1-X1)*Elsc;
                Erm=Evm*X3+(1-X3)*Elm;
                B=(Elmm-Elm-Tb2)/(Ermm-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Eis=(1-Ef2)*Evrh+Ervh*Ef2;
                Qr=(Evrh-Eis)*(1-B);
                Qh=Qh1+Qr;
                Tt1i=(Evh-Ervh);
                Tt1=Tt1i*Ef2;
                Z=(1-B)*(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
                Tt2i=(Evrh-Erm)*(1-B)+(Erm-Erc)*(1-B-Z); 
                Tt2=Tt2i*Ef3;
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Mistura Saturada
                end
        end
    else            
        X2=(Svh-Slr)/(Svr-Slr);
        Err=Evr*X2+(1-X2)*Elr;
        %Saída da TAP=Mistura Saturada
        if(Svh>Svmm)
            Smh5=spline(PSVap,SVap,Pm3);
            Smh6=transpose(Smh5);
            J=sum(Smh6<Svmm);
            N=Li+1-J;
            Smmh=wkeep(Smh6,N,'r');
            TSVap3=wkeep(TSVap,N,'r');
            Smmh(1)=Svmm;
            TSVap3(1)=Tsat3;
            Tmmh=spline(Smmh,TSVap3,Svh);
            Emmt=spline(PSVap,EVap,Pm3);
            Emmt1=transpose(Emmt);
            L=sum(Emmt1<Evmm);
            L1=Li+1-L;
            Emmt2=wkeep(Emmt1,L1,'r');
            Emmt2(1)=Evmm;
            Emmvh=spline(TSVap3,Emmt2,Tmmh);
            %Misturador da TAP=Vapor Superaquecido
            if(Svrh>Svm)
                Smh3=spline(PSVap,SVap,Pm2);
                Smh4=transpose(Smh3);
                G=sum(Smh4<Svm);
                Nt=Li+1-G;
                Smh=wkeep(Smh4,Nt,'r');
                TSVap2=wkeep(TSVap,Nt,'r');
                Smh(1)=Svm;
                TSVap2(1)=Tsat2;
                Tmh=spline(Smh,TSVap2,Svh);
                Emt=spline(PSVap,EVap,Pm2);
                Emt1=transpose(Emt);
                W=sum(Emt1<Evm);
                W1=Li+1-W;
                Emt2=wkeep(Emt1,W1,'r');
                Emt2(1)=Evm;
                Emvh=spline(TSVap2,Emt2,Tmh);
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                Tb1i=D1*(Pm2-Pc);
                Tb1=Tb1i/Ef4;
                Tb2i=D2*(Pm3-Pm2);
                Tb2=Tb2i/Ef4;
                Tb3i=D3*(Ph-Pm3);
                Tb3=Tb3i/Ef4;
                Erc=Evsc*X1+(1-X1)*Elsc;
                B=(Elmm-Elm-Tb2)/(Emmvh-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Eis=(1-Ef2)*Evrh+Err*Ef2;
                Qr=(Evrh-Eis)*(1-B);
                Qh=Qh1+Qr;
                Tt1i=(Evh-Err);
                Tt1=Tt1i*Ef2;
                Z=(1-B)*(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
                Tt2i=(Evrh-Emvh)*(1-B)+(Emvh-Erc)*(1-B-Z); 
                Tt2=Tt2i*Ef3;
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Vapor Superaquecido
            else
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                X3=(Svrh-Slm)/(Svm-Slm);
                Tb1i=D1*(Pm2-Pc);
                Tb1=Tb1i/Ef4;
                Tb2i=D2*(Pm3-Pm2);
                Tb2=Tb2i/Ef4;
                Tb3i=D3*(Ph-Pm3);
                Tb3=Tb3i/Ef4;
                Erc=Evsc*X1+(1-X1)*Elsc;
                Erm=Evm*X3+(1-X3)*Elm;
                B=(Elmm-Elm-Tb2)/(Emmvh-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Eis=(1-Ef2)*Evrh+Err*Ef2;
                Qr=(Evrh-Eis)*(1-B);
                Qh=Qh1+Qr;
                Tt1i=(Evh-Err);
                Tt1=Tt1i*Ef2;
                Z=(1-B)*(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
                Tt2i=(Evrh-Erm)*(1-B)+(Erm-Erc)*(1-B-Z); 
                Tt2=Tt2i*Ef3;
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100; 
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Mistura Saturada
                end
        else
            X4=(Svh-Slmm)/(Svmm-Slmm);
            Ermm=Evmm*X4+(1-X4)*Elmm;
            %Misturador da TAP=Mistura Saturada
            if(Svrh>Svm)
                Smh3=spline(PSVap,SVap,Pm2);
                Smh4=transpose(Smh3);
                G=sum(Smh4<Svm);
                Nt=Li+1-G;
                Smh=wkeep(Smh4,Nt,'r');
                TSVap2=wkeep(TSVap,Nt,'r');
                Smh(1)=Svm;
                TSVap2(1)=Tsat2;
                Tmh=spline(Smh,TSVap2,Svh);
                Emt=spline(PSVap,EVap,Pm2);
                Emt1=transpose(Emt);
                W=sum(Emt1<Evm);
                W1=Li+1-W;
                Emt2=wkeep(Emt1,W1,'r');
                Emt2(1)=Evm;
                Emvh=spline(TSVap2,Emt2,Tmh);
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                Tb1i=D1*(Pm2-Pc);
                Tb1=Tb1i/Ef4;
                Tb2i=D2*(Pm3-Pm2);
                Tb2=Tb2i/Ef4;
                Tb3i=D3*(Ph-Pm3);
                Tb3=Tb3i/Ef4;
                Erc=Evsc*X1+(1-X1)*Elsc;
                B=(Elmm-Elm-Tb2)/(Ermm-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Eis=(1-Ef2)*Evrh+Err*Ef2;
                Qr=(Evrh-Eis)*(1-B);
                Qh=Qr+Qh1;
                Tt1i=(Evh-Err);
                Tt1=Tt1i*Ef2;
                Z=(1-B)*(Elm-Elsc-Tb1)/(Emvh-Elsc-Tb1);
                Tt2i=(Evrh-Emvh)*(1-B)+(Emvh-Erc)*(1-B-Z);
                Tt2=Tt2i*Ef3;
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Vapor Superaquecido
            else
                X1=(Svrh-Slsc)/(Svsc-Slsc);
                X3=(Svrh-Slm)/(Svm-Slm);
                Tb1i=D1*(Pm2-Pc);
                Tb1=Tb1i/Ef4;
                Tb2i=D2*(Pm3-Pm2);
                Tb2=Tb2i/Ef4;
                Tb3i=D3*(Ph-Pm3);
                Tb3=Tb3i/Ef4;
                Erc=Evsc*X1+(1-X1)*Elsc;
                Erm=Evm*X3+(1-X3)*Elm;
                B=(Elmm-Elm-Tb2)/(Ermm-Elm-Tb2);
                Qh1=Evh-Tb2-Elmm;
                Eis=(1-Ef2)*Evrh+Err*Ef2;
                Qr=(Evrh-Eis)*(1-B);
                Qh=Qh1+Qr;
                Tt1i=(Evh-Err);
                Tt1=Tt1i*Ef2;
                Z=(1-B)*(Elm-Elsc-Tb1)/(Erm-Elsc-Tb1);
                Tt2i=(Evrh-Erm)*(1-B)+(Erm-Erc)*(1-B-Z);
                Tt2=Tt2i*Ef3;
                Ef=((Tt1+Tt2-Tb1-Tb2-Tb3)/(Qh1+Qr))*100;
                Tt=Tt1+Tt2;
                Tb=Tb1+Tb2+Tb3;
                %Misturador da TBP=Mistura Saturada
            end
        end
    end  
        set(handles.edit8, 'String', Qh);
        set(handles.edit9, 'String', Tt);
        set(handles.edit10, 'String', Tb);
        set(handles.edit11, 'String', Ef);
        set(handles.uipanel16,'Visible','On');
        set(handles.text50,'Visible','On');
        set(handles.text51,'Visible','On');
        set(handles.edit28,'Visible','On');
        set(handles.edit29,'Visible','On');
        set(handles.edit28, 'String', B);
        set(handles.edit29, 'String', Z);
        axes(handles.axes1);
        imageC=imread('6.png');
        image(imageC);
        axis off
        axis image
                        else
                            set(handles.uipanel7,'Visible','On');
                            set(handles.text22,'Visible','On');
                            set(handles.uipanel3,'Visible','Off');
                        end
                    else
                        set(handles.uipanel7,'Visible','On');
                        set(handles.text23,'Visible','On');
                        set(handles.uipanel3,'Visible','Off');
                    end
                else
                    set(handles.uipanel7,'Visible','On');
                    set(handles.text20,'Visible','On');
                    set(handles.uipanel3,'Visible','Off');
                end
            else
                set(handles.uipanel7,'Visible','On');
                set(handles.text19,'Visible','On');
                set(handles.uipanel3,'Visible','Off');
            end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text22,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text21,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.text18,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text17,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.text16,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
    end
            else
                set(handles.uipanel7,'Visible','On');
                set(handles.uipanel3,'Visible','Off');
                set(handles.text48,'Visible','On');
            end
        else
            set(handles.uipanel7,'Visible','On');
            set(handles.uipanel3,'Visible','Off');
            set(handles.text47,'Visible','On');
        end
    else
        set(handles.uipanel7,'Visible','On');
        set(handles.uipanel3,'Visible','Off');
        set(handles.text46,'Visible','On');
    end
end
end
set(handles.pushbutton1,'Visible','Off');
set(handles.pushbutton2,'Visible','Off');
set(handles.togglebutton1,'Visible','Off');
set(handles.pushbutton3,'Visible','Off');
set(handles.pushbutton4,'Visible','Off');
set(handles.togglebutton2,'Visible','On');

      

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function radiobutton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function radiobutton2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function radiobutton3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function radiobutton4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function radiobutton5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function radiobutton6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton2,'Visible','On');
set(handles.pushbutton1,'Visible','Off');
set(handles.pushbutton3,'Visible','On');
set(handles.pushbutton4,'Visible','Off');
set(handles.uipanel12,'Visible','On');    
    

function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(handles.uipanel2,'Visible','Off');
    set(handles.uipanel3,'Visible','Off');
    set(handles.uipanel12,'Visible','Off');
    set(handles.pushbutton3,'Visible','Off');
    set(handles.pushbutton4,'Visible','Off');
    set(handles.text4,'Visible','Off');
    set(handles.edit4,'Visible','Off');
    set(handles.text5,'Visible','Off');
    set(handles.edit5,'Visible','Off');
    set(handles.text6,'Visible','Off');
    set(handles.edit6,'Visible','Off');
    set(handles.text7,'Visible','Off');
    set(handles.edit7,'Visible','Off');
    set(handles.edit12,'Visible','Off');
    set(handles.text24,'Visible','Off');
    set(handles.uipanel7,'Visible','Off');
    set(handles.uipanel9,'Visible','Off');
    set(handles.text37,'Visible','Off');
    set(handles.text38,'Visible','Off');
    set(handles.text39,'Visible','Off');
    set(handles.text40,'Visible','Off');
    set(handles.edit24,'Visible','Off');
    set(handles.edit25,'Visible','Off');
    set(handles.edit26,'Visible','Off');
    set(handles.edit27,'Visible','Off');
    set(handles.pushbutton2,'Visible','Off');
    set(handles.pushbutton1,'Visible','On');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton3,'Visible','Off');
set(handles.pushbutton4,'Visible','On');
set(handles.togglebutton1,'Visible','On');
yh1=get(handles.radiobutton1, 'Value');
yh2=get(handles.radiobutton2, 'Value');
yh3=get(handles.radiobutton3, 'Value');
yh4=get(handles.radiobutton4, 'Value');
yh5=get(handles.radiobutton5, 'Value');
yh6=get(handles.radiobutton6, 'Value');
yrr1=get(handles.radiobutton9, 'Value');
yrr2=get(handles.radiobutton10, 'Value');
if yrr1==1
if yh1==1
    set(handles.uipanel2,'Visible','On');
    set(handles.togglebutton1,'Visible','On');
end
if yh2==1
    set(handles.uipanel2,'Visible','On');
    set(handles.togglebutton1,'Visible','On');
    set(handles.text24,'Visible','On');
    set(handles.edit12,'Visible','On');
end
if yh3==1
    set(handles.uipanel2,'Visible','On');
    set(handles.togglebutton1,'Visible','On');
    set(handles.text4,'Visible','On');
    set(handles.edit4,'Visible','On');
    set(handles.text5,'Visible','On');
    set(handles.edit5,'Visible','On');
end
if yh4==1
    set(handles.uipanel2,'Visible','On');
    set(handles.togglebutton1,'Visible','On');
    set(handles.text4,'Visible','On');
    set(handles.edit4,'Visible','On');
    set(handles.text5,'Visible','On');
    set(handles.edit5,'Visible','On');
    set(handles.text6,'Visible','On');
    set(handles.edit6,'Visible','On');
end
if yh5==1
    set(handles.uipanel2,'Visible','On');
    set(handles.togglebutton1,'Visible','On');
    set(handles.text4,'Visible','On');
    set(handles.edit4,'Visible','On');
    set(handles.text5,'Visible','On');
    set(handles.edit5,'Visible','On');
    set(handles.text7,'Visible','On');
    set(handles.edit7,'Visible','On');
end
if yh6==1
    set(handles.uipanel2,'Visible','On');
    set(handles.togglebutton1,'Visible','On');
    set(handles.text4,'Visible','On');
    set(handles.edit4,'Visible','On');
    set(handles.text5,'Visible','On');
    set(handles.edit5,'Visible','On');
    set(handles.text6,'Visible','On');
    set(handles.edit6,'Visible','On');
    set(handles.text7,'Visible','On');
    set(handles.edit7,'Visible','On');
end
end
if yrr2==1
    set(handles.uipanel9,'Visible','On');
if yh1==1
    set(handles.uipanel2,'Visible','On');
    set(handles.togglebutton1,'Visible','On');
    set(handles.text37,'Visible','On');
    set(handles.edit24,'Visible','On');
    set(handles.text40,'Visible','On');
    set(handles.edit27,'Visible','On');
    set(handles.text38,'Visible','Off');
    set(handles.edit25,'Visible','Off');
    set(handles.text39,'Visible','Off');
    set(handles.edit26,'Visible','Off');
end
if yh2==1
    set(handles.uipanel2,'Visible','On');
    set(handles.togglebutton1,'Visible','On');
    set(handles.text24,'Visible','On');
    set(handles.edit12,'Visible','On');
    set(handles.text37,'Visible','On');
    set(handles.edit24,'Visible','On');
    set(handles.text40,'Visible','On');
    set(handles.edit27,'Visible','On');
    set(handles.text38,'Visible','Off');
    set(handles.edit25,'Visible','Off');
    set(handles.text39,'Visible','Off');
    set(handles.edit26,'Visible','Off');
end
if yh3==1
    set(handles.uipanel2,'Visible','On');
    set(handles.togglebutton1,'Visible','On');
    set(handles.text4,'Visible','On');
    set(handles.edit4,'Visible','On');
    set(handles.text5,'Visible','On');
    set(handles.edit5,'Visible','On');
    set(handles.text37,'Visible','Off');
    set(handles.edit24,'Visible','Off');
    set(handles.text38,'Visible','On');
    set(handles.edit25,'Visible','On');
    set(handles.text39,'Visible','On');
    set(handles.edit26,'Visible','On');
    set(handles.text40,'Visible','On');
    set(handles.edit27,'Visible','On');
end
if yh4==1
    set(handles.uipanel2,'Visible','On');
    set(handles.togglebutton1,'Visible','On');
    set(handles.text4,'Visible','On');
    set(handles.edit4,'Visible','On');
    set(handles.text5,'Visible','On');
    set(handles.edit5,'Visible','On');
    set(handles.text6,'Visible','On');
    set(handles.edit6,'Visible','On');
    set(handles.text37,'Visible','Off');
    set(handles.edit24,'Visible','Off');
    set(handles.text38,'Visible','On');
    set(handles.edit25,'Visible','On');
    set(handles.text39,'Visible','On');
    set(handles.edit26,'Visible','On');
    set(handles.text40,'Visible','On');
    set(handles.edit27,'Visible','On');
end
if yh5==1
    set(handles.uipanel2,'Visible','On');
    set(handles.togglebutton1,'Visible','On');
    set(handles.text4,'Visible','On');
    set(handles.edit4,'Visible','On');
    set(handles.text5,'Visible','On');
    set(handles.edit5,'Visible','On');
    set(handles.text7,'Visible','On');
    set(handles.edit7,'Visible','On');
    set(handles.text37,'Visible','Off');
    set(handles.edit24,'Visible','Off');
    set(handles.text38,'Visible','On');
    set(handles.edit25,'Visible','On');
    set(handles.text39,'Visible','On');
    set(handles.edit26,'Visible','On');
    set(handles.text40,'Visible','On');
    set(handles.edit27,'Visible','On');
end
if yh6==1
    set(handles.uipanel2,'Visible','On');
    set(handles.togglebutton1,'Visible','On');
    set(handles.text4,'Visible','On');
    set(handles.edit4,'Visible','On');
    set(handles.text5,'Visible','On');
    set(handles.edit5,'Visible','On');
    set(handles.text6,'Visible','On');
    set(handles.edit6,'Visible','On');
    set(handles.text7,'Visible','On');
    set(handles.edit7,'Visible','On');
    set(handles.text37,'Visible','Off');
    set(handles.edit24,'Visible','Off');
    set(handles.text38,'Visible','On');
    set(handles.edit25,'Visible','On');
    set(handles.text39,'Visible','On');
    set(handles.edit26,'Visible','On');
    set(handles.text40,'Visible','On');
    set(handles.edit27,'Visible','On');
end
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton4,'Visible','Off');
set(handles.pushbutton3,'Visible','On');
set(handles.togglebutton1,'Visible','Off');
set(handles.uipanel2,'Visible','Off');
set(handles.uipanel3,'Visible','Off');
set(handles.uipanel9,'Visible','Off');
set(handles.uipanel7,'Visible','Off');
set(handles.text4,'Visible','Off');
set(handles.edit4,'Visible','Off');
set(handles.text5,'Visible','Off');
set(handles.edit5,'Visible','Off');
set(handles.text6,'Visible','Off');
set(handles.edit6,'Visible','Off');
set(handles.text7,'Visible','Off');
set(handles.edit7,'Visible','Off');
set(handles.edit12,'Visible','Off');
set(handles.text24,'Visible','Off');
set(handles.text37,'Visible','Off');
set(handles.text38,'Visible','Off');
set(handles.text39,'Visible','Off');
set(handles.text40,'Visible','Off');
set(handles.edit24,'Visible','Off');
set(handles.edit25,'Visible','Off');
set(handles.edit26,'Visible','Off');
set(handles.edit27,'Visible','Off');

function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.togglebutton2,'Visible','Off');
set(handles.pushbutton1,'Visible','On');
set(handles.pushbutton2,'Visible','Off');
set(handles.pushbutton3,'Visible','Off');
set(handles.pushbutton4,'Visible','Off');
set(handles.uipanel2,'Visible','Off');
set(handles.uipanel3,'Visible','Off');
set(handles.uipanel9,'Visible','Off');
set(handles.uipanel7,'Visible','Off');
set(handles.uipanel12,'Visible','Off');
set(handles.text4,'Visible','Off');
set(handles.text5,'Visible','Off');
set(handles.text6,'Visible','Off');
set(handles.text7,'Visible','Off');
set(handles.text24,'Visible','Off');
set(handles.text37,'Visible','Off');
set(handles.text38,'Visible','Off');
set(handles.text39,'Visible','Off');
set(handles.text40,'Visible','Off');
set(handles.text45,'Visible','Off');
set(handles.text46,'Visible','Off');
set(handles.text47,'Visible','Off');
set(handles.text48,'Visible','Off');
set(handles.text16,'Visible','Off');
set(handles.text17,'Visible','Off');
set(handles.text18,'Visible','Off');
set(handles.text19,'Visible','Off');
set(handles.text20,'Visible','Off');
set(handles.text21,'Visible','Off');
set(handles.text22,'Visible','Off');
set(handles.text23,'Visible','Off');
set(handles.text25,'Visible','Off');
set(handles.edit4,'Visible','Off');
set(handles.edit5,'Visible','Off');
set(handles.edit6,'Visible','Off');
set(handles.edit7,'Visible','Off');
set(handles.edit12,'Visible','Off');
set(handles.edit24,'Visible','Off');
set(handles.edit25,'Visible','Off');
set(handles.edit26,'Visible','Off');
set(handles.edit27,'Visible','Off');
set(handles.uipanel16,'Visible','Off');
set(handles.text50,'Visible','Off');
set(handles.text51,'Visible','Off');
set(handles.edit28,'Visible','Off');
set(handles.edit29,'Visible','Off');
set(handles.edit1,'String', 0);
set(handles.edit2,'String', 0);
set(handles.edit3,'String', 0);
set(handles.edit4,'String', 0);
set(handles.edit5,'String', 0);
set(handles.edit6,'String', 0);
set(handles.edit7,'String', 0);
set(handles.edit8,'String', 0);
set(handles.edit9,'String', 0);
set(handles.edit10,'String', 0);
set(handles.edit11,'String', 0);
set(handles.edit12,'String', 0);
set(handles.edit24,'String', 100);
set(handles.edit25,'String', 100);
set(handles.edit26,'String', 100);
set(handles.edit27,'String', 100);
set(handles.edit28,'String', 0);
set(handles.edit29,'String', 0);


% Hint: get(hObject,'Value') returns toggle state of togglebutton2



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double


% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double


% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in togglebutton3.
function togglebutton3_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB

delete(get(hObject, 'parent')); % close PropWater

Termo;

% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton3

return;
