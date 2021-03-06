% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tree_addLabel.R
\name{addLabel}
\alias{addLabel}
\title{add labels to nodes of a tree}
\usage{
addLabel(tree, label = NULL)
}
\arguments{
\item{tree}{A phylo object}

\item{label}{A character vector as the label of tree. The label is passed to
nodes that are sorted by their node number in ascending order. The default
is NULL, and nodes are labeled by using their node numbers (convert node
numbers from numeric values to characters)}
}
\value{
a phylo object
}
\description{
\code{addLabel} adds labels to the node of a tree (\code{phylo} object)
}
\examples{
 
data(tinyTree)
library(ggtree)

# PLOT tree
# The node labels are in orange texts and the node numbers are in blue
ggtree(tinyTree,branch.length = 'none')+
    geom_text2(aes(label = label), color = "darkorange",
           hjust = -0.1, vjust = -0.7) +
    geom_text2(aes(label = node), color = "darkblue",
               hjust = -0.5, vjust = 0.7)

# change labels
nodes <- showNode(tree = tinyTree, only.leaf = FALSE)
tt <- addLabel(tree = tinyTree, label = LETTERS[nodes])

ggtree(tt, branch.length = 'none')+
    geom_text2(aes(label = label), color = "darkorange",
           hjust = -0.1, vjust = -0.7) +
    geom_text2(aes(label = node), color = "darkblue",
               hjust = -0.5, vjust = 0.7)

}
\author{
Ruizhu Huang
}
