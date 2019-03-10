#include "Read_Elf.h"

FILE *elf = NULL;
Elf64_Ehdr elf64_hdr;

//Program headers
unsigned int padr = 0;
unsigned int psize = 0;
unsigned int pnum = 0;

//Section Headers
unsigned int sadr = 0;
unsigned int ssize = 0;
unsigned int snum = 0;

//Symbol table
unsigned int symnum = 0;
unsigned int symadr = 0;
unsigned int symsize = 0;

//用于指示 包含节名称的字符串是第几个节（从零开始计数）
unsigned int index = 0;

//字符串表在文件中地址，其内容包括.symtab和.debug节中的符号表
unsigned int stradr = 0;

bool open_file()
{
	return true;
}

void read_elf()
{
	if (!open_file())
		return;

	fprintf(elf, "ELF Header:\n");
	read_Elf_header();

	fprintf(elf, "\n\nSection Headers:\n");
	read_elf_sections();

	fprintf(elf, "\n\nProgram Headers:\n");
	read_Phdr();

	fprintf(elf, "\n\nSymbol table:\n");
	read_symtable();

	fclose(elf);
}

void read_Elf_header()
{
	//file should be relocated
	fread(&elf64_hdr, 1, sizeof(elf64_hdr), file);

	fprintf(elf, " magic number:  ");

	fprintf(elf, " Class:  ELFCLASS32\n");

	fprintf(elf, " Data:  little-endian\n");

	fprintf(elf, " Version:   \n");

	fprintf(elf, " OS/ABI:	 System V ABI\n");

	fprintf(elf, " ABI Version:   \n");

	fprintf(elf, " Type:  ");

	fprintf(elf, " Machine:   \n");

	fprintf(elf, " Version:  \n");

	fprintf(elf, " Entry point address:  0x%x\n");

	fprintf(elf, " Start of program headers:    bytes into  file\n");

	fprintf(elf, " Start of section headers:    bytes into  file\n");

	fprintf(elf, " Flags:  0x%x\n");

	fprintf(elf, " Size of this header:   Bytes\n");

	fprintf(elf, " Size of program headers:   Bytes\n");

	fprintf(elf, " Number of program headers:   \n");

	fprintf(elf, " Size of section headers:    Bytes\n");

	fprintf(elf, " Number of section headers:  \n");

	fprintf(elf, " Section header string table index:   \n");
}

void read_elf_sections()
{

	Elf64_Shdr elf64_shdr;

	for (int c = 0; c < snum; c++)
	{
		fprintf(elf, " [%3d]\n", c);

		//file should be relocated
		fread(&elf64_shdr, 1, sizeof(elf64_shdr), file);

		fprintf(elf, " Name: ");

		fprintf(elf, " Type: ");

		fprintf(elf, " Address:  ");

		fprintf(elf, " Offest:  \n");

		fprintf(elf, " Size:  ");

		fprintf(elf, " Entsize:  ");

		fprintf(elf, " Flags:   ");

		fprintf(elf, " Link:  ");

		fprintf(elf, " Info:  ");

		fprintf(elf, " Align: \n");
	}
}

void read_Phdr()
{
	Elf64_Phdr elf64_phdr;
	for (int c = 0; c < pnum; c++)
	{
		fprintf(elf, " [%3d]\n", c);

		//file should be relocated
		fread(&elf64_phdr, 1, sizeof(elf64_phdr), file);

		fprintf(elf, " Type:   ");

		fprintf(elf, " Flags:   ");

		fprintf(elf, " Offset:   ");

		fprintf(elf, " VirtAddr:  ");

		fprintf(elf, " PhysAddr:   ");

		fprintf(elf, " FileSiz:   ");

		fprintf(elf, " MemSiz:   ");

		fprintf(elf, " Align:   ");
	}
}

void read_symtable()
{
	Elf64_Sym elf64_sym;
	for (int c = 0; c < symnum; c++)
	{
		fprintf(elf, " [%3d]   ", c);

		//file should be relocated
		fread(&elf64_sym, 1, sizeof(elf64_sym), file);

		fprintf(elf, " Name:  %40s   ");

		fprintf(elf, " Bind:   ");

		fprintf(elf, " Type:   ");

		fprintf(elf, " NDX:   ");

		fprintf(elf, " Size:   ");

		fprintf(elf, " Value:   \n");
	}
}
