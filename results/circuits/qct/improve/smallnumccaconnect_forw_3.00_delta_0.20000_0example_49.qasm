OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
cx q[27],q[21];
cx q[26],q[20];
cx q[26],q[31];
cx q[20],q[26];
cx q[26],q[20];
cx q[20],q[26];
cx q[31],q[26];
cx q[27],q[20];
cx q[20],q[27];
cx q[27],q[20];
cx q[21],q[27];
cx q[27],q[21];
cx q[26],q[31];
cx q[20],q[26];
cx q[26],q[20];
cx q[20],q[26];
cx q[26],q[31];
cx q[20],q[26];
