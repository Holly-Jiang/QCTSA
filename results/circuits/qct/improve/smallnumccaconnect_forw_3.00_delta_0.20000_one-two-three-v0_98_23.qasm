OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
h q[0];
cx q[9],q[15];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[16];
cx q[27],q[21];
t q[4];
t q[1];
t q[0];
t q[3];
t q[2];
cx q[21],q[27];
cx q[15],q[9];
cx q[16],q[21];
tdg q[1];
cx q[27],q[21];
cx q[21],q[27];
cx q[27],q[21];
cx q[21],q[16];
t q[0];
cx q[21],q[27];
tdg q[4];
tdg q[1];
cx q[16],q[21];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[27];
cx q[16],q[21];
h q[0];
cx q[27],q[21];
cx q[21],q[27];
cx q[27],q[21];
cx q[21],q[16];
h q[1];
t q[4];
t q[0];
t q[1];
cx q[21],q[15];
tdg q[2];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[21];
t q[1];
cx q[15],q[9];
tdg q[3];
tdg q[2];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[16];
cx q[16],q[9];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[16];
cx q[15],q[21];
h q[1];
cx q[9],q[15];
h q[3];
t q[2];
t q[1];
t q[3];
cx q[9],q[16];
cx q[27],q[21];
cx q[15],q[9];
tdg q[2];
cx q[16],q[21];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[15];
t q[3];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[16];
cx q[16],q[9];
tdg q[4];
tdg q[2];
cx q[15],q[9];
cx q[21],q[15];
cx q[15],q[21];
cx q[21],q[15];
cx q[16],q[21];
h q[3];
cx q[9],q[16];
h q[2];
h q[3];
t q[4];
t q[2];
t q[3];
cx q[20],q[27];
cx q[27],q[20];
cx q[20],q[27];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[20];
tdg q[0];
cx q[9],q[15];
t q[2];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[20];
tdg q[1];
tdg q[0];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[20];
cx q[9],q[15];
h q[2];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[9];
cx q[20],q[15];
t q[2];
t q[1];
t q[0];
cx q[9],q[16];
cx q[20],q[15];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[16];
cx q[16],q[9];
tdg q[2];
cx q[21],q[16];
t q[3];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[16];
cx q[16],q[9];
tdg q[4];
tdg q[2];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[16];
cx q[16],q[9];
cx q[21],q[16];
h q[3];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[21];
h q[2];
h q[4];
t q[3];
t q[2];
t q[4];
cx q[15],q[20];
tdg q[0];
cx q[9],q[15];
t q[2];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[20];
tdg q[1];
tdg q[0];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[20];
cx q[9],q[15];
h q[2];
cx q[20],q[15];
cx q[15],q[20];
cx q[20],q[15];
cx q[15],q[9];
t q[0];
h q[2];
t q[1];
t q[2];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[16];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[16];
cx q[16],q[9];
tdg q[0];
cx q[21],q[16];
t q[4];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[16];
cx q[16],q[9];
tdg q[3];
tdg q[0];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[16];
cx q[16],q[9];
cx q[21],q[16];
h q[4];
cx q[15],q[21];
cx q[21],q[15];
cx q[15],q[21];
cx q[9],q[15];
t q[0];
t q[3];
cx q[15],q[9];
cx q[20],q[15];
tdg q[3];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[20];
t q[2];
cx q[15],q[9];
tdg q[0];
tdg q[3];
cx q[20],q[15];
cx q[15],q[20];
cx q[20],q[15];
cx q[15],q[9];
cx q[20],q[15];
h q[2];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[20];
h q[3];
t q[2];
t q[3];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[16];
cx q[16],q[9];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[16];
tdg q[1];
cx q[15],q[9];
t q[3];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[16];
tdg q[2];
tdg q[1];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[16];
cx q[15],q[9];
h q[3];
cx q[16],q[21];
cx q[21],q[16];
cx q[16],q[21];
cx q[21],q[15];
