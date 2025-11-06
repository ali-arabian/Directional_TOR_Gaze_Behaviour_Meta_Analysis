
# I load the packages I will use in the analysis.

################################################### 
library(meta)
library(readxl)



################################# Meta-analysis (Time to first fixation to hazard) ##################################################################



# Read the Excel file
file_path <- "TTFFTH.xlsx"  
data <- read_excel(file_path, sheet = "Sheet1")


# Perform the meta-analysis
meta_analysis <- metacont(
  n.e = data$n_D,           # Sample size of the intervention group
  mean.e = data$m_D,        # Mean of the intervention group
  sd.e = data$sd_D,          # Standard deviation of the intervention group
  n.c = data$n_ND,           # Sample size of the control group
  mean.c = data$m_ND,        # Mean of the control group
  sd.c = data$sd_ND,          # Standard deviation of the control group
  studlab = data$study_ID, # Study labels (author names and year)
  sm = "MD",               # Summary measure: Mean Difference
  data = data,             # Data frame containing the data
  common = FALSE,      # Do not use fixed effect model
  random = TRUE       # Use random effects model
)

# Print the results
print(meta_analysis)

# Plot forest plot
tiff("Time_to_first_fixation_to_hazard.tiff", 
     width = 3200, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()


################################# Meta-analysis (Probability of fixation to hazard) ##################################################################



# Read the Excel file
file_path <- "POFTH.xlsx" 
data <- read_excel(file_path, sheet = "Sheet1")


# Perform the meta-analysis
meta_analysis <- metacont(
  n.e = data$n_D,           # Sample size of the intervention group
  mean.e = data$m_D,        # Mean of the intervention group
  sd.e = data$sd_D,          # Standard deviation of the intervention group
  n.c = data$n_ND,           # Sample size of the control group
  mean.c = data$m_ND,        # Mean of the control group
  sd.c = data$sd_ND,          # Standard deviation of the control group
  studlab = data$study_ID, # Study labels (author names and year)
  sm = "MD",               # Summary measure: Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,          # Use fixed effects model
  random = FALSE          # Do not use random effects model

)

# Print the results
print(meta_analysis)

# Plot forest plot
tiff("Probability_of_fixation_to_hazard.tiff", 
     width = 3200, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()


################################# Meta-analysis (Total fixation duration on hazard) ##################################################################


# Read the Excel file
file_path <- "TFDOH.xlsx"  
data <- read_excel(file_path, sheet = "Sheet1")


# Perform the meta-analysis
meta_analysis <- metacont(
  n.e = data$n_D,           # Sample size of the intervention group
  mean.e = data$m_D,        # Mean of the intervention group
  sd.e = data$sd_D,          # Standard deviation of the intervention group
  n.c = data$n_ND,           # Sample size of the control group
  mean.c = data$m_ND,        # Mean of the control group
  sd.c = data$sd_ND,          # Standard deviation of the control group
  studlab = data$study_ID, # Study labels (author names and year)
  sm = "SMD",               # Summary measure: Standardised Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,      # Use fixed effect model
  random = FALSE     # Do not use random effects model
)

# Print the results
print(meta_analysis)

# Plot forest plot
tiff("Total_fixation_duration_on_hazard.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()

################################# Meta-analysis (Number of fixations to TOR display) ##################################################################


# Read the Excel file
file_path <- "NOFTTORD.xlsx"  
data <- read_excel(file_path, sheet = "Sheet1")


# Perform the meta-analysis
meta_analysis <- metacont(
  n.e = data$n_D,           # Sample size of the intervention group
  mean.e = data$m_D,        # Mean of the intervention group
  sd.e = data$sd_D,          # Standard deviation of the intervention group
  n.c = data$n_ND,           # Sample size of the control group
  mean.c = data$m_ND,        # Mean of the control group
  sd.c = data$sd_ND,          # Standard deviation of the control group
  studlab = data$study_ID, # Study labels (author names and year)
  sm = "MD",               # Summary measure: Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,      # Use fixed effect model
  random = FALSE       # Do not use random effects model
)


# Print the results
print(meta_analysis)

# Plot forest plot
tiff("Number_of_fixations_to_TOR_display.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()


################################# Meta-analysis (Total fixation duration on TOR display) ##################################################################

# Read the Excel file
file_path <- "TFDOTORD.xlsx" 
data <- read_excel(file_path, sheet = "Sheet1")


# Perform the meta-analysis
meta_analysis <- metacont(
  n.e = data$n_D,           # Sample size of the intervention group
  mean.e = data$m_D,        # Mean of the intervention group
  sd.e = data$sd_D,          # Standard deviation of the intervention group
  n.c = data$n_ND,           # Sample size of the control group
  mean.c = data$m_ND,        # Mean of the control group
  sd.c = data$sd_ND,          # Standard deviation of the control group
  studlab = data$study_ID, # Study labels (author names and year)
  sm = "SMD",               # Summary measure: Standardised Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,      # Use fixed effect model
  random = FALSE       # Do not use random effects model
)


# Print the results
print(meta_analysis)

# Plot forest plot
tiff("Total_fixation_duration_on_TOR_display.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()



################################# Meta-analysis (Time to first fixation to mirrors) ##################################################################


# Read the Excel file
file_path <- "TTFFTM.xlsx"
data <- read_excel(file_path, sheet = "Sheet1")


# Perform the meta-analysis
meta_analysis <- metacont(
  n.e = data$n_D,           # Sample size of the intervention group
  mean.e = data$m_D,        # Mean of the intervention group
  sd.e = data$sd_D,          # Standard deviation of the intervention group
  n.c = data$n_ND,           # Sample size of the control group
  mean.c = data$m_ND,        # Mean of the control group
  sd.c = data$sd_ND,          # Standard deviation of the control group
  studlab = data$study_ID, # Study labels (author names and year)
  sm = "MD",               # Summary measure: Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,      # Use fixed effect model
  random = FALSE       # Do not use random effects model
)

# Print the results
print(meta_analysis)

# Plot forest plot
tiff("Time_to_first_fixation_to_mirrors.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()

################################# Meta-analysis (Number of fixation to mirrors) ##################################################################


# Read the Excel file
file_path <- "NOFTM.xlsx"  
data <- read_excel(file_path, sheet = "Sheet1")


# Perform the meta-analysis
meta_analysis <- metacont(
  n.e = data$n_D,           # Sample size of the intervention group
  mean.e = data$m_D,        # Mean of the intervention group
  sd.e = data$sd_D,          # Standard deviation of the intervention group
  n.c = data$n_ND,           # Sample size of the control group
  mean.c = data$m_ND,        # Mean of the control group
  sd.c = data$sd_ND,          # Standard deviation of the control group
  studlab = data$study_ID, # Study labels (author names and year)
  sm = "MD",               # Summary measure: Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,      # Use fixed effect model
  random = FALSE      # Do not use random effects model
)

# Print the results
print(meta_analysis)

# Plot forest plot
tiff("Number_of_fixations_to_mirrors.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()


################################# Meta-analysis (Total fixation duration on mirrors) ##################################################################

# Read the Excel file
file_path <- "TFDOM.xlsx"  
data <- read_excel(file_path, sheet = "Sheet1")


# Perform the meta-analysis
meta_analysis <- metacont(
  n.e = data$n_D,           # Sample size of the intervention group
  mean.e = data$m_D,        # Mean of the intervention group
  sd.e = data$sd_D,          # Standard deviation of the intervention group
  n.c = data$n_ND,           # Sample size of the control group
  mean.c = data$m_ND,        # Mean of the control group
  sd.c = data$sd_ND,          # Standard deviation of the control group
  studlab = data$study_ID, # Study labels (author names and year)
  sm = "SMD",               # Summary measure: Standardised Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,      # Use fixed effect model
  random = FALSE       # Do not use random effects model
)

# Print the results
print(meta_analysis)

# Plot forest plot
tiff("Total_fixation_duration_on_mirrors.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()


################################# Meta-analysis (Time to first fixation to the road) ##################################################################


# Read the Excel file
file_path <- "TTFFTTR.xlsx" 
data <- read_excel(file_path, sheet = "Sheet1")


# Perform the meta-analysis
meta_analysis <- metacont(
  n.e = data$n_D,           # Sample size of the intervention group
  mean.e = data$m_D,        # Mean of the intervention group
  sd.e = data$sd_D,          # Standard deviation of the intervention group
  n.c = data$n_ND,           # Sample size of the control group
  mean.c = data$m_ND,        # Mean of the control group
  sd.c = data$sd_ND,          # Standard deviation of the control group
  studlab = data$study_ID, # Study labels (author names and year)
  sm = "MD",               # Summary measure: Mean Difference
  data = data,             # Data frame containing the data
  common = FALSE,      # Do not use fixed effect model
  random = TRUE       # Use random effects model
)


# Print the results
print(meta_analysis)

# Plot forest plot
tiff("Time_to_first_fixation_to_the_road.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()


################################# Meta-analysis (Total fixation duration on the road) ##################################################################


# Read the Excel file
file_path <- "TFDOTR.xlsx"
data <- read_excel(file_path, sheet = "Sheet1")


# Perform the meta-analysis
meta_analysis <- metacont(
  n.e = data$n_D,           # Sample size of the intervention group
  mean.e = data$m_D,        # Mean of the intervention group
  sd.e = data$sd_D,          # Standard deviation of the intervention group
  n.c = data$n_ND,           # Sample size of the control group
  mean.c = data$m_ND,        # Mean of the control group
  sd.c = data$sd_ND,          # Standard deviation of the control group
  studlab = data$study_ID, # Study labels (author names and year)
  sm = "SMD",               # Summary measure: Standardised Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,      # Use fixed effect model
  random = FALSE       # Do not use random effects model
)


# Print the results
print(meta_analysis)

# Plot forest plot
tiff("Total_fixation_duration_on_the_road.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()


################################# Meta-analysis (Pupil diameter) ##################################################################


# Read the Excel file
file_path <- "PD.xlsx"
data <- read_excel(file_path, sheet = "Sheet1")


# Perform the meta-analysis
meta_analysis <- metacont(
  n.e = data$n_D,           # Sample size of the intervention group
  mean.e = data$m_D,        # Mean of the intervention group
  sd.e = data$sd_D,          # Standard deviation of the intervention group
  n.c = data$n_ND,           # Sample size of the control group
  mean.c = data$m_ND,        # Mean of the control group
  sd.c = data$sd_ND,          # Standard deviation of the control group
  studlab = data$study_ID, # Study labels (author names and year)
  sm = "MD",               # Summary measure: Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,      # Use fixed effect model
  random = FALSE       # Do not use random effects model
)


# Print the results
print(meta_analysis)

# Plot forest plot
tiff("Pupil_diameter.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()

