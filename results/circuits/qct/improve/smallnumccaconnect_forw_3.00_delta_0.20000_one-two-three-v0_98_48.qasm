OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
h q[0];
cx q[27],q[21];
cx q[21],q[27];
cx q[27],q[21];
cx q[21],q[28];
cx q[27],q[32];
cx q[32],q[27];
cx q[27],q[32];
cx q[32],q[26];
t q[4];
t q[1];
t q[0];
t q[3];
t q[2];
cx q[28],q[21];
cx q[26],q[32];
cx q[27],q[21];
cx q[21],q[27];
cx q[27],q[21];
cx q[21],q[28];
tdg q[1];
cx q[27],q[21];
t q[0];
cx q[27],q[21];
cx q[21],q[27];
cx q[27],q[21];
cx q[21],q[28];
tdg q[4];
tdg q[1];
cx q[27],q[21];
cx q[21],q[27];
cx q[27],q[21];
cx q[21],q[28];
cx q[27],q[21];
h q[0];
cx q[28],q[33];
cx q[33],q[28];
cx q[28],q[33];
cx q[33],q[27];
h q[1];
t q[4];
t q[0];
t q[1];
cx q[33],q[39];
cx q[39],q[33];
cx q[33],q[39];
cx q[39],q[32];
cx q[32],q[39];
cx q[39],q[32];
cx q[32],q[26];
tdg q[2];
cx q[39],q[32];
t q[1];
cx q[39],q[32];
cx q[32],q[39];
cx q[39],q[32];
cx q[32],q[26];
tdg q[3];
tdg q[2];
cx q[39],q[32];
cx q[32],q[39];
cx q[39],q[32];
cx q[32],q[26];
cx q[39],q[32];
h q[1];
cx q[26],q[32];
cx q[32],q[26];
cx q[26],q[32];
cx q[32],q[39];
h q[3];
t q[2];
t q[1];
t q[3];
cx q[32],q[27];
cx q[20],q[26];
cx q[26],q[20];
cx q[20],q[26];
cx q[21],q[15];
cx q[15],q[21];
cx q[21],q[15];
cx q[15],q[20];
cx q[39],q[32];
tdg q[2];
cx q[27],q[32];
cx q[32],q[27];
cx q[27],q[32];
cx q[32],q[39];
t q[3];
cx q[32],q[27];
tdg q[4];
tdg q[2];
cx q[39],q[33];
cx q[33],q[39];
cx q[39],q[33];
cx q[33],q[27];
cx q[32],q[27];
cx q[27],q[32];
cx q[32],q[27];
cx q[27],q[33];
h q[3];
cx q[32],q[27];
h q[2];
h q[3];
t q[4];
t q[2];
t q[3];
cx q[32],q[27];
cx q[27],q[32];
cx q[32],q[27];
cx q[21],q[15];
cx q[15],q[21];
cx q[21],q[15];
cx q[27],q[21];
tdg q[0];
cx q[20],q[27];
t q[2];
cx q[20],q[15];
cx q[15],q[20];
cx q[20],q[15];
cx q[15],q[21];
tdg q[1];
tdg q[0];
cx q[27],q[21];
cx q[15],q[21];
cx q[21],q[15];
cx q[15],q[21];
cx q[21],q[27];
h q[2];
cx q[15],q[21];
t q[2];
t q[1];
t q[0];
cx q[27],q[32];
cx q[15],q[21];
cx q[33],q[27];
tdg q[2];
cx q[32],q[27];
cx q[27],q[32];
cx q[32],q[27];
cx q[27],q[33];
t q[3];
cx q[27],q[32];
tdg q[4];
tdg q[2];
cx q[33],q[39];
cx q[39],q[33];
cx q[33],q[39];
cx q[39],q[32];
cx q[27],q[32];
cx q[32],q[27];
cx q[27],q[32];
cx q[32],q[39];
h q[3];
cx q[27],q[32];
h q[2];
h q[4];
t q[3];
t q[2];
t q[4];
cx q[27],q[21];
cx q[21],q[27];
cx q[27],q[21];
cx q[21],q[15];
tdg q[0];
cx q[27],q[21];
t q[2];
cx q[27],q[21];
cx q[21],q[27];
cx q[27],q[21];
cx q[21],q[15];
tdg q[1];
tdg q[0];
cx q[27],q[21];
cx q[21],q[27];
cx q[27],q[21];
cx q[21],q[15];
cx q[27],q[21];
h q[2];
cx q[15],q[20];
cx q[20],q[15];
cx q[15],q[20];
cx q[20],q[27];
t q[0];
h q[2];
t q[1];
t q[2];
cx q[20],q[26];
cx q[26],q[20];
cx q[20],q[26];
cx q[26],q[32];
cx q[32],q[26];
cx q[26],q[32];
cx q[32],q[39];
cx q[26],q[32];
tdg q[0];
cx q[39],q[32];
cx q[32],q[39];
cx q[39],q[32];
cx q[32],q[26];
t q[4];
cx q[32],q[39];
tdg q[3];
tdg q[0];
cx q[26],q[32];
cx q[32],q[26];
cx q[26],q[32];
cx q[32],q[39];
cx q[26],q[32];
h q[4];
cx q[32],q[26];
cx q[26],q[32];
cx q[32],q[26];
cx q[39],q[32];
t q[0];
t q[3];
cx q[32],q[39];
cx q[21],q[27];
cx q[27],q[21];
cx q[21],q[27];
cx q[27],q[32];
tdg q[3];
cx q[39],q[33];
cx q[33],q[39];
cx q[39],q[33];
cx q[33],q[27];
t q[2];
cx q[33],q[39];
cx q[39],q[33];
cx q[33],q[39];
cx q[39],q[32];
tdg q[0];
tdg q[3];
cx q[27],q[32];
cx q[39],q[32];
cx q[32],q[39];
cx q[39],q[32];
cx q[32],q[27];
h q[2];
cx q[39],q[32];
h q[3];
t q[2];
t q[3];
cx q[21],q[27];
cx q[39],q[33];
cx q[33],q[39];
cx q[39],q[33];
cx q[33],q[28];
cx q[28],q[33];
cx q[33],q[28];
cx q[28],q[21];
tdg q[1];
cx q[27],q[21];
cx q[21],q[27];
cx q[27],q[21];
cx q[21],q[28];
t q[3];
cx q[21],q[27];
tdg q[2];
tdg q[1];
cx q[33],q[27];
cx q[27],q[33];
cx q[33],q[27];
cx q[28],q[33];
cx q[21],q[28];
h q[3];
cx q[33],q[28];
cx q[28],q[33];
cx q[33],q[28];
cx q[28],q[21];
