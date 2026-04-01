 
library(meta)
library(readxl)



################################# Meta-analysis (Time to first fixation to hazard) ##################################################################

######################################## MD #################################

# Read the Excel file
file_path <- "C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Hazard/TTFFTH.xlsx"  # Specify the path to your Excel file
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

# Save forest plot as TIFF
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Time_to_first_fixation_to_hazard.tiff", 
     width = 3200, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()


################################## Perform leave-one-out sensitivity analysis ###############################
leave_one_out <- metainf(meta_analysis)

# Print the summary of the leave-one-out analysis
print(leave_one_out)

# Plot the influence of each study
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/TTFFOH_LOOSA.tiff", width = 3000, height = 1000, res = 300)

# Set global font and scaling
par(font.lab = 2,     
    font.axis = 2,    
    font.main = 2,    
    cex = 1.5)        

# Plot the results of leave-one-out analysis
forest(leave_one_out,
       main = "Leave-One-Out Sensitivity Analysis",
       col.diamond = "red",
       col.diamond.lines = "black",
       col.bg = "blue",
       col.border = "black")

dev.off()


################################# Meta-analysis (Probability of fixation to hazard) ##################################################################

######################################## MD #################################

# Read the Excel file
file_path <- "C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Hazard/POFTH.xlsx"  # Specify the path to your Excel file
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
  common = TRUE,
  random = FALSE

)

# Print the results
print(meta_analysis)

# Save forest plot as TIFF
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Probability_of_fixation_to_hazard.tiff", 
     width = 3200, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()


################################# Meta-analysis (Fixation duration on hazard) ##################################################################

######################################## MD #################################

# Read the Excel file
file_path <- "C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Hazard/TFDOH.xlsx"  # Specify the path to your Excel file
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
  sm = "SMD",               # Summary measure: Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,      # Do not use fixed effect model
  random = FALSE     # Use random effects model
)

# Print the results
print(meta_analysis)

# Save forest plot as TIFF
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Total_fixation_duration_hazard.tiff", 
     width = 3500, height = 1500, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()

######################################## sub group based on hazard visibility #################################

# Read the Excel file
file_path <- "C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Hazard/TFDOH.xlsx"  # Specify the path to your Excel file
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
  sm = "SMD",               # Summary measure: Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,      # Do not use fixed effect model
  random = FALSE,     # Use random effects model
  subgroup = data$hazard_Visibility # Subgroup analysis based on hazard_Visibility
)

# Print the results
print(meta_analysis)
summary(meta_analysis)

# Save forest plot as TIFF
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Subgroup_TFDOH.tiff", 
     width = 3500, height = 1500, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()

################################# Meta-analysis (Fixation duration on TOR display) ##################################################################

######################################## MD #################################

# Read the Excel file
file_path <- "C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/TOR/TFDOTORD.xlsx"  # Specify the path to your Excel file
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
  sm = "SMD",               # Summary measure: Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,      # Do not use fixed effect model
  random = FALSE       # Use random effects model
)


# Print the results
print(meta_analysis)

# Save forest plot as TIFF
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Total_fixation_duration_on_TOR_display.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()


################################# Meta-analysis (Number of fixations to TOR display) ##################################################################

######################################## MD #################################

# Read the Excel file
file_path <- "C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/TOR/NOFTTORD.xlsx"  # Specify the path to your Excel file
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
  common = TRUE,      # Do not use fixed effect model
  random = FALSE       # Use random effects model
)


# Print the results
print(meta_analysis)

# Save forest plot as TIFF
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Number_of_fixations_to_TOR_display.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()


################################# Meta-analysis (Time to first fixation to mirrors) ##################################################################

######################################## MD #################################

# Read the Excel file
file_path <- "C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Mirrors/TTFFTM.xlsx"  # Specify the path to your Excel file
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
  common = TRUE,      # Do not use fixed effect model
  random = FALSE       # Use random effects model
)

# Print the results
print(meta_analysis)

# Save forest plot as TIFF
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Time_to_first_fixation_to_mirrors.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()

################################# Meta-analysis (Number of fixation to mirrors) ##################################################################

######################################## MD #################################

# Read the Excel file
file_path <- "C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Mirrors/NOFTM.xlsx"  # Specify the path to your Excel file
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
  common = TRUE,      # Do not use fixed effect model
  random = FALSE      # Use random effects model
)

# Print the results
print(meta_analysis)

# Save forest plot as TIFF
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Number_of_fixations_to_mirrors.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()


################################# Meta-analysis (Total fixation duration on mirrors) ##################################################################

######################################## MD #################################

# Read the Excel file
file_path <- "C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Mirrors/TFDOM.xlsx"  # Specify the path to your Excel file
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
  sm = "SMD",               # Summary measure: Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,      # Do not use fixed effect model
  random = FALSE       # Use random effects model
)

# Print the results
print(meta_analysis)

# Save forest plot as TIFF
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Total_fixation_duration_on_mirrors.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()


################################# Meta-analysis (Time to first fixation to the road) ##################################################################

######################################## MD #################################

# Read the Excel file
file_path <- "C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Road/TTFFTTR.xlsx"  # Specify the path to your Excel file
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

# Save forest plot as TIFF
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Time_to_first_fixation_to_the_road.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()

################################## Perform leave-one-out sensitivity analysis ###############################
leave_one_out <- metainf(meta_analysis)

# Print the summary of the leave-one-out analysis
print(leave_one_out)

# Plot the influence of each study
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/TTFFTTR_LOOSA.tiff", width = 3000, height = 1000, res = 300)

# Set global font and scaling
par(font.lab = 2,     
    font.axis = 2,    
    font.main = 2,    
    cex = 1.5)        

# Plot the results of leave-one-out analysis
forest(leave_one_out,
       main = "Leave-One-Out Sensitivity Analysis",
       col.diamond = "red",
       col.diamond.lines = "black",
       col.bg = "blue",
       col.border = "black")

dev.off()
################################# Meta-analysis (Total fixation duration on the road) ##################################################################

######################################## MD #################################

# Read the Excel file
file_path <- "C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Road/TFDOTR.xlsx"  # Specify the path to your Excel file
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
  sm = "SMD",               # Summary measure: Mean Difference
  data = data,             # Data frame containing the data
  common = TRUE,      # Do not use fixed effect model
  random = FALSE       # Use random effects model
)


# Print the results
print(meta_analysis)

# Save forest plot as TIFF
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Total_fixation_duration_on_the_road.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()

################################## Perform leave-one-out sensitivity analysis ###############################
leave_one_out <- metainf(meta_analysis)

# Print the summary of the leave-one-out analysis
print(leave_one_out)

# Plot the influence of each study
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/TFDOTR_LOOSA.tiff", width = 3000, height = 1000, res = 300)

# Set global font and scaling
par(font.lab = 2,     
    font.axis = 2,    
    font.main = 2,    
    cex = 1.5)        

# Plot the results of leave-one-out analysis
forest(leave_one_out,
       main = "Leave-One-Out Sensitivity Analysis",
       col.diamond = "red",
       col.diamond.lines = "black",
       col.bg = "blue",
       col.border = "black")

dev.off()
################################# Meta-analysis (Pupil diameter) ##################################################################

######################################## MD #################################

# Read the Excel file
file_path <- "C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Pupil diameter/PD.xlsx"  # Specify the path to your Excel file
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
  common = TRUE,      # Do not use fixed effect model
  random = FALSE       # Use random effects model
)


# Print the results
print(meta_analysis)

# Save forest plot as TIFF
tiff("C:/Users/tsaar/OneDrive - University of Leeds/PhD/Systematic review and meta-analysis/Meta-analysis/Final meta-analysis with new search results/Pupil_diameter.tiff", 
     width = 3500, height = 1000, units = "px", res = 300, compression = "lzw")

forest(meta_analysis)

dev.off()

