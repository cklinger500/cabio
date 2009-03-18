#!/bin/sh
echo "Calling Affy HG U133 Plus2 MicroArray data parsers"
perl Affy_HG_U133_Plus2_DataSeparator.pl HG-U133_Plus_2.annot.csv

echo "Generating SQL Loader specific input data from Affy HG U133 Plus2 MicroArray data"
perl Affy_HG_U133_Plus2_DataFormatter.pl representative_public_ID_file_out.txt representative_public_ID_out.txt representative_public_ID_out.log 
perl Affy_HG_U133_Plus2_DataFormatter.pl unigene_ID_file_out.txt unigene_ID_out.txt unigene_ID_out.log
perl Affy_HG_U133_Plus2_DataFormatter.pl gene_title_file_out.txt gene_title_out.txt gene_title_out.log
perl Affy_HG_U133_Plus2_DataFormatter.pl gene_symbol_file_out.txt gene_symbol_out.txt gene_symbol_out.log

perl Affy_HG_U133_Plus2_ChromosomeLocation_DataFormatter.pl chromosomal_location_file_out.txt chromosomal_location_out.txt

perl Affy_HG_U133_Plus2_DataFormatter.pl entrez_gene_file_out.txt entrez_gene_out.txt entrez_gene_out.log
perl Affy_HG_U133_Plus2_DataFormatter.pl swissprot_file_out.txt swissprot_out.txt swissprot_out.log
perl Affy_HG_U133_Plus2_DataFormatter.pl OMIM_file_out.txt OMIM_out.txt OMIM_out.log
perl Affy_HG_U133_Plus2_DataFormatter.pl refseq_protein_id_file_out.txt refseq_protein_id_out.txt refseq_protein_id_out.log
perl Affy_HG_U133_Plus2_DataFormatter.pl refseq_transcript_id_file_out.txt refseq_transcript_id_out.txt refseq_transcript_id_out.log

perl Affy_HG_U133_Plus2_GoBiologicalProcess_DataFormatter.pl go_biological_process_file_out.txt go_biological_process_out.txt
perl Affy_HG_U133_Plus2_GoCellularComponent_DataFormatter.pl go_cellular_component_file_out.txt go_cellular_component_out.txt
perl Affy_HG_U133_Plus2_GoMolecularFunction_DataFormatter.pl go_molecular_function_file_out.txt go_molecular_function_out.txt
perl Affy_HG_U133_Plus2_Pathway_DataFormatter.pl pathway_file_out.txt pathway_out.txt
perl Affy_HG_U133_Plus2_Alignments_DataFormatter.pl alignments_file_out.txt alignments_out.txt
perl Affy_HG_U133_Plus2_Interpro_DataFormatter.pl interpro_file_out.txt interpro_out.txt

echo "Finished generating SQL Loader input files for Affymetrix HG-U133 Plus2 MicroArray Data"