

matplot(t(MinutesPlayed), type="b", pch=15:18, col=c(1:4, 6)) #type = b plots lines between each point
legend("bottomleft", inset=0.01, legend=Players, col=c(1:4, 6), pch=15:18, horiz = F)

# We can also subset plotted graphs
# First select your subset
MinutesPlayed
Data <- MinutesPlayed[c("KobeBryant", "JoeJohnson", "DwightHoward"),]
Data

matplot(t(Data), type="b", pch=16, col=c(1:3)) #type = b plots lines between each point
legend("bottomleft", inset=0.01, legend=c("KobeBryant", "JoeJohnson", "DwightHoward"), pch=16, col=c(1:3), horiz=F)
