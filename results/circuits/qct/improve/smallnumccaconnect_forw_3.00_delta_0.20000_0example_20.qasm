OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
cx q[8],q[15];
cx q[7],q[2];
cx q[2],q[7];
cx q[7],q[2];
cx q[14],q[7];
cx q[7],q[14];
cx q[14],q[7];
cx q[20],q[14];
cx q[14],q[7];
cx q[7],q[14];
cx q[14],q[7];
cx q[20],q[14];
cx q[15],q[20];
cx q[14],q[7];
cx q[20],q[15];
cx q[7],q[14];
cx q[8],q[14];
cx q[7],q[2];
cx q[2],q[7];
cx q[7],q[2];
cx q[2],q[8];
