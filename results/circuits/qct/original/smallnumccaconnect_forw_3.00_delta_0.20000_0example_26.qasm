OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
cx q[21],q[16];
cx q[20],q[27];
cx q[27],q[20];
cx q[20],q[27];
cx q[15],q[20];
cx q[20],q[15];
cx q[15],q[20];
cx q[9],q[15];
cx q[15],q[20];
cx q[20],q[15];
cx q[15],q[20];
cx q[9],q[15];
cx q[16],q[9];
cx q[15],q[20];
cx q[9],q[16];
cx q[20],q[15];
cx q[21],q[15];
cx q[20],q[15];
cx q[15],q[20];
cx q[20],q[15];
cx q[15],q[21];
