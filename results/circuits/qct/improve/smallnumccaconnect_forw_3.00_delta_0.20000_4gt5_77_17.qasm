OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
x q[0];
t q[2];
t q[3];
cx q[26],q[20];
h q[0];
cx q[20],q[26];
t q[1];
t q[0];
t q[4];
cx q[20],q[14];
cx q[14],q[20];
cx q[20],q[14];
cx q[14],q[8];
cx q[20],q[26];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[14];
tdg q[1];
cx q[15],q[8];
t q[0];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[14];
tdg q[2];
tdg q[1];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[14];
cx q[15],q[8];
h q[0];
cx q[14],q[20];
cx q[20],q[14];
cx q[14],q[20];
cx q[20],q[15];
h q[1];
h q[0];
t q[2];
t q[1];
t q[0];
cx q[20],q[14];
tdg q[3];
cx q[26],q[20];
t q[1];
cx q[26],q[19];
cx q[19],q[26];
cx q[26],q[19];
cx q[19],q[14];
tdg q[4];
tdg q[3];
cx q[20],q[14];
cx q[19],q[14];
cx q[14],q[19];
cx q[19],q[14];
cx q[14],q[20];
h q[1];
cx q[19],q[14];
t q[1];
t q[4];
t q[3];
cx q[20],q[15];
cx q[19],q[14];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[20];
tdg q[1];
cx q[8],q[15];
t q[0];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[20];
tdg q[2];
tdg q[1];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[20];
cx q[8],q[15];
h q[0];
cx q[20],q[14];
cx q[14],q[20];
cx q[20],q[14];
cx q[14],q[8];
h q[1];
t q[0];
t q[2];
t q[1];
cx q[14],q[19];
tdg q[3];
cx q[20],q[14];
t q[1];
cx q[20],q[14];
cx q[14],q[20];
cx q[20],q[14];
cx q[14],q[19];
tdg q[4];
tdg q[3];
cx q[20],q[14];
cx q[14],q[20];
cx q[20],q[14];
cx q[14],q[19];
cx q[20],q[14];
h q[1];
cx q[14],q[20];
cx q[20],q[14];
cx q[14],q[20];
cx q[19],q[14];
h q[4];
t q[1];
t q[3];
t q[4];
cx q[20],q[15];
cx q[8],q[14];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[19];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[20];
tdg q[1];
cx q[8],q[15];
t q[4];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[20];
tdg q[0];
tdg q[1];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[20];
cx q[8],q[15];
h q[4];
cx q[20],q[14];
cx q[14],q[20];
cx q[20],q[14];
cx q[14],q[8];
h q[1];
h q[4];
t q[0];
t q[1];
t q[4];
cx q[14],q[20];
tdg q[2];
cx q[19],q[14];
t q[1];
cx q[19],q[26];
cx q[26],q[19];
cx q[19],q[26];
cx q[26],q[20];
tdg q[3];
tdg q[2];
cx q[14],q[20];
cx q[26],q[20];
cx q[20],q[26];
cx q[26],q[20];
cx q[20],q[14];
h q[1];
cx q[26],q[20];
t q[1];
t q[3];
t q[2];
cx q[14],q[8];
cx q[26],q[20];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[14];
tdg q[1];
cx q[15],q[8];
t q[4];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[14];
tdg q[0];
tdg q[1];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[14];
cx q[15],q[8];
h q[4];
cx q[14],q[20];
cx q[20],q[14];
cx q[14],q[20];
cx q[20],q[15];
h q[1];
t q[1];
cx q[20],q[26];
tdg q[2];
cx q[14],q[20];
t q[1];
cx q[14],q[20];
cx q[20],q[14];
cx q[14],q[20];
cx q[20],q[26];
tdg q[3];
tdg q[2];
cx q[14],q[20];
cx q[20],q[14];
cx q[14],q[20];
cx q[20],q[26];
cx q[14],q[20];
h q[1];
cx q[26],q[19];
cx q[19],q[26];
cx q[26],q[19];
cx q[19],q[14];
