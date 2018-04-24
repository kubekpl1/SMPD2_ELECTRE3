# Electre_tri(performanceMatrix,
#             alternatives,
#             profiles,
#             profiles_names,
#             criteria,
#             minmaxcriteria,
#             criteriaWeights,
#             IndifferenceThresholds, 
#             PreferenceThresholds,
#             VetoThresholds,
#             lambda=NULL)

# the performance table

performanceMatrix <- rbind(
  c(10,10.5,2.3,256,4,4399),
  c(10,12.9,2.3,256,4,5199),
  c(10,12.9,2.3,64,4,4699),
  c(10,10.5,2.3,512,4,5399),
  c(10,10.5,2.3,64,4,3649),
  c(10,12.9,2.3,64,4,4399),
  c(10,12.9,2.3,512,4,6199),
  c(9,9.7,2.26,256,2,4549),
  c(10,9.7,2.26,128,2,2999),
  c(10,9.7,1.8,128,2,2699)
)
# Vector containing names of alternatives

alternatives <- c(  "Apple iPad Pro 10,5cal Wi-Fi + Cellular 256GB (rozowe zloto) ",
                    "Apple iPad Pro 12,9cal 2gen Wi-Fi + Cellular 256GB (szary) ",
                    "Apple iPad Pro 12,9cal 2gen Wi-Fi + Cellular 64GB (srebrny) ",
                    "Apple iPad Pro 10,5cal Wi-Fi + Cellular 512GB (rozowe zloto) ",
                    "Apple iPad Pro 10,5cal Wi-Fi + Cellular 64GB (srebrny) ",
                    "Apple iPad Pro 12,9cal 2gen Wi-Fi + Cellular 64GB (zloty)",
                    "Apple iPad Pro 12,9cal 2gen Wi-Fi + Cellular 512GB (zloty) ",
                    "Apple iPad Pro 9,7cal Wi-Fi + Cellular 256GB (rozowe zloto) ",
                    "Apple iPad Wi-Fi + Cellular 128GB (srebrny)",
                    "Apple iPad Wi-Fi + Cellular 128GB (zloty)" )

# Vector containing names of criteria

criteria <- c("System operacyjny iOS","Wyswietlacz cale","Procesor GHz","Pojemnosc GB","Pamiec_RAM GB","Cena")
criteriaWeights <- c(0.05 , 0.1, 0.15, 0.25 , 0.20 , 0.25)

# vector indicating the direction of the criteria evaluation .

minmaxcriteria <- c('max','max','max','max','max','min')

# Matrix containing the profiles.

profiles <- cbind(c(9,10),c(10,13),c(2,2.5),c(128,512),c(2,4),c(3000,6000))

#  vector defining profiles' names

profiles_names <-c("b1","b2")

# thresholds vector
#Wektor zawierający ograniczenia progów obojętności zdefiniowane dla każdego kryterium.
IndifferenceThresholds <- c(0,  3, 0.5, 125, 1, 750)
#Wektor zawierający ograniczenia progów preferencji zdefiniowane dla każdego kryterium.
PreferenceThresholds <-   c(10,12.9,2.3,512,4,3000)
#Wektor zawierający ograniczenia progów weta określone dla każdego kryterium
VetoThresholds <- c(0,0,0,0,0,0)

# Testing

Electre_tri(performanceMatrix,
            alternatives,
            profiles,
            profiles_names,
            criteria,
            minmaxcriteria,
            criteriaWeights,
            IndifferenceThresholds,
            PreferenceThresholds,
            VetoThresholds,
            lambda=NULL)