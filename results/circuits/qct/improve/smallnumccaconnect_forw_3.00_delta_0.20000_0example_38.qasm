OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
cx q[14],q[20];
cx q[13],q[7];
cx q[7],q[13];
cx q[13],q[7];
cx q[19],q[13];
cx q[13],q[19];
cx q[19],q[13];
cx q[26],q[19];
cx q[19],q[13];
cx q[13],q[19];
cx q[19],q[13];
cx q[26],q[19];
cx q[20],q[26];
cx q[19],q[13];
cx q[26],q[20];
cx q[13],q[19];
cx q[14],q[19];
cx q[13],q[7];
cx q[7],q[13];
cx q[13],q[7];
cx q[7],q[14];
