% Simscape(TM) Multibody(TM) version: 23.2

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(5).translation = [0.0 0.0 0.0];
smiData.RigidTransform(5).angle = 0.0;
smiData.RigidTransform(5).axis = [0.0 0.0 0.0];
smiData.RigidTransform(5).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [-84.749999999999957 210.50000000000014 84.749999999999943];  % mm
smiData.RigidTransform(1).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(1).axis = [0.57735026918962562 -0.57735026918962595 0.57735026918962562];
smiData.RigidTransform(1).ID = "B[Encoder-1:-:P_Base-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-84.749999999999972 209.05000000000021 84.750000000000028];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(2).axis = [0.57735026918962584 -0.57735026918962595 0.57735026918962562];
smiData.RigidTransform(2).ID = "F[Encoder-1:-:P_Base-1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-91.218329586756155 260.01300000000015 88.744894441489777];  % mm
smiData.RigidTransform(3).angle = 2.4383273144198943;  % rad
smiData.RigidTransform(3).axis = [0.65779905776246517 0.65779905776246494 0.3668798157620915];
smiData.RigidTransform(3).ID = "B[Encoder-1:-:Pendulum-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [3.0000000000000284 0 1.4210854715202004e-14];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931957;  % rad
smiData.RigidTransform(4).axis = [0.57735026918962562 0.57735026918962573 0.57735026918962573];
smiData.RigidTransform(4).ID = "F[Encoder-1:-:Pendulum-2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [0 0 0];  % mm
smiData.RigidTransform(5).angle = 0;  % rad
smiData.RigidTransform(5).axis = [0 0 0];
smiData.RigidTransform(5).ID = "RootGround[P_Base-1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(3).mass = 0.0;
smiData.Solid(3).CoM = [0.0 0.0 0.0];
smiData.Solid(3).MoI = [0.0 0.0 0.0];
smiData.Solid(3).PoI = [0.0 0.0 0.0];
smiData.Solid(3).color = [0.0 0.0 0.0];
smiData.Solid(3).opacity = 0.0;
smiData.Solid(3).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.034748962398193424;  % kg
smiData.Solid(1).CoM = [-109.30868361343232 46.894326766266119 0.00029524134490813077];  % mm
smiData.Solid(1).MoI = [108.73777393184209 65.722245953586082 173.8316918426838];  % kg*mm^2
smiData.Solid(1).PoI = [0.00040113765513982296 -0.00034908533825907706 50.027532951043433];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Pendulum*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 2.4025337305870562;  % kg
smiData.Solid(2).CoM = [-85.613666102398582 98.040735140928902 85.871025241702199];  % mm
smiData.Solid(2).MoI = [17476.66812954118 11571.855931979157 17348.076864100727];  % kg*mm^2
smiData.Solid(2).PoI = [-774.56300822635956 -44.959599913791045 -114.06087037636841];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Encoder*:*Default";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 2.3610741358550258;  % kg
smiData.Solid(3).CoM = [-85.836670554596608 95.196574853426384 86.021578576820104];  % mm
smiData.Solid(3).MoI = [16359.142547603751 11553.364381709978 16226.390269839731];  % kg*mm^2
smiData.Solid(3).PoI = [-833.15026710749578 -50.104260596476905 -27.279520942326858];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "P_Base*:*Default";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = -31.699824734503462;  % deg
smiData.RevoluteJoint(1).ID = "[Encoder-1:-:P_Base-1]";

smiData.RevoluteJoint(2).Rz.Pos = -179.99999999999997;  % deg
smiData.RevoluteJoint(2).ID = "[Encoder-1:-:Pendulum-2]";

