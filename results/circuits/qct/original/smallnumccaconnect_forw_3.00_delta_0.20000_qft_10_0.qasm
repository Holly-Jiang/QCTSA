OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
h q[-1];
rz(-0.8) q[-1];
rz(0.8) q[-1];
rz(-0.4) q[-1];
rz(0.4) q[-1];
rz(-0.2) q[-1];
rz(0.2) q[-1];
rz(-0.1) q[-1];
rz(0.1) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.8) q[-1];
rz(0.8) q[-1];
rz(-0.4) q[-1];
rz(0.4) q[-1];
rz(-0.2) q[-1];
rz(0.2) q[-1];
rz(-0.1) q[-1];
rz(0.1) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.8) q[-1];
rz(0.8) q[-1];
rz(-0.4) q[-1];
rz(0.4) q[-1];
rz(-0.2) q[-1];
rz(0.2) q[-1];
rz(-0.1) q[-1];
rz(0.1) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.8) q[-1];
rz(0.8) q[-1];
rz(-0.4) q[-1];
rz(0.4) q[-1];
rz(-0.2) q[-1];
rz(0.2) q[-1];
rz(-0.1) q[-1];
rz(0.1) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.8) q[-1];
rz(0.8) q[-1];
rz(-0.4) q[-1];
rz(0.4) q[-1];
rz(-0.2) q[-1];
rz(0.2) q[-1];
rz(-0.1) q[-1];
rz(0.1) q[-1];
rz(-0.0) q[-1];
rz(0.0) q[-1];
rz(-0.8) q[-1];
rz(0.8) q[-1];
rz(-0.4) q[-1];
rz(0.4) q[-1];
rz(-0.2) q[-1];
rz(0.2) q[-1];
rz(-0.1) q[-1];
rz(0.1) q[-1];
rz(-0.8) q[-1];
rz(0.8) q[-1];
rz(-0.4) q[-1];
rz(0.4) q[-1];
rz(-0.2) q[-1];
rz(0.2) q[-1];
rz(-0.8) q[-1];
rz(0.8) q[-1];
rz(-0.4) q[-1];
rz(0.4) q[-1];
rz(-0.8) q[-1];
rz(0.8) q[-1];
cx q[7],q[2];
cx q[7],q[2];
h q[-1];
cx q[7],q[13];
cx q[7],q[13];
cx q[7],q[13];
cx q[13],q[7];
cx q[7],q[13];
cx q[13],q[6];
cx q[2],q[7];
cx q[13],q[6];
cx q[2],q[7];
h q[-1];
cx q[13],q[18];
cx q[2],q[6];
cx q[13],q[18];
cx q[2],q[6];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[12];
cx q[2],q[6];
cx q[6],q[2];
cx q[2],q[6];
cx q[6],q[13];
cx q[7],q[2];
cx q[18],q[12];
cx q[6],q[13];
cx q[7],q[2];
h q[-1];
cx q[18],q[24];
cx q[6],q[12];
cx q[7],q[13];
cx q[18],q[24];
cx q[6],q[12];
cx q[7],q[13];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[17];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[18];
cx q[7],q[13];
cx q[13],q[7];
cx q[7],q[13];
cx q[13],q[6];
cx q[2],q[7];
cx q[24],q[17];
cx q[12],q[18];
cx q[13],q[6];
cx q[2],q[7];
h q[-1];
cx q[24],q[29];
cx q[12],q[17];
cx q[13],q[18];
cx q[2],q[6];
cx q[24],q[29];
cx q[12],q[17];
cx q[13],q[18];
cx q[2],q[6];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[24],q[29];
cx q[29],q[24];
cx q[24],q[29];
cx q[29],q[23];
cx q[17],q[24];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[12];
cx q[2],q[6];
cx q[6],q[2];
cx q[2],q[6];
cx q[6],q[13];
cx q[7],q[2];
cx q[29],q[23];
cx q[17],q[24];
cx q[18],q[12];
cx q[6],q[13];
cx q[7],q[2];
h q[-1];
h q[-1];
cx q[17],q[23];
cx q[18],q[24];
cx q[6],q[12];
cx q[7],q[13];
cx q[17],q[23];
cx q[18],q[24];
cx q[6],q[12];
cx q[7],q[13];
h q[-1];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[12];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[12],q[18];
cx q[7],q[13];
cx q[13],q[7];
cx q[7],q[13];
cx q[13],q[6];
cx q[2],q[7];
cx q[17],q[23];
cx q[23],q[17];
cx q[17],q[23];
cx q[24],q[17];
cx q[24],q[17];
cx q[12],q[18];
cx q[13],q[6];
cx q[2],q[7];
h q[-1];
h q[-1];
cx q[12],q[17];
cx q[13],q[18];
cx q[2],q[6];
cx q[12],q[17];
cx q[13],q[18];
cx q[2],q[6];
h q[-1];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[2],q[6];
cx q[6],q[2];
cx q[2],q[6];
cx q[6],q[13];
cx q[7],q[2];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[18],q[12];
cx q[18],q[12];
cx q[6],q[13];
cx q[7],q[2];
h q[-1];
h q[-1];
cx q[6],q[12];
cx q[7],q[13];
cx q[6],q[12];
cx q[7],q[13];
h q[-1];
cx q[7],q[13];
cx q[13],q[7];
cx q[7],q[13];
cx q[2],q[7];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[12];
cx q[13],q[6];
cx q[13],q[6];
cx q[2],q[7];
h q[-1];
h q[-1];
cx q[2],q[6];
cx q[2],q[6];
h q[-1];
cx q[7],q[13];
cx q[13],q[7];
cx q[7],q[13];
cx q[13],q[6];
cx q[13],q[6];
h q[-1];
h q[-1];
h q[-1];
