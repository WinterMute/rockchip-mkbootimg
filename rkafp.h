#ifndef _RKAFP_H
#define _RKAFP_H

#define MAX_NAME_LENGTH            32
#define MAX_UPDATE_FILENAME_LENGTH 60

struct update_part {
	char name[MAX_NAME_LENGTH];
	char filename[MAX_UPDATE_FILENAME_LENGTH];
	unsigned int nand_size;
	unsigned int pos;
	unsigned int nand_addr;
	unsigned int padded_size;
	unsigned int size;
};

#define RKAFP_MAGIC "RKAF"

struct update_header {
	char magic[4];
	unsigned int length;
	char model[0x22];
	char id[0x1e];
	char manufacturer[0x38];
	unsigned int unknown1;
	unsigned int version;
	unsigned int num_parts;

	struct update_part parts[16];
	unsigned char reserved[0x74];
};

struct param_header {
	char magic[4];
	unsigned int length;
};

#endif // _RKAFP_H
