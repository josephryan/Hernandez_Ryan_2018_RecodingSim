# Recoding Simulation analyses

#### Background
Models of protein evolution are used to score amino acid substitutions in sequence alignments or phylogenetic analyses. They predict the probability of one amino acid changing to another. The Dayhoff and JTT matrices are examples of these 20-state amino acid replacement models. However, these models do not account for compositional heterogeneity and substitution saturation (Susko & Roger 2007). Recently, recoding techniques have been employed to address these problems when exploring distant phylogenetic relationships. Dayhoff recoding (i.e., Dayhoff-6) specifically recodes amino acids from Dayhoff matrices according to 6 groups of chemically related amino acids that frequently replace one another (Hrdy et al. 2005), while JTT recoding (i.e., S&R-6) is a 6-state recoding strategy based off of binning experiments on the JTT model by Susko & Roger (2007). 

#### Rationale
The principle of using recoding to address substitution saturation has never been directly tested. Evidence from our analysis presented at the SICB 2018 Conference showed that under all simulations in the study, Dayhoff-6 recoding performed worse than the PAM250 (Dayhoff) model. These preliminary results raise doubts about the benefits of using recoding approaches. 

#### Objectives
The objective of this study is to test the performance of recoding under a range of saturation levels and determine if it is appropriate for deep phylogenetic questions. To do this we will perform simulations to evaluate the effect of two different types of recoding (i.e., Dayhoff-6 recoding and S&R6 recording) applied to simulated data matrices that are evolved using the model that corresponds to the basis of the particular recoding strategy (i.e. PAM250 for Dayhoff-6 recoding and JTT for S&R6 recoding). Sequences will be simulated on the topologies from Chang et al. (2015) and Feuda et al. (2017). These are two different topologies based on the same dataset, which includes a wide range of animals and a few closely related outgroups. 

### 01-SATURATION_TEST
directory with test to look for correlation between branch-length 
scaling factor and saturation

### phylotocol_recoding_v1.pdf
document laying out planned analyses.
see https://github.com/josephryan/phylotocol for more info

### phylotocol_recodingextension_v1.0.pdf
Our analysis did not address compositional heterogeneity and since we used the same model for simulation and testing, we did not consider problems stemming from poor model fit. As such, this phylotocol serves as an extension of our previous analysis (phylotocol_recoding_v1.pdf) to address these concerns.

### phylotocol_recodingextension_v1.1.pdf
Changed the way we will perform simulations and calculations of compositional heterogeneity in section 2.3 of the phylotocol by using straightforward methods in P4 (Foster 2004). 

### phylotocol_recodingextension_v1.2.pdf
Changed methods in section 2.3 because we could not adequately simulate and test compositional heterogeneity. We have changed the tree we will use for simulations and the method we will use to evaluate tree reconstructions.

### LICENSE
    Copyright (C) 2018, Hernandez and Ryan

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

