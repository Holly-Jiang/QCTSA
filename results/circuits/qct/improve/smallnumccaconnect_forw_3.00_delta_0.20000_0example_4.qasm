OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
cx q[13],q[19];
cx q[19],q[13];
cx q[13],q[19];
cx q[19],q[14];
cx q[14],q[19];
cx q[19],q[14];
cx q[14],q[8];
cx q[13],q[6];
cx q[6],q[13];
cx q[13],q[6];
cx q[19],q[13];
cx q[13],q[6];
cx q[6],q[13];
cx q[13],q[6];
cx q[19],q[13];
cx q[13],q[6];
cx q[14],q[19];
cx q[19],q[14];
cx q[14],q[19];
cx q[8],q[14];
cx q[14],q[8];
cx q[6],q[13];
cx q[19],q[13];
cx q[6],q[13];
cx q[13],q[6];
cx q[6],q[13];
cx q[13],q[19];
