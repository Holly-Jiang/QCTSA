OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
cx q[6],q[1];
cx q[12],q[6];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[19],q[13];
cx q[14],q[19];
cx q[8],q[14];
