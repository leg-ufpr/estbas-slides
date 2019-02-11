require("Rgraphviz")
rm(list=ls())

node1 <- "Altera 0m"
node2 <- "Altera 5m"
node3 <- "Não altera 5m"
node4 <- "Altera 10m"
node5 <- "Não altera 10m"
node6 <- "Altera 10m "
node7 <- "Não altera 10m "

nodeNames <- c(node1,node2,node3,node4,node5, node6, node7)

rEG <- new("graphNEL", nodes = nodeNames, edgemode = "directed")
rEG <- addEdge(nodeNames[1], nodeNames[2], rEG, 1)
rEG <- addEdge(nodeNames[1], nodeNames[3], rEG, 1)
rEG <- addEdge(nodeNames[2], nodeNames[4], rEG, 1)
rEG <- addEdge(nodeNames[2], nodeNames[5], rEG, 1)
rEG <- addEdge(nodeNames[3], nodeNames[6], rEG, 1)
rEG <- addEdge(nodeNames[3], nodeNames[7], rEG, 1)
plot(rEG)
text(165, 280, "0.1")
text(200, 200, "0.9")
text(130, 200, "0.1")
text(70, 100, "0.1")
text(135, 100, "0.9")
text(195, 100, "0.1")
text(255, 100, "0.9")

text(30, -5, "P(X=3)=0.001", cex=0.9)
text(125, -5, "P(X=2)=0.009", cex=0.9)
text(210, -5, "P(X=2)=0.009", cex=0.9)
text(295, -5, "P(X=1)=0.081", cex=0.9)


node1 <- "Não altera 0m"
node2 <- "Altera 5m"
node3 <- "Não altera 5m"
node4 <- "Altera 10m"
node5 <- "Não altera 10m"
node6 <- "Altera 10m "
node7 <- "Não altera 10m "

nodeNames <- c(node1,node2,node3,node4,node5, node6, node7)

rEG <- new("graphNEL", nodes = nodeNames, edgemode = "directed")
rEG <- addEdge(nodeNames[1], nodeNames[2], rEG, 1)
rEG <- addEdge(nodeNames[1], nodeNames[3], rEG, 1)
rEG <- addEdge(nodeNames[2], nodeNames[4], rEG, 1)
rEG <- addEdge(nodeNames[2], nodeNames[5], rEG, 1)
rEG <- addEdge(nodeNames[3], nodeNames[6], rEG, 1)
rEG <- addEdge(nodeNames[3], nodeNames[7], rEG, 1)
plot(rEG)
text(165, 280, "0.9")
text(200, 200, "0.9")
text(130, 200, "0.1")
text(70, 100, "0.1")
text(135, 100, "0.9")
text(195, 100, "0.1")
text(255, 100, "0.9")

text(30, -5, "P(X=2)=0.009", cex=0.9)
text(125, -5, "P(X=1)=0.081", cex=0.9)
text(210, -5, "P(X=1)=0.081", cex=0.9)
text(295, -5, "P(X=0)=0.729", cex=0.9)



