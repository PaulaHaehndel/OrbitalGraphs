#
# OrbitalGraphs: Computations with Orbital Graphs
#
# Declarations
#

#! @Chapter OrbitalGraphs

#! @Section Attributes
#!  Information about the existing attributes.

#! @Description
#!   This attribute is an immutable list of all orbital graphs of
#!   a transformation semigroup or permutation group.
DeclareAttribute("OrbitalGraphs", IsPermGroup);
DeclareAttribute("OrbitalGraphs", IsTransformationSemigroup);

#DeclareAttribute("OrbitalGraphsRepresentative", IsPermGroup);


#! @Description
#!   The <E>orbital closure</E> of a permutation group <M>G</M>
#!   is the intersection of the automorphism groups of all
#!   orbital graphs of the group.
DeclareAttribute("OrbitalClosure", IsPermGroup);

#! @Description
#!   The <E>orbital index</E> of a permutation group <M>G</M>
#!   is the index <M>G</M> in <C>OrbitalClosure(G)</C>.
DeclareAttribute("OrbitalIndex", IsPermGroup);

#! @EndSection

#! @Section Properties
#!  Information about the existing properties.

#! @Description
#!   The permutation group <M>G</M> is <E>orbital graph recognisable</E>
#!   if and only if <M>G = OrbitalClosure(G)</M>.
DeclareProperty("IsOrbitalGraphRecognisable", IsPermGroup);


#! @Description
#!   The permutation group <M>G</M> is <E>strongly orbital graph recognisable</E>
#!   if and only if there exists an orbital graph <M>\Gamma</M> of
#!   <M>G</M> such that the automorphism group of <M>\Gamma</M> is
#!   <M>G</M>.
DeclareProperty("IsStronglyOrbitalGraphRecognisable", IsPermGroup);

#! @Description
#!   The permutation group <M>G</M> is <E>absolutely orbital graph recognisable</E>
#!   if and only if for every orbital graph <M>\Gamma</M> of
#!   <M>G</M> the automorphism group of <M>\Gamma</M> is
#!   <M>G</M>.
DeclareProperty("IsAbsolutelyOrbitalGraphRecognisable", IsPermGroup);

# TODO: Sebastian tells me this is dangerous.
DeclareSynonym("IsOGR", IsOrbitalGraphRecognisable);
DeclareSynonym("IsStronglyOGR", IsStronglyOrbitalGraphRecognisable);
DeclareSynonym("IsAbsolutelyOGR", IsAbsolutelyOrbitalGraphRecognisable);

#! @EndSection

