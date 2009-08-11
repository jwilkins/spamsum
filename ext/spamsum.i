%include "cpointer.i"
%include "typemaps.i"
%module "spamsum_swig"

%typemap(in) (char *s1, int s1_len) {
 $1 = STR2CSTR($input);
 $2 = (int) RSTRING($input)->len;
};
%typemap(in) (char *s2, int s2_len) {
 $1 = STR2CSTR($input);
 $2 = (int) RSTRING($input)->len;
};

int edit_distn(char *s1, int s1_len, char *s2, int s2_len);
char *spamsum(char *str, unsigned int len, unsigned int flags=0, unsigned int bsize=0);
char *spamsum_hex(char *str, unsigned int len, unsigned int flags=0, unsigned int bsize=0);
unsigned int spamsum_match(char *s1, char *s2);
