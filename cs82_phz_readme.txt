--------------------------------------
|CS82 Photo-z / Morpho-z Catalogue   |
|Version: 1.0                        |
|John Soo (e-mail: ucapyso@ucl.ac.uk)|
--------------------------------------

Headers in file CS82_PHZ.FITS:

-------------------------------------
Column Name		Descriptions
-------------------------------------
OBJID_CS82		CS82 object ID 	
RA			right ascension (deg)	
DEC			declination (deg)		
FLAGS			source extraction quality flag (ranges from 0 to 3, with 0 being the best) 
WEIGHT			lensFit shape measurement flag. WEIGHT>0 indicates good shape measurement	
FITCLASS		lensFit star-galaxy classifier: 1=stars; 0=galaxies; -1=no usable data; -2=blended objects; -3=miscellaneous reasons; -4=chi-square exceeded critical value  	
MAG_AUTO		CS82 Kron i-band magnitude	
MAGERR_AUTO		CS82 Kron i-band magnitude error. Signal-to-noise ratio is 1.086/MAGERR_AUTO	
MAG_EXP			CS82 exponential fit i-band magnitude	
MAG_PSF		        CS82 PSF i-band magnitude	
REFF_EXP	        exponential fit effective radius (arcsec)	
ASPECT_EXP	        exponential fit axis-ratio	
MU_MEAN_EXP	        exponential fit mean surface brightness	
P_EXP		     	exponential shape probability: ~1 -> disc galaxy; ~0 -> elliptical galaxy	
N_SER			Sersic index	
SPREAD_MODEL_SER	Sersic spread model, the star-galaxy separator we used for this study. All objects in this catalogue have SPREAD_MODEL_SER>0.008, which are considered extended objects (galaxies) 
LENS         		lensing tag. Objects with LENS=1 are objects from the lensing subsample (FITCLASS=0, WEIGHT>0) 
OBJID_SDSS		SDSS object ID for objects with matched ugriz broadband magnitudes (if available)
MAG_DERED_U		SDSS dereddened u-band magnitude (if available)	
MAG_DERED_G		SDSS dereddened g-band magnitude (if available)	
MAG_DERED_R		SDSS dereddened r-band magnitude (if available)	
MAG_DERED_I		SDSS dereddened i-band magnitude (if available)	
MAG_DERED_Z		SDSS dereddened z-band magnitude (if available)	
ZSPEC	     		spectroscopic redshift (if available) 
ZPHOT			photometric redshift estimated using inputs ugriz+morphology (if available)	
zMORPH			photometric redshift estimated using inputs i+morphology					
zBEST			best redshift for this object, in order of priority: ZSPEC, ZPHOT, ZMORPH 
ODDS_PHOT		ODDS value for ZPHOT 
ODDS_MORPH		ODDS value for ZMORPH	
ODDS_BEST     		ODDS value for ZBEST (=1 if ZSPEC is used) 
SOURCE_SPEC		source of spectroscopy: SDSS, BOSS, DEEP2, WIGGLEZ or VVDS (if available)	
CLASS_SPEC    		class of object based on spectral fit: GALAXY or QSO (if available) 



Headers in file CS82_PZ_PHOT.FITS & CS82_PZ_MORPH.FITS:

----------------------------
Column Name	Descriptions
----------------------------
OBJID_CS82	CS82 object ID 	
z_0 - z_189	P(z) values for ZPHOT/ZMORPH, ranging from z=0.005 to z=1.895 in an equal step size of 0.01	
