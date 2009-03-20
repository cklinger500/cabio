#!/bin/sh
echo "Calling Affy HG U133A MicroArray data parsers"
perl Affy_HG_U133_DataSeparator.pl HG-U133A.annot.csv

echo "Generating SQL Loader specific input data from Affy HG U133  MicroArray data"
perl Affy_HG_U133_DataFormatter.pl representative_public_ID_file_out.txt representative_public_ID_out.txt representative_public_ID_out.log 
perl Affy_HG_U133_DataFormatter.pl unigene_ID_file_out.txt unigene_ID_out.txt unigene_ID_out.log
perl Affy_HG_U133_DataFormatter.pl gene_title_file_out.txt gene_title_out.txt gene_title_out.log
perl Affy_HG_U133_DataFormatter.pl gene_symbol_file_out.txt gene_symbol_out.txt gene_symbol_out.log

perl Affy_HG_U133_ChromosomeLocation_DataFormatter.pl chromosomal_location_file_out.txt chromosomal_location_out.txt

perl Affy_HG_U133_DataFormatter.pl entrez_gene_file_out.txt entrez_gene_out.txt entrez_gene_out.log
perl Affy_HG_U133_DataFormatter.pl swissprot_file_out.txt swissprot_out.txt swissprot_out.log
perl Affy_HG_U133_DataFormatter.pl OMIM_file_out.txt OMIM_out.txt OMIM_out.log
perl Affy_HG_U133_DataFormatter.pl refseq_protein_id_file_out.txt refseq_protein_id_out.txt refseq_protein_id_out.log
perl Affy_HG_U133_DataFormatter.pl refseq_transcript_id_file_out.txt refseq_transcript_id_out.txt refseq_transcript_id_out.log

perl Affy_HG_U133_GoBiologicalProcess_DataFormatter.pl go_biological_process_file_out.txt go_biological_process_out.txt
perl Affy_HG_U133_GoCellularComponent_DataFormatter.pl go_cellular_component_file_out.txt go_cellular_component_out.txt
perl Affy_HG_U133_GoMolecularFunction_DataFormatter.pl go_molecular_function_file_out.txt go_molecular_function_out.txt
perl Affy_HG_U133_Pathway_DataFormatter.pl pathway_file_out.txt pathway_out.txt
perl Affy_HG_U133_Alignments_DataFormatter.pl alignments_file_out.txt alignments_out.txt
perl Affy_HG_U133_Interpro_DataFormatter.pl interpro_file_out.txt interpro_out.txt

# Generate for second type of array

perl Affy_HG_U133_DataSeparator_2.pl HG-U133A_2.annot.csv

echo "Generating SQL Loader specific input data from Affy HG U133A_2 MicroArray data"
perl Affy_HG_U133_DataFormatter.pl representative_public_ID_file_out_2.txt representative_public_ID_out_2.txt representative_public_ID_out_2.log 
perl Affy_HG_U133_DataFormatter.pl unigene_ID_file_out_2.txt unigene_ID_out_2.txt unigene_ID_out_2.log
perl Affy_HG_U133_DataFormatter.pl gene_title_file_out_2.txt gene_title_out_2.txt gene_title_out_2.log
perl Affy_HG_U133_DataFormatter.pl gene_symbol_file_out_2.txt gene_symbol_out_2.txt gene_symbol_out_2.log

perl Affy_HG_U133_ChromosomeLocation_DataFormatter.pl chromosomal_location_file_out_2.txt chromosomal_location_out_2.txt

perl Affy_HG_U133_DataFormatter.pl entrez_gene_file_out_2.txt entrez_gene_out_2.txt entrez_gene_out_2.log
perl Affy_HG_U133_DataFormatter.pl swissprot_file_out_2.txt swissprot_out_2.txt swissprot_out_2.log
perl Affy_HG_U133_DataFormatter.pl OMIM_file_out_2.txt OMIM_out_2.txt OMIM_out_2.log
perl Affy_HG_U133_DataFormatter.pl refseq_protein_id_file_out_2.txt refseq_protein_id_out_2.txt refseq_protein_id_out_2.log
perl Affy_HG_U133_DataFormatter.pl refseq_transcript_id_file_out_2.txt refseq_transcript_id_out_2.txt refseq_transcript_id_out_2.log

perl Affy_HG_U133_GoBiologicalProcess_DataFormatter.pl go_biological_process_file_out_2.txt go_biological_process_out_2.txt
perl Affy_HG_U133_GoCellularComponent_DataFormatter.pl go_cellular_component_file_out_2.txt go_cellular_component_out_2.txt
perl Affy_HG_U133_GoMolecularFunction_DataFormatter.pl go_molecular_function_file_out_2.txt go_molecular_function_out_2.txt
perl Affy_HG_U133_Pathway_DataFormatter.pl pathway_file_out_2.txt pathway_out_2.txt
perl Affy_HG_U133_Alignments_DataFormatter.pl alignments_file_out_2.txt alignments_out_2.txt
perl Affy_HG_U133_Interpro_DataFormatter.pl interpro_file_out.txt interpro_out_2.txt

echo "Finished generating SQL Loader input files for Affymetrix HG-U133  MicroArray Data"

# Generate for third type of array

perl Affy_HG_U133_DataSeparator_3.pl HT_HG-U133A.annot.csv

echo "Generating SQL Loader specific input data from Affy HT HG U133B MicroArray data"
perl Affy_HG_U133_DataFormatter.pl representative_public_ID_file_out_3.txt representative_public_ID_out_3.txt representative_public_ID_out_3.log 
perl Affy_HG_U133_DataFormatter.pl unigene_ID_file_out_3.txt unigene_ID_out_3.txt unigene_ID_out_3.log
perl Affy_HG_U133_DataFormatter.pl gene_title_file_out_3.txt gene_title_out_3.txt gene_title_out_3.log
perl Affy_HG_U133_DataFormatter.pl gene_symbol_file_out_3.txt gene_symbol_out_3.txt gene_symbol_out_3.log

perl Affy_HG_U133_ChromosomeLocation_DataFormatter.pl chromosomal_location_file_out_3.txt chromosomal_location_out_3.txt

perl Affy_HG_U133_DataFormatter.pl entrez_gene_file_out_3.txt entrez_gene_out_3.txt entrez_gene_out_3.log
perl Affy_HG_U133_DataFormatter.pl swissprot_file_out_3.txt swissprot_out_3.txt swissprot_out_3.log
perl Affy_HG_U133_DataFormatter.pl OMIM_file_out_3.txt OMIM_out_3.txt OMIM_out_3.log
perl Affy_HG_U133_DataFormatter.pl refseq_protein_id_file_out_3.txt refseq_protein_id_out_3.txt refseq_protein_id_out_3.log
perl Affy_HG_U133_DataFormatter.pl refseq_transcript_id_file_out_3.txt refseq_transcript_id_out_3.txt refseq_transcript_id_out_3.log

perl Affy_HG_U133_GoBiologicalProcess_DataFormatter.pl go_biological_process_file_out_3.txt go_biological_process_out_3.txt
perl Affy_HG_U133_GoCellularComponent_DataFormatter.pl go_cellular_component_file_out_3.txt go_cellular_component_out_3.txt
perl Affy_HG_U133_GoMolecularFunction_DataFormatter.pl go_molecular_function_file_out_3.txt go_molecular_function_out_3.txt
perl Affy_HG_U133_Pathway_DataFormatter.pl pathway_file_out_3.txt pathway_out_3.txt
perl Affy_HG_U133_Alignments_DataFormatter.pl alignments_file_out_3.txt alignments_out_3.txt
perl Affy_HG_U133_Interpro_DataFormatter.pl interpro_file_out.txt interpro_out_3.txt

echo "Finished generating SQL Loader input files for Affymetrix HG-U133  MicroArray Data"