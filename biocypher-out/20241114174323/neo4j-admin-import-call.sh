#!/bin/bash
version=$(bin/neo4j-admin --version | cut -d '.' -f 1)
if [[ $version -ge 5 ]]; then
	bin/neo4j-admin database import full --delimiter="\t" --array-delimiter="|" --quote="'" --overwrite-destination=true --skip-bad-relationships=true --skip-duplicate-nodes=true --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/BiologicalMaterial-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/BiologicalMaterial-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Sample-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Sample-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Investigation-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Investigation-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/ObservationUnit-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/ObservationUnit-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Study-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Study-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/ObservedVariable-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/ObservedVariable-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Schema_info-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Schema_info-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Trait-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Trait-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasPart-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasPart-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasVariable-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasVariable-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasTrait-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasTrait-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/PartOf-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/PartOf-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasBiologicalMaterial-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasBiologicalMaterial-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/DerivesFrom-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/DerivesFrom-part.*" neo4j 
else
	bin/neo4j-admin import --delimiter="\t" --array-delimiter="|" --quote="'" --force=true --skip-bad-relationships=true --skip-duplicate-nodes=true --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/BiologicalMaterial-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/BiologicalMaterial-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Sample-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Sample-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Investigation-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Investigation-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/ObservationUnit-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/ObservationUnit-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Study-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Study-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/ObservedVariable-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/ObservedVariable-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Schema_info-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Schema_info-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Trait-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/Trait-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasPart-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasPart-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasVariable-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasVariable-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasTrait-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasTrait-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/PartOf-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/PartOf-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasBiologicalMaterial-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/HasBiologicalMaterial-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/DerivesFrom-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174323/DerivesFrom-part.*" --database=neo4j 
fi