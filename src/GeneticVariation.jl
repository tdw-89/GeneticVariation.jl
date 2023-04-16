# GeneticVariation.jl
# ===================
#
# A julia package for the representation and analysis of genetic variation.
#
# This file is a part of BioJulia.
# License is MIT: https://github.com/BioJulia/GeneticVariation.jl/blob/master/LICENSE

__precompile__()

module GeneticVariation

export
    # Site types
    Conserved,
    Mutated,
    #Transition,
    #Transversion,
    Segregating,

    # Distances
    Proportion,
    Jaccard,
    MASH,
    distance,
    pdistance,
    mash,
    jaccard,

    # Allele frequencies
    gene_frequencies,

    # Diversity measures
    avg_mut,
    NL79,

    # VCF and BCF
    VCF,
    BCF,
    header,
    metainfotag,
    metainfoval,
    isfilled,
    MissingFieldException

import BioSequences:
    BioSequences,
    Alphabet,
    AA_Term,
    BioSequence,
    bp_chunk_count,
    Certain,
    Composition,
    DNAAlphabet,
    GeneticCode,
    ispurine,
    Kmer,
    Match,
    Mismatch,
    MinHashSketch,
    NucAlphs,
    Position,
    RNAAlphabet,
    Sequence
    
import BioCore:
    metainfotag,
    metainfoval,
    header

import Combinatorics.permutations
import IntervalTrees: Interval, IntervalValue
import Twiddle:
    enumerate_nibbles,
    nibble_mask,
    count_0000_nibbles,
    count_nonzero_nibbles,
    count_1111_nibbles

include("vcf/vcf.jl")
include("bcf/bcf.jl")
include("site_counting.jl")
include("seg_sites.jl")
include("distances/minhash.jl")
include("distances/proportion.jl")
include("allele_freq.jl")
include("diversity_measures.jl")

end # Module GeneticVariation
