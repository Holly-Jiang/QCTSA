OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
cx q[25],q[19];
cx q[24],q[18];
cx q[24],q[30];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[30],q[24];
cx q[19],q[13];
cx q[13],q[19];
cx q[19],q[13];
cx q[13],q[18];
cx q[18],q[13];
cx q[24],q[30];
cx q[25],q[30];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[25];
