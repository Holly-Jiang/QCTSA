OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
cx q[21],q[16];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[7],q[13];
cx q[13],q[7];
cx q[7],q[13];
cx q[2],q[7];
cx q[7],q[2];
cx q[2],q[7];
cx q[8],q[2];
cx q[2],q[8];
cx q[8],q[2];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[8];
cx q[22],q[28];
cx q[28],q[22];
cx q[22],q[28];
cx q[21],q[15];
cx q[15],q[21];
cx q[21],q[15];
cx q[28],q[21];
cx q[21],q[27];
cx q[27],q[21];
cx q[21],q[27];
cx q[15],q[21];
cx q[21],q[16];
cx q[27],q[20];
cx q[20],q[27];
cx q[27],q[20];
cx q[20],q[15];
cx q[15],q[20];
cx q[16],q[21];
cx q[28],q[21];
cx q[16],q[21];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[28];