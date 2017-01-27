# TCE.2.1.pop.mopdel
# Modificartions are labled with a comment "#(V2.1)"
#******************************************************************************
#***                  State Variable Specifications                         ***
#******************************************************************************

States = {
  ##-- TCE uptake
  AStom,    # Amount of TCE in stomach
  ADuod,	# oral gavage absorption -- mice and rats only
  InhDose,	# Amount inhaled 
  
  ##-- TCE in body
  ARap,		# Amount in rapidly perfused tissues
  ASlw,		# Amount in slowly perfused tissues
  AFat,		# Amount in fat
  AGut,		# Amount in gut
  ALiv,		# Amount in liver
  AKid,     # Amount in kidney
  Abra,     # Amount in brain #(V2.1)
  ABld, 	# Amount in blood
  AInhResp,	# Amount in respiratory lumen during inhalation
  AResp,	# Amount in respiratory tissue
  AExhResp,	# Amount in respiratory lumen during exhalation

  ##-- DCA in body
  ADCAcen,	# Amount in central compartment
  ADCAper,	# Amount in peripheral compartment
  
  ##-- TCA in body
  AStomTCA,	# Amount of TCA in stomach
  APlasTCA,	# Amount of TCA in plasma
  ABodTCA,	# Amount of TCA in lumped body compartment
  ALivTCA,	# Amount of TCA in liver
  ALngTCA,  # Amount of TCA in lung #(V2.1)
  AKidTCA,  # Amount of TCA in Kidney #(V2.1)
  ABraTCA,  # Amount of TCA in Brain #(V2.1)
  
  ##-- TCA excreted
  AUrnTCA,	   # Cumulative Amount of TCA excreted in urine
  AUrnTCA_sat, # Amount of TCA excreted that during times that had saturated measurements 
  #(for lower bounds) 
  AUrnTCA_col, # Cumulative Amount of TCA excreted in urine during collection times 
  #(for intermittent collection) 
  
  ##-- TCOH in body
  AStomTCOH,	# Amount of TCOH in stomach
  ABodTCOH, 	# Amount of TCOH in lumped body compartment
  ALivTCOH, 	# Amount of TCOH in liver
  ALngTCOH, 	# Amount of TCOH in lung #(V2.1)
  AKidTCOH, 	# Amount of TCOH in kidney #(V2.1)
  ABraTCOH, 	# Amount of TCOH in brain #(V2.1)
  
  ##-- TCOG in body
  ABodTCOG, 	# Amount of TCOG in lumped body compartment
  ALivTCOG, 	# Amount of TCOG in liver
  ABilTCOG, 	# Amount of TCOG in bile (incl. gut)
  ALngTCOG, 	# Amount of TCOG in lung #(V2.1)
  ABraTCOG,		# Amount of TCOG in brain #(V2.1)
  AKidTCOG,		# Amount of TCOG in kidney #(V2.1)
  
  ##-- TCOG excreted
  AUrnTCOG,	    # Amount of TCOG excreted in urine
  AUrnTCOG_sat,	# Amount of TCOG excreted that during times that had saturated measurements 
  #(for lower bounds) 
  AUrnTCOG_col, # Cumulative Amount of TCA excreted in urine during collection times 
  #(for intermittent collection) 	
  
  ##-- DCVG in body
  ABodDCVG,	# Amount of DCVG in body in mmoles 
  ALivDCVG, # Amount of DCVG in liver #(V2.1)
  ABraDCVG, # Amount of DCVG in brain #(V2.1)
  AKidDCVG, # Amount of DCVG in kidney #(V2.1)
  
  ##-- DCVC in body
  ABodDCVC,	# Amount of DCVC in body
  ALivDCVC, # Amount of DCVC in liver #(V2.1)
  ABraDCVC, # Amount of DCVC in brain #(V2.1)
  AKidDCVC, # Amount of DCVC in kidney #(V2.1)
  
  ##-- NADCVC in body (V2.1)
  ABodNADCVC, # Amount of NADCVC in body #(V2.1)
  ALivNADCVC, # Amount of NADCVC in liver #(V2.1)
  ABraNADCVC, # Amount of NADCVC in brain #(V2.1)
  AKidNADCVC, # Amount of NADCVC in kidney #(V2.1)
  
  ##-- NADCVC excreted (V2.1)
  AUrnNADCVC,	   # Amount of NADCVC excreted in urine
  AUrnNADCVC_sat, # Amount of NADCVC excreted that during times that had saturated measurements 
  #(for lower bounds) 
  AUrnNADCVC_col, # Cumulative Amount of NADCVC excreted in urine during collection times 
  #(for intermittent collection) 	
  
  ##-- Other states for TCE
  ACh, 		# Amount in closed chamber -- mice and rats only
  AExh, 	# Amount exhaled
  AExhExp, 	# Amount exhaled during expos  [to calc. retention]
  
}


#******************************************************************************
#***                  Input Variable Specifications                         ***
#******************************************************************************

Inputs = {
##-- TCE dosing
	Conc,		# Inhalation exposure conc. (ppm)
	IVDose,		# IV dose (mg/kg)
	PDose,		# Oral gavage dose (mg/kg)
	Drink,		# Drinking water dose (mg/kg/day)
	IADose,		# Inter-arterial
	PVDose,		# Portal Vein
##-- TCA dosing
	IVDoseTCA,	# IV dose (mg/kg) of TCA 
	PODoseTCA,	# Oral dose (mg/kg) of TCA 
##-- TCOH dosing
	IVDoseTCOH,	# IV dose (mg/kg) of TCOH 
	PODoseTCOH,	# Oral dose (mg/kg) of TCOH 
##-- Potentially time-varying parameters
	QPmeas,		# Measured value of Alveolar ventilation QP 
	TCAUrnSat,	# Flag for saturated TCA urine 
	TCOGUrnSat,	# Flag for saturated TCOG urine 
	NADCVCSat, # Flag for saturated NADCVC urine (V2.1)
	UrnMissing,	# Flag for missing urine collection times 
};

#******************************************************************************
#***                  Output Variable Specifications                        ***
#******************************************************************************
Outputs = {
# Outputs for comparison to in vivo data
# TCE
RetDose,     # human - = (InhDose - AExhExp)
CAlv,	 # needed for CAlvPPM
CAlvPPM, # human
CInhPPM, # mouse, rat
CInh,	 # needed for CMixExh
CMixExh, # rat - Mixed exhaled breath (mg/l)
CArt,	 # rat, human - Arterial blood concentration 
CVen,	 # mouse, rat, human
CBldMix, # rat - Concentration in mixed arterial+venous blood (used for cardiac puncture)
CFat,	 # mouse, rat - Concentration in fat
CGut,	 # rat
CRap,	 # needed for unlumped tissues
CSlw,	 # needed for unlumped tissues
CHrt,	 # rat - Concentration in heart tissue [use CRap]
CKid,	 # mouse, rat - Concentration in kidney
CLiv,	 # mouse, rat - Concentration in liver
CBra,	 # mouse - Concentration in brain #(V2.1)
CLng,	 # mouse, rat - Concentration in lung [use CRap]
CMus,	 # rat - Concentration in muscle [use CSlw]
CSpl, 	 # rat - Concentration in spleen [use CRap]
CBrn, 	 # rat - Concentration in brain [use CRap]
zAExh,		# mouse
zAExhpost,	# rat - Amount exhaled post-exposure (mg)

# DCA
CDCAmol,  # concentration of DCA (mmol/l) 
CDCAmol0,	# Dummy variable without likelihood (for plotting)
CDCA_ND,	 # Non-detect of DCA (<0.01 nmol/ml= 1e-5 mmol/l )

# TCA
CPlasTCA,     # mouse, rat, human - TCA concentration in plasma
CBldTCA,	     # mouse, rat, human - TCA concentration in blood
CBodTCA,	     # needed for CKidTCA, CBraTCA and CLngTCA #(V2.1)
CLivTCA,	     # mouse, rat - TCA concentration in liver
CKidTCA,	     # mouse - TCA concentration in kidney
CLngTCA,	     # mouse - TCA concentration in lung
CBraTCA,	     # mouse - TCA concentration in brain #(V2.1)
zAUrnTCA,		   # mouse, rat, human - Cumulative Urinary TCA
zAUrnTCA_col,	# human - TCA measurements for intermittent collection
zAUrnTCA_sat,	# human - Saturated TCA measurements

# TCOH
CBldTCOH,	# mouse, rat, human - TCOH concentration in blood
CKidTCOH,	# mouse - TCOH concentration in kidney
CLivTCOH,	# mouse - TCOH concentration in liver
CLngTCOH,	# mouse - TCOH concentration in lung
CBraTCOH,	# mouse - TCOH concentration in brain #(V2.1)

# TCOG #(V2.1)
zABilTCOG,	  # rat - Amount of TCOG in bile (mg)
CBldTCOG,	    # needed for CTCOGTCOH #(V2.1)
CBldTCOG,	# mouse - TCOG concentration in blood (in TCOH-equiv) #(V2.1)
CKidTCOG,	# mouse - TCOG concentration in kidney (in TCOH-equiv) #(V2.1)
CLivTCOG,	# mouse - TCOG concentration in liver (in TCOH-equiv) #(V2.1)
CLngTCOG,	# mouse - TCOG concentration in lung (in TCOH-equiv) #(V2.1)
CBraTCOG,	# mouse - TCOG concentration in brain (in TCOH-equiv) #(V2.1)
AUrnTCOG,	  # mouse, rat, human - Cumulative Urinary TCOG (in TCOH-equiv)
AUrnTCOG_col, # human - TCOG (in TCOH-equiv) measurements for intermittent collection 
AUrnTCOG_sat, # human - Saturated TCOG (in TCOH-equiv) measurements 

# DCVG #(V2.1)
CBodDCVG,	# mouse - DCVG concentration in body #(V2.1)
CBldDCVG,	# mouse - DCVG concentration in blood #(V2.1)
ClivDCVG,	# mouse - DCVG concentration in liver #(V2.1)
CBraDCVG,	# mouse - DCVG concentration in brain #(V2.1)
CKidDCVG,	# mouse - DCVG concentration in kidney #(V2.1)

# DCVC #(V2.1)
CBodDCVC,	# mouse - DCVC concentration in body #(V2.1)
CBldDCVC,	# mouse - DCVC concentration in blood #(V2.1)
ClivDCVC,	# mouse - DCVC concentration in liver #(V2.1)
CBraDCVC,	# mouse - DCVC concentration in brain #(V2.1)
CKidDCVC,	# mouse - DCVC concentration in kidney #(V2.1)

# NADCVC #(V2.1)
CBodNADCVC,	# mouse - NADCVC concentration in body #(V2.1)
CBldNADCVC,	# mouse - NADCVC concentration in blood #(V2.1)
ClivNADCVC,	# mouse - NADCVC concentration in liver #(V2.1)
CBraNADCVC,	# mouse - NADCVC concentration in brain #(V2.1)
CKidNADCVC,	# mouse - NADCVC concentration in kidney #(V2.1)
AUrnNADCVC,	  # mouse - Cumulative Urinary NADCVC #(V2.1)
AUrnNADCVC_col,  # mouse - NADCVC measurements for intermittent collection #(V2.1)
AUrnNADCVC_sat,  # mouse - Saturated NADCVC measurements #(V2.1)

# Other
AUrnTCTotMole,	# rat, human - Cumulative urinary TCOH+TCA in mmoles
TotCTCOH,	     # mouse, human - TCOH+TCOG Concentration (in TCOH-equiv)
TotCTCOHcomp,	 # ONLY FOR COMPARISON WITH HACK
ATCOG,		       # ONLY FOR COMPARISON WITH HACK
QPsamp,	        # human - sampled value of alveolar ventilation rate


## PARAMETERS
QCnow,      #Cardiac output (L/hr)
QP,         #Alveolar ventilation (L/hr)
QFatSC,     #Scaled fat blood flow
QBraSC,     #Scaled brain blood flow #(V2.1)
QLngSC,     #Scaled brain lung flow #(V2.1)
QGutSC,     #Scaled gut blood flow
QLivSC,     #Scaled liver blood flow
QSlwSC,     #Scaled slowly perfused blood flow
QRapSC,     #Scaled rapidly perfused blood flow
QKidSC,     #Scaled kidney blood flow
DResp,      #Respiratory lumen:tissue diffusive clearance rate
QBodSC,     #Scaled body lung flow
QBodTCOHSC, #TCOH/G Body fractional flow
QBodDCVGSC, #GSH Body fractional flow

VFatSC,     #Fat fractional compartment volume
VBraSC,     #Brain fractional compartment volume #(V2.1)  
VGutSC,     #Gut fractional compartment volume
VLivSC,     #Liver fractional compartment volume
VLngSC,     #Lung fractional compartment volume #(V2.1)  
VKidSC,     #Kidney fractional compartment volume #(V2.1)
VRapSC,     #Rapidly perfused fractional compartment volume
VRespLumSC, #Fractional volume of respiratory lumen
VRespEffSC, #Effective fractional volume of respiratory tissue
VKidSC,     #Kidney fractional compartment volume
VBldSC,     #Blood fractional compartment volume 
VSlwSC,     #Slowly perfused fractional compartment volume 
VPlasSC,    #Plasma fractional compartment volume 
VBodSC,     #TCA Body fractional compartment volume
VBodOX, #Oxidative metabolism body fractional compartment volume
VBodGSH, #GSH compartment volume

PB,       #TCE Blood/air partition coefficient
PFat,     #TCE Fat/Blood partition coefficient
PGut,     #TCE Gut/Blood partition coefficient
PLiv,     #TCE Liver/Blood partition coefficient
PBra,     #TCE brain/blood partition coefficient #(V2.1)
PRap,     #TCE Rapidly perfused/Blood partition coefficient
PResp,    #TCE Respiratory tissue:air partition coefficient
PKid,     #TCE Kidney/Blood partition coefficient
PSlw,     #TCE Slowly perfused/Blood partition coefficient
  
TCAPlas,  #TCA blood/plasma concentration ratio
PBodTCA,  #Free TCA Body/blood plasma partition coefficient
PLivTCA,  #Free TCA Liver/blood plasma partition coefficient
PBraTCA, #Free TCA brain/blood plasma partition coefficient #(V2.1)  
PKidTCA, #Free TCA kidney/blood plasma partition coefficient #(V2.1)  
PLngTCA, #Free TCA lung/blood plasma partition coefficient #(V2.1)

PBodTCOH, #TCOH body/blood partition coefficient
PLivTCOH, #TCOH liver/body partition coefficient
PBraTCOH, #TCOH brain/body partition coefficient #(V2.1)  
PKidTCOH, #TCOH kidney/body partition coefficient #(V2.1)  
PLngTCOH, #TCOH lung/body partition coefficient #(V2.1)  
    
PBodTCOG, #TCOG body/blood partition coefficient
PLivTCOG, #TCOG liver/body partition coefficient
PKidTCOG, #TCOG kidney/blood partition coefficient #(V2.1)  
PLngTCOG, #TCOG lung/blood partition coefficient #(V2.1)
PBraTCOG, #TCOG brain/blood partition coefficient #(V2.1) 

PBodDCVC, #DCVC body/blood partition coefficient #(V2.1)  
PLivDCVC, #DCVC liver/body partition coefficient #(V2.1)  
PKidDCVC, #DCVC kidney/blood partition coefficient #(V2.1)
PBraDCVC, #DCVC brain/blood partition coefficient #(V2.1) 

PBodDCVG, #DCVG body/blood partition coefficient #(V2.1)
PLivDCVG, #DCVG liver/body partition coefficient #(V2.1)  
PBraDCVG, #DCVG brain/blood partition coefficient #(V2.1)  
PKidDCVG, #DCVG kidney/blood partition coefficient #(V2.1)

PBodNADCVC,  #NADCVC body/blood partition coefficient #(V2.1)
PlivNADCVC,  #NADCVC liver/body partition coefficient #(V2.1) 
PBraNADCVC,  #NADCVC brain/body partition coefficient #(V2.1)  
PKidNADCVC,  #NADCVC kidney/body partition coefficient #(V2.1)     

BMax,     #Maximum binding concentration (umole/L)  

kDissoc,  #Protein/TCA dissociation constant (umole/L)
VDCA,     #DCA effective volume of distribution
kAS,      #TCE Stomach absorption coefficient (/hr)
kTSD,     #TCE Stomach-duodenum transfer coefficient (/hr)
kAD,      #TCE Duodenum absorption coefficient (/hr)
kTD,      #TCE Duodenum-feces transfer coefficient (/hr)
kASTCA,   #TCA Stomach absorption coefficient (/hr)
kASTCOH,  #TCOH Stomach absorption coefficient (/hr)

VMaxClara1     #(v2.1) TCE->TCA
VMaxClara2     #(v2.1) TCE->TCOH
VMaxLiv1,      #(v2.1) TCE->TCA
VMaxLiv2,      #(v2.1) TCE->TCOH
VMaxLiv3,      #(v2.1) TCE->DCVG
VmaxLivTCOH1,  #(v2.1) TCOH->TCA
VmaxLivTCOH2,  #(v2.1) TCOH->TCOG
VMaxLngTCOH1,  #(v2.1) TCOH->TCA
VMaxLngTCOH2,  #(v2.1) TCOH->TCOG
VMaxLivDCVG    #(v2.1)
VMaxKidDCVG,   #(v2.1)
VMaxLivDCVC,   #(v2.1) 
VMaxKidDCVC,   #(v2.1)

KMClara2,   #(v2.1) TCE->TCA
KMClara1,   #(v2.1) TCE->TCOH
kMLiv1,     #(v2.1) TCE->TCA
kMLiv2,     #(v2.1) TCE->TCOH
kMLiv3,     #(v2.1) TCE->DCVG
KMLivTCOH1, #(v2.1) TCOH->TCA
KMLivTCOH2, #(v2.1) TCOH->TCOG
KMLngTCOH1, #(v2.1) TCOH->TCA
KMLngTCOH2, #(v2.1) TCOH->TCOG
KMLivDCVG,  #(v2.1)
KMKidDCVG,  #(v2.1)
KMLivDCVC,  #(v2.1)
KMKidDCVC,  #(v2.1)

kClearDCA,	  #Rate constant for DCA elimination (/hr)
kDCAcen_per,	#Rate constant for DCA central->peripheral (/hr)
kDCAper_cen,	#Rate constant for DCA peripheral->central (/hr)

KMetLivTCOH,   #Rate for hepatic TCOH->other #(v2.1)
kMetLivTCA,    #Rate for hepatic TCA->other #(v2.1)
kMetKidDCVC,   #Rate for kidney DCVC->other #(v2.1)

kUrnTCA,      #Rate constant for TCA plasma->urine (/hr)
kUrnTCOG,     #Rate constant for TCOG->urine (/hr)
kUrnNADCVC,     #Rate constant for NAcDCVC->urine (/hr) #(V2.1) 
kBilTCOG,        #Rate constant for TCOG liver->bile (/hr)
kEHR,         #Lumped rate constant for TCOG bile->TCOH liver (/hr)

## Misc
RAO,
CVenMole,
CPlasTCAMole, 
CPlasTCAFreeMole #(v1d), 
};

#******************************************************************************
#***                  Global Constants                                      ***
#******************************************************************************

# Molecular Weights
        MWTCE = 131.39;       # TCE
        MWDCA = 129.0;        # DCA
       MWDCVC = 216.1;        # DCVC
       MXDCVG = 402.25;       # DCVG #(V2.1) 
     MWNADCVC = 258.1;        # N Acetyl DCVC #(V2.1)
        MWTCA = 163.5;        # TCA
      #MWChlor = 147.5;        # Chloral #(V2.0)
       MWTCOH = 149.5;        # TCOH
   MWTCOHGluc = 325.53;       # TCOH-Gluc


# Stoichiometry
 #StochChlorTCE = MWChlor / MWTCE; #(v2.0)
   StochDCATCE = MWDCA / MWTCE;
   StochTCATCE = MWTCA / MWTCE;
  StochTCATCOH = MWTCA / MWTCOH;
  StochTCOHTCE = MWTCOH / MWTCE;
 StochGlucTCOH = MWTCOHGluc / MWTCOH;
 StochTCOHGluc = MWTCOH / MWTCOHGluc;
  StochTCEGluc = MWTCE / MWTCOHGluc;
  StochDCVCTCE = MWDCVC / MWTCE;
        StochN = MWNADCVC / MWDCVC;


#******************************************************************************
#***                  Global Model Parameters                               ***
#******************************************************************************
# These are the actual model parameters used in "dynamics." 
# Values that are assigned in the "initialize" section, 
# are all set to 1 to avoid confusion.
#******************************************************************************
# Flows
QC	= 1;	# Cardiac output (L/hr)
QPsamp	= 1;	# Alveolar ventilation (L/hr)
VPR	= 1;	# Alveolar ventilation-perfusion ratio
QFatCtmp	= 1;	# Scaled fat blood flow
QGutCtmp	= 1;	# Scaled gut blood flow
QLivCtmp	= 1;	# Scaled liver blood flow
QSlwCtmp	= 1;	# Scaled slowly perfused blood flow
QBraCtmp  = 1;  # Scaled brain blood flow #(V2.1) 
DResptmp	= 1;	# Respiratory lumen:tissue diffusive clearance rate (L/hr) [scaled to QP]
QKidCtmp	= 1;	# Scaled kidney blood flow
FracPlas	= 1;	# Fraction of blood that is plasma (1-hematocrit)

#******************************************************************************
# Volumes
VFat	= 1;	# Fat compartment volume (L)
VBra	= 1;	# Brain compartment volume (L) #(v2.1)
VGut	= 1;	# Gut compartment volume (L)
VLiv	= 1;	# Liver compartment volume (L)
VKid	= 1;	# Liver compartment volume (L) #(v2.1)
VRap	= 1;	# Rapidly perfused compartment volume (L)
VRespLum	= 1;	# volume of respiratory lumen (L air)
VRespEff	= 1;	# Effective volume for respiratory tissue (L air) = V(tissue) * Resp:Air partition coefficient
VKid	= 1;	# Kidney compartment volume (L)
VBld	= 1;	# Blood compartment volume (L)
VSlw	= 1;	# Slowly perfused compartment volume (L)
VPlas	= 1;	# Plasma compartment volume [fraction of blood] (L)
VBod	= 1;	# TCA Body compartment volume (L)
VBodOX	= 1;	#(v2.1)
VBodGSH	= 1;	#(v2.1)


#******************************************************************************
# Distribution/partitioning
PB	= 1;	# TCE Blood/air partition coefficient
PFat	= 1;	# TCE Fat/Blood partition coefficient
PGut	= 1;	# TCE Gut/Blood partition coefficient
PLiv	= 1;	# TCE Liver/Blood partition coefficient
PRap	= 1;	# TCE Rapidly perfused/Blood partition coefficient

PResp	= 1;	#TCE Respiratory tissue:air partition coefficient
PKid	= 1;	# TCE Kidney/Blood partition coefficient
PSlw	= 1;	# TCE Slowly perfused/Blood partition coefficient
TCAPlas	= 1;	# TCA blood/plasma concentration ratio
PBodTCA	= 1;	# Free TCA Body/blood plasma partition coefficient
PLivTCA	= 1;	# Free TCA Liver/blood plasma partition coefficient
kDissoc	= 1;	# Protein/TCA dissociation constant (umole/L)
BMax	= 1;	# Protein concentration (UNITS?)
PBodTCOH	= 1;	# TCOH body/blood partition coefficient
PLivTCOH	= 1;	# TCOH liver/body partition coefficient
PBodTCOG	= 1;	# TCOG body/blood partition coefficient
PLivTCOG	= 1;	# TCOG liver/body partition coefficient
VDCVG	= 1;	# DCVG effective volume of distribution
VDCVC	= 1;	# DCVC effective volume of distribution
VDCA	= 1;	# DCA effective volume of distribution (central compartment)
#******************************************************************************
# Oral absorption
kTSD	= 1.4;	  # TCE Stomach-duodenum transfer coefficient (/hr)
kAS	= 1.4;	    # TCE Stomach absorption coefficient (/hr)
kTD	= 0.1;	    # TCE Duodenum-feces transfer coefficient (/hr)
kAD	= 0.75;	    # TCE Duodenum absorption coefficient (/hr)
kASTCA	= 0.75;	# TCA Stomach absorption coefficient (/hr)
kASTCOH	= 0.75;	# TCOH Stomach absorption coefficient (/hr)
#******************************************************************************
# TCA and DCA background
TCABgd = 0; # mg/kg/d
DCABgd = 0; # mg/kg/d
#******************************************************************************
# TCE Metabolism
VMax	= 1;	      # VMax for hepatic TCE oxidation (mg/hr)
KM	= 1;	        # KM for hepatic TCE oxidation (mg/L)
VMaxDCVG	= 1;	  # VMax for hepatic TCE GSH conjugation (mg/hr)
KMDCVG	= 1;	    # KM for hepatic TCE GSH conjugation (mg/L)
VMaxKidDCVG	= 1;	# VMax for renal TCE GSH conjugation (mg/hr)
KMKidDCVG	= 1;	  # KM for renal TCE GSH conjugation (mg/L)
# VMaxClara	= 1;	  # VMax for Tracheo-bronchial TCE oxidation (mg/hr) #(v2.0)
VMaxClaraTCOH	= 1;	  # VMax for Tracheo-bronchial TCE oxidation to TCOH (mg/hr) #(v2.1)
VMaxClaraTCA	= 1;	  # VMax for Tracheo-bronchial TCE oxidation to TCA (mg/hr) #(v2.1)
# KMClara	= 1;	    # KM for Tracheo-bronchial TCE oxidation (mg/L) #(v2.0)
KMClaraTCOH	= 1;	    # KM for Tracheo-bronchial TCE oxidation (mg/L) to TCOH #(v2.1)
KMClaraTCA	= 1;	    # KM for Tracheo-bronchial TCE oxidation (mg/L) to TCA#(v2.1)
#******************************************************************************
# DCA metabolism/clearance
kClearDCA	= 1;	# Rate constant for DCA elimination (/hr)
kDCAcen_per	= 1;	# Rate constant for DCA central->peripheral (/hr)
kDCAper_cen	= 1;	# Rate constant for DCA peripheral->central (/hr)
#******************************************************************************
# TCOH metabolism
VMaxTCOH1	= 1;	# VMax for hepatic TCOH->TCA (mg/hr) #(v2.1)
#KMTCOH	= 1;	  # KM for hepatic TCOH->TCA (mg/L)
VMaxTCOH2	= 1;	# VMax for hepatic TCOH->TCOG (mg/hr) #(v2.1)
KMGluc	= 1;	  # KM for hepatic TCOH->TCOG (mg/L)
kMetLivTCOH	= 1;	# Rate constant for hepatic TCOH->other (/hr)
#******************************************************************************
# TCA metabolism/clearance
kUrnTCA	= 1;	# Rate constant for TCA plasma->urine (/hr)
kMetLivTCA	= 1;	# Rate constant for hepatic TCA->other (/hr)
#******************************************************************************
# TCOG metabolism/clearance
kBilTCOG	= 1;	    # Rate constant for TCOG liver->bile (/hr)
kEHR	= 1;	    # Lumped rate constant for TCOG bile->TCOH liver (/hr)
kUrnTCOG	= 1;	# Rate constant for TCOG->urine (/hr)
#******************************************************************************
# DCVG metabolism
kDCVG	= 1;	# Rate constant for hepatic DCVG->DCVC (/hr) 
#******************************************************************************
# DCVC metabolism/clearance
kMetLivDCVC	= 1;	# Rate constant for DCVC -> other (/hr) #(v2.1)
kMDCVC	= 1;  # Rate constant for hepatic DCVC-> NADCVC (/hr) #(v2.1)
#******************************************************************************
# NADCVC clearance
kUrnNADCVC	= 1;	# Rate constant for NADCVC -> urine (/hr) #(v2.1)
#******************************************************************************
# Closed chamber and other exposure parameters 
Rodents	= 1;	# Number of rodents in closed chamber data
VCh	= 1;	# Chamber volume for closed chamber data
kLoss	= 1;	# Rate constant for closed chamber air loss
CC 	= 0.0;	# Initial chamber concentration (ppm)
TChng 	= 0.003;	# IV infusion duration (hour)
#******************************************************************************
## Flag for species, sex -- these are global parameters
BW	= 0.0;  # Species-specific defaults during initialization
Male 	= 1.0;	# 1 = male, 0 = female
Species	= 1.0;	# 1 = human, 2 = rat, 3 = mouse

#******************************************************************************
#***                  Potentially measured covariates (constants)           ***
#******************************************************************************
BWmeas	= 0.0;	# Body weight 
VFatCmeas	= 0.0; # Fractional volume fat
PBmeas	= 0.0;	# Measured blood-air partition coefficient
Hematocritmeas = 0.0; # Measured hematocrit -- used for FracPlas = 1 - HCt
CDCVGmolLD = 1e-6; # Detection limit of CDCVGmol (in mmol/L)
CDCVCmolLD = 1e-6; # Detection limit of CDCVCmol (in mmol/L)
CDCAmolLD = 1e-5; # Detection limit of CDCAmol (in mmol/L)
LivWmeas = # Liver weight #(v2.1)
KidWmeas = # Kidney weight #(v2.1)
BraWmeas = # Brain weight #(v2.1)
LngWmeas = # lung weight #(v2.1)

#******************************************************************************
#***                  Global Sampling Parameters                            ***
#******************************************************************************
# These parameters are potentially sampled/calibrated in the MCMC or MC 
# analyses.  The default values here are used if no sampled value is given.
# M_ indicates population mean parameters used only in MC sampling
# V_ indicates a population variance parameter used in MC and MCMC sampling

# Flow Rates 
lnQCC	= 0.0;	# Scaled by BW^0.75 and species-specific central estimates
lnVPRC	= 0.0;	# Scaled to species-specific central estimates

# Fractional Blood Flows to Tissues (fraction of cardiac output)
QFatC	= 1.0;	# Scaled to species-specific central estimates
QBraC = 1.0;  # Scaled to species-specific central estimates #(v2.1)  
QGutC	= 1.0;	# Scaled to species-specific central estimates
QLivC	= 1.0;	# Scaled to species-specific central estimates
QSlwC	= 1.0;	# Scaled to species-specific central estimates
QKidC	= 1.0;	# Scaled to species-specific central estimates
FracPlasC	= 1.0;	# Scaled to species-specific central estimates
lnDRespC	= 0.0;	# Scaled to alveolar ventilation rate in dynamics

# Fractional Tissue Volumes (fraction of BW)
VFatC	= 1.0;	# Scaled to species-specific central estimates
VBraC = 1.0;  #(v2.1) 
VGutC	= 1.0;	# Scaled to species-specific central estimates
VLivC	= 1.0;	# Scaled to species-specific central estimates
VRapC	= 1.0;	# Scaled to species-specific central estimates
VRespLumC	= 1.0;	#Scaled to species-specific central estimates
VRespEffC	= 1.0;	#Scaled to species-specific central estimates
VKidC	= 1.0;	# Scaled to species-specific central estimates
VBldC	= 1.0;	# Scaled to species-specific central estimate

# Partition Coefficients for TCE
lnPBC	= 0.0;	# Scaled to species-specific central estimates
lnPFatC	= 0.0;	# Scaled to species-specific central estimates
lnPGutC	= 0.0;	# Scaled to species-specific central estimates
lnPLivC	= 0.0;	# Scaled to species-specific central estimates
lnPRapC	= 0.0;	# Scaled to species-specific central estimates
lnPTBC	= 0.0;	# Scaled to species-specific central estimates
lnPRespC	= 0.0;	# Scaled to species-specific central estimates
lnPKidC	= 0.0;	# Scaled to species-specific central estimates
lnPSlwC	= 0.0;	# Scaled to species-specific central estimates
lnPBraC = 0.0; #(V2.1)  

# Partition Coefficients for TCA
lnPRBCPlasTCAC	= 0.0;	# Scaled to species-specific central estimates
lnPBodTCAC	= 0.0;	# Scaled to species-specific central estimates
lnPLivTCAC	= 0.0;	# Scaled to species-specific central estimates
lnPBraTCAC = 0.0; #(V2.1)  
lnPKidTCAC = 0.0; #(V2.1)  
lnPLngTCAC = 0.0; #(V2.1)

# Plasma Binding for TCA
lnkDissocC	= 0.0;	# Scaled to species-specific central estimates
lnBMaxkDC	= 0.0;	# Scaled to species-specific central estimates

# Partition Coefficients for TCOH 
lnPBodTCOHC	= 0.0;	# Scaled to species-specific central estimates
lnPLivTCOHC	= 0.0;	# Scaled to species-specific central estimates
lnPBraTCOHC = 0.0; #(V2.1)  
lnPKidTCOHC = 0.0; #(V2.1)  
lnPLngTCOHC = 0.0; #(V2.1)  

# Partition Coefficients for TCOG
lnPBodTCOGC	= 0.0;	# Scaled to species-specific central estimates
lnPLivTCOGC	= 0.0;	# Scaled to species-specific central estimates
lnPKidTCOGC	= 0.0;  #(V2.1)  
lnPLngTCOGC	= 0.0;  #(V2.1)
lnPBraTCOGC	= 0.0;  #(V2.1) 

# Partition Coefficients for DCVG
lnPBodDCVCC = 0.0; #DCVC body/blood partition coefficient #(V2.1)  
lnPLivDCVCC = 0.0; #DCVC liver/body partition coefficient #(V2.1)  
lnPKidDCVCC = 0.0; #DCVC kidney/blood partition coefficient #(V2.1)
lnPBraDCVCC = 0.0; #DCVC brain/blood partition coefficient #(V2.1) 

# Partition Coefficients for DCVC
lnPBodDCVGC = 0.0; #DCVG body/blood partition coefficient #(V2.1)
lnPLivDCVGC = 0.0; #DCVG liver/body partition coefficient #(V2.1)  
lnPBraDCVGC = 0.0; #DCVG brain/blood partition coefficient #(V2.1)  
lnPKidDCVGC = 0.0; #DCVG kidney/blood partition coefficient #(V2.1)

# Partition Coefficients for NADCVC
lnPBodNADCVCC = 0.0;  #NADCVC body/blood partition coefficient #(V2.1)
lnPlivNADCVCC = 0.0;  #NADCVC liver/body partition coefficient #(V2.1) 
lnPBraNADCVCC = 0.0;  #NADCVC brain/body partition coefficient #(V2.1)  
lnPKidNADCVCC = 0.0;  #NADCVC kidney/body partition coefficient #(V2.1)    

lnPeffDCVG	= 0.0;	# Scaled to species-specific central estimates
lnPeffDCVC	= 0.0;	# Scaled to species-specific central estimates
lnPeffDCA	= 0.0;	# Scaled to species-specific central estimates

# Oral Absorption rates
lnkTSD	= 0.336;
lnkAS	= 0.336;
lnkTD	= -2.303;
lnkAD	= -0.288;
lnkASTCA	= -0.288;
lnkASTCOH	= -0.288;

# Background rates
lnTCABgd = -30;
lnDCABgd = -30;

# TCE Metabolism
lnVMaxC	= 0.0;	# Scaled by liver weight and species-specific central estimates
lnKMC	= 0.0;	# Scaled to species-specific central estimates
lnClC	= 0.0;	# Scaled to species-specific central estimates
lnVMaxDCVGC	= 0.0;	# Scaled by liver weight and species-specific central estimates
lnClDCVGC	= 0.0;	# Scaled to species-specific central estimates
lnKMDCVGC	= 0.0;	# Scaled to species-specific central estimates
lnVMaxKidDCVGC	= 0.0;	# Scaled by kidney weight and species-specific central estimates
lnClKidDCVGC	= 0.0;	# Scaled to species-specific central estimates
lnKMKidDCVGC	= 0.0;	# Scaled to species-specific central estimates
lnClClaraC	= 0.0;	# Scaled by BW^0.75
#lnVMaxlungLivC	= 0.0; #Ratio of lung Vmax to liver Vmax, #(v2.0)
lnVMaxLngTCOH1C = 0.0; #(v2.1)
lnVMaxLngTCOH2C = 0.0; #(v2.1)
# lnKMClara	= 0.0;	# now in units of air concentration #(v2.0)
lnKMClaraTCOH	= 0.0;	# now in units of TCA air concentration #(v2.1)
lnKMClaraTCA	= 0.0;	# now in units of TCOH air concentration #(v2.1)


# Inter-strain scaling - relative to B6C3F1
lnISOx = 0.0; # P450 oxidative metabolism
lnISTCA = 0.0; # fraction to TCA
lnISDCA = 0.0; # fraction to DCA
lnISConj = 0.0; # GSH conjugation metabolism
lnISkTCA = 0.0; # TCA metabolism/clearance
lnISkDCA = 0.0; # DCA metabolism/clearance
lnISkDCVG = 0.0; # DCVG -> DCVC
lnISkDCVC = 0.0; # DCVC metabolism #(V2.1)
lnISkNADCVC = 0.0; # NADCVC clearance #(V2.1)


# TCOH Metabolism
lnVMaxTCOH1C	= 0.0;	# Scaled by BW^0.75 #(V2.1)
lnVMaxTCOH2C	= 0.0;	# Scaled by BW^0.75 #(V2.1)
lnVMaxLngTCOH1C	= 0.0;	# Scaled by BW^0.75 #(V2.1)
lnVMaxLngTCOH2C	= 0.0;	# Scaled by BW^0.75 #(V2.1)
lnClTCOHC	= 0.0;	# Scaled by BW^0.75
#lnKMTCOH	= 0.0;	# 
lnClGlucC	= 0.0;	# Scaled by BW^0.75
lnKMGluc	= 0.0;	# 
lnkMetLivTCOHC	= 0.0;	# Scaled by BW^-0.25

# DCA metabolism/clearance#(v2.0)
lnkClearDCAC	= 0;	# Scaled by BW^-0.25
lnkDCAcen_perC	= 0;	# Scaled by BW^-0.25
lnkDCAper_cenC	= 0;	# Scaled by BW^-0.25

# TCA Metabolism/clearance
lnkUrnTCAC	= 0.0;	# Scaled by (plasma volume)^-1 and species-specific central estimates
lnkMetLivTCAC	= 0.0;	# Scaled by BW^-0.25

# TCOG clearance/reabsorption
lnkBilTCOGC	= 0.0;	# Scaled by BW^-0.25
lnkEHRC	= 0.0;	# Scaled by BW^-0.25
lnkUrnTCOGC	= 0.0;	# Scaled by (blood volume)^-1 and species-specific central estimates

# DCVG metabolism
lnkLivDCVGC	= 0.0;	#(v2.1)
lnkKidDCVGC	= 0.0;	#(v2.1)

# DCVC metabolism
lnkMetLivDCVCC	= 0.0;	# Scaled by BW^-0.25 #(v2.1)
lnkMDCVCC	= 0.0;	# Scaled by BW^-0.25 #(v2.1)

# NADCVC clearance
lnkUrnNADCVCC	= 0.0;	# Scaled by (blood volume)^-1 and species-specific central estimates

# Closed chamber parameters
NRodents	= 1;	# 
VChC	= 1;	# 
lnkLossC	= 0;	# 

#******************************************************************************
# Population means
#
M_lnQCC	= 1.0;
M_lnVPRC	= 1.0;
M_QFatC	= 1.0; 
M_QBraC = 1.0; #(v2.1)
M_QGutC	= 1.0;
M_QLivC	= 1.0;
M_QSlwC	= 1.0;

M_QKidC	= 1.0;
M_FracPlasC	= 1.0;
M_lnDRespC = 1.0; 
M_VFatC	= 1.0;
M_VBraC = 1.0;  #(v2.1)
M_VGutC	= 1.0;
M_VLivC	= 1.0;
M_VRapC	= 1.0;

M_VRespLumC = 1.0; 
M_VRespEffC = 1.0; 
M_VKidC	= 1.0;
M_VBldC	= 1.0;
M_lnPBC	= 1.0;
M_lnPFatC	= 1.0;
M_lnPBraC = 1.0; #(v2.1)
M_lnPGutC	= 1.0;
M_lnPLivC	= 1.0;
M_lnPRapC	= 1.0;

M_lnPRespC	= 1.0; 
M_lnPKidC	= 1.0;
M_lnPSlwC	= 1.0;
M_lnPRBCPlasTCAC	= 1.0;
M_lnPBodTCAC	= 1.0;
M_lnPLivTCAC	= 1.0;
M_lnPBraTCAC = 1.0; #(V2.1)  
M_lnPKidTCAC = 1.0; #(V2.1)  
M_lnPLngTCAC = 1.0; #(V2.1)

M_lnkDissocC	= 1.0;
M_lnBMaxkDC	= 1.0;

M_lnPBodDCVCC = 1.0; #(V2.1)  
M_lnPLivDCVCC = 1.0; #(V2.1)  
M_lnPKidDCVCC = 1.0; #(V2.1)
M_lnPBraDCVCC = 1.0; #(V2.1) 
M_lnPBodDCVGC = 1.0; #(V2.1)
M_lnPLivDCVGC = 1.0; #(V2.1)  
M_lnPBraDCVGC = 1.0; #(V2.1)  
M_lnPKidDCVGC = 1.0; #(V2.1)
M_lnPBodNADCVCC = 1.0;  #(V2.1)
M_lnPlivNADCVCC = 1.0;  #(V2.1) 
M_lnPBraNADCVCC = 1.0;  #(V2.1)  
M_lnPKidNADCVCC = 1.0;  #(V2.1)    

M_lnPBodTCOHC	= 1.0;
M_lnPLivTCOHC	= 1.0;
M_lnPBraTCOHC = 1.0; #(V2.1)  
M_lnPKidTCOHC = 1.0; #(V2.1)  
M_lnPLngTCOHC = 1.0; #(V2.1)  

M_lnPBodTCOGC	= 1.0;
M_lnPLivTCOGC	= 1.0;
M_lnPKidTCOGC	= 1.0;  #(V2.1)  
M_lnPLngTCOGC	= 1.0;  #(V2.1)
M_lnPBraTCOGC	= 1.0;  #(V2.1) 

M_lnPeffDCVG	= 1.0;
M_lnPeffDCVC	= 1.0;
M_lnPeffDCA	= 1.0;
M_lnkTSD	= 1.0;
M_lnkAS	= 1.0;
M_lnkTD	= 1.0;
M_lnkAD	= 1.0;
M_lnkASTCA	= 1.0;
M_lnkASTCOH	= 1.0;
M_lnVMaxC	= 1.0;
M_lnKMC	= 1.0;
M_lnClC	= 1.0;
M_lnVMaxDCVGC	= 1.0;
M_lnClDCVGC	= 1.0;
M_lnKMDCVGC	= 1.0;
M_lnVMaxKidDCVGC	= 1.0;
M_lnClKidDCVGC	= 1.0;
M_lnKMKidDCVGC	= 1.0;
# M_lnVMaxlungLivC	= 1.0; #(v2.0)
M_lnVMaxLngTCOH1C	= 1.0; #(v2.1)
M_lnVMaxLngTCOH2C	= 1.0; #(v2.1)
# M_lnKMClara	= 1.0; #(v2.0)
M_lnKMClaraTCOH	= 1.0; #(v2.1)
M_lnKMClaraTCA	= 1.0; #(v2.1)


# inter-strain scaling
M_lnISOx = 0.0; # P450 oxidative metabolism
M_lnISTCA = 0.0; # fraction to TCA
M_lnISDCA = 0.0; # fraction to DCA
M_lnISConj = 0.0; # GSH conjugation metabolism
M_lnISkTCA = 0.0; # TCA metabolism/clearance
M_lnISkDCA = 0.0; # DCA metabolism/clearance
M_lnISkDCVG = 0.0; # DCVG -> DCVC
M_lnISkDCVC = 1.0; #(V2.1)
M_lnISkNADCVC = 1.0; #(V2.1)

M_lnVMaxTCOH1C	= 1.0; #(V2.1)
M_lnVMaxTCOH2C	= 1.0; #(V2.1)
M_lnVMaxLngTCOH1C	= 1.0; #(V2.1)
M_lnVMaxLngTCOH2C	= 1.0; #(V2.1)

M_lnClTCOHC	= 1.0;
#M_lnKMTCOH	= 1.0;
M_lnVMaxGlucC	= 1.0;
M_lnClGlucC	= 1.0;
M_lnKMGluc	= 1.0;
M_lnkMetTCOHC	= 1.0;
M_lnkUrnTCAC	= 1.0;
M_lnkMetTCAC	= 1.0;
M_lnkBilTCOGC	= 1.0;
M_lnkEHRC	= 1.0;
M_lnkUrnTCOGC	= 1.0;
#
#M_lnFracKidDCVCC	= 1.0;
M_lnkDCVGC	= 1.0;

M_lnkMetLivDCVCC	= 1.0; #(v2.1)
M_lnkMDCVCC	= 1.0;	#(v2.1)

M_lnkClearDCAC	= 1.0;
M_lnkDCAcen_perC	= 1.0;
M_lnkDCAper_cenC	= 1.0;

#******************************************************************************
# Population Variances
#
V_lnQCC	= 1.0;
V_lnVPRC	= 1.0;
V_QFatC	= 1.0;
V_QGutC	= 1.0;
V_QLivC	= 1.0;
V_QSlwC	= 1.0;
V_QTBC	= 1.0;
V_QKidC	= 1.0;
V_FracPlasC	= 1.0;
V_lnDRespC = 1.0;
V_VFatC	= 1.0;
V_VGutC	= 1.0;
V_VLivC	= 1.0;
V_VRapC	= 1.0;
V_VRespLumC = 1.0; 
V_VRespEffC = 1.0; 
V_VKidC	= 1.0;
V_VBldC	= 1.0;
V_lnPBC	= 1.0;
V_lnPFatC	= 1.0;
V_lnPGutC	= 1.0;
V_lnPLivC	= 1.0;
V_lnPRapC	= 1.0;
V_lnPRespC	= 1.0;
V_lnPKidC	= 1.0;
V_lnPSlwC	= 1.0;
V_lnPRBCPlasTCAC	= 1.0;
V_lnPBodTCAC	= 1.0;
V_lnPLivTCAC	= 1.0;
V_lnkDissocC	= 1.0;
V_lnBMaxkDC	= 1.0;
V_lnPBodTCOHC	= 1.0;
V_lnPLivTCOHC	= 1.0;
V_lnPBodTCOGC	= 1.0;
V_lnPLivTCOGC	= 1.0;
V_lnPeffDCVG	= 1.0;
V_lnPeffDCVC	= 1.0;
V_lnPeffDCA	= 1.0;
V_lnkAS	= 1.0;
V_lnkTD	= 1.0;
V_lnkAD	= 1.0;
V_lnkASTCA	= 1.0;
V_lnkASTCOH	= 1.0;
V_lnVMaxC	= 1.0;
V_lnKMC	= 1.0;
V_lnClC	= 1.0;
V_lnVMaxDCVGC	= 1.0;
V_lnClDCVGC	= 1.0;
V_lnKMDCVGC	= 1.0;
V_lnVMaxKidDCVGC	= 1.0;
V_lnClKidDCVGC	= 1.0;
V_lnKMKidDCVGC	= 1.0;
# V_lnVMaxlungLivC	= 1.0; # v(2.0)
V_lnVMaxLngTCOH1C	= 1.0; # v(2.1)
V_lnVMaxLngTCOH2C	= 1.0; # v(2.1)
# V_lnKMClara	= 1.0; # v(2.0)
V_lnKMClaraTCOH = 1.0; # v(2.1)
V_lnKMClaraTCA = 1.0; # v(2.1)


# inter-strain scaling
V_lnISOx = 1.0; # P450 oxidative metabolism
V_lnISTCA = 1.0; # fraction to TCA
V_lnISDCA = 1.0; # fraction to DCA
V_lnISConj = 1.0; # GSH conjugation metabolism
V_lnISkTCA = 1.0; # TCA metabolism/clearance
V_lnISkDCA = 1.0; # DCA metabolism/clearance
V_lnISkDCVG = 1.0; # DCVG -> DCVC
V_lnFracLngSysC	= 1.0;
V_lnClTCOHC	= 1.0;
#V_lnKMTCOH	= 1.0;
V_lnVMaxGlucC	= 1.0;
V_lnClGlucC	= 1.0;
V_lnKMGluc	= 1.0;
V_lnkMetLivTCOHC	= 1.0;
V_lnkUrnTCAC	= 1.0;
V_lnkMetLivTCAC	= 1.0;
V_lnkBilTCOGC	= 1.0;
V_lnkEHRC	= 1.0;
V_lnkUrnTCOGC	= 1.0;
#V_lnFracKidDCVCC	= 1.0;
V_lnkDCVGC	= 1.0;
V_lnkElimNADCVCC	= 1.0;
V_lnkClearDCAC	= 1.0;
V_lnkDCAcen_perC	= 1.0;
V_lnkDCAper_cenC	= 1.0;

##(v2.1) Added parameters
V_QBraC = 1.0; #(v2.1)
V_VBraC = 1.0;  #(v2.1)
V_lnPBraC = 1.0; #(v2.1)
V_lnPBraTCAC = 1.0; #(V2.1)  
V_lnPKidTCAC = 1.0; #(V2.1)  
V_lnPLngTCAC = 1.0; #(V2.1)
V_lnPBodDCVCC = 1.0; #(V2.1)  
V_lnPLivDCVCC = 1.0; #(V2.1)  
V_lnPKidDCVCC = 1.0; #(V2.1)
V_lnPBraDCVCC = 1.0; #(V2.1) 
V_lnPBodDCVGC = 1.0; #(V2.1)
V_lnPLivDCVGC = 1.0; #(V2.1)  
V_lnPBraDCVGC = 1.0; #(V2.1)  
V_lnPKidDCVGC = 1.0; #(V2.1)
V_lnPBodNADCVCC = 1.0;  #(V2.1)
V_lnPlivNADCVCC = 1.0;  #(V2.1) 
V_lnPBraNADCVCC = 1.0;  #(V2.1)  
V_lnPKidNADCVCC = 1.0;  #(V2.1)
V_lnPBraTCOHC = 1.0; #(V2.1)  
V_lnPKidTCOHC = 1.0; #(V2.1)  
V_lnPLngTCOHC = 1.0; #(V2.1)  
V_lnPKidTCOGC	= 1.0;  #(V2.1)  
V_lnPLngTCOGC	= 1.0;  #(V2.1)
V_lnPBraTCOGC	= 1.0;  #(V2.1)
V_lnISkDCVC = 1.0; #(V2.1)
V_lnISkNADCVC = 1.0; #(V2.1)
V_lnkMetLivDCVCC	= 1.0; #(v2.1)
V_lnkMDCVCC	= 1.0;	#(v2.1)

#******************************************************************************
# Measurement error variances for output
Ve_RetDose	= 1;
Ve_CAlv	= 1;
Ve_CAlvPPM	= 1;
Ve_CInhPPM	= 1;
Ve_CInh	= 1;
Ve_CMixExh	= 1;
Ve_CArt	= 1;
Ve_CVen	= 1;
Ve_CBldMix	= 1;
Ve_CFat	= 1;
Ve_CBra	= 1; #(v2.1)
Ve_CGut	= 1;
Ve_CRap	= 1;
Ve_CSlw	= 1;
Ve_CHrt	= 1;
Ve_CKid	= 1;
Ve_CLiv	= 1;
Ve_Clung	= 1;
Ve_CMus	= 1;
Ve_CSpl	= 1;
Ve_CBrn	= 1;
Ve_zAExh	= 1;
Ve_zAExhpost	= 1;

Ve_CTCOH	= 1;
Ve_CKidTCOH	= 1;
Ve_CLivTCOH	= 1;
Ve_ClungTCOH	= 1;
Ve_CBraTCOH = 1; #(V2.1)
	
Ve_CPlasTCA	= 1;
Ve_CBldTCA	= 1;
Ve_CBodTCA	= 1;
Ve_CKidTCA	= 1;
Ve_CLivTCA	= 1;
Ve_CBraTCA  = 1;	#(V2.1)
Ve_ClungTCA	= 1;
Ve_zAUrnTCA	= 1;
Ve_zAUrnTCA_col	= 1;
Ve_zAUrnTCA_sat	= 1;
	
Ve_zABilTCOG	= 1;
Ve_CTCOG	= 1; #(V2.1)
Ve_CBraTCOG	= 1; #(V2.1)
Ve_CTCOG	= 1; #(V2.1)
Ve_CKidTCOG	= 1; #(V2.1)
Ve_CLivTCOG	= 1; #(V2.1)
Ve_ClungTCOG	= 1; #(V2.1)
Ve_AUrnTCOG	= 1; #(V2.1)
Ve_AUrnTCOG_collect	= 1; #(V2.1)
Ve_AUrnTCOG_sat	= 1; #(V2.1)

Ve_CBldNAcDCVG = 1;	#(V2.1)
Ve_ClivNAcDCVG = 1;	#(V2.1)
Ve_CBraNAcDCVG = 1;	#(V2.1)
Ve_CKidNAcDCVG = 1;	#(V2.1)
Ve_CBldDCVC = 1; #(V2.1)
Ve_ClivDCVC = 1;	#(V2.1)
Ve_CBraDCVC = 1; #(V2.1)
Ve_CKidDCVC = 1;#(V2.1)
Ve_CBldNADCVC = 1;	#(V2.1)
Ve_ClivNADCVC = 1;	#(V2.1)
Ve_CBraNADCVC = 1;	#(V2.1)
Ve_CKidNADCVC = 1;	#(V2.1)
Ve_AUrnNADCVC = 1;	  #(V2.1)
Ve_AUrnNADCVC_col = 1; #(V2.1)
Ve_AUrnNADCVC_sat = 1; #(V2.1)

Ve_CDCVGmol	= 1;
Ve_CDCVCmol	= 1;
Ve_CDCAmol	=
Ve_AUrnTCTotMole	= 1;
Ve_TotCTCOH	= 1;
Ve_QPsamp	= 1;

#******************************************************************************
#***                  Defaults for input parameters                         ***
#******************************************************************************
##-- TCE dosing
	Conc = 0.0;	# Inhalation exposure conc. (ppm)
	IVDose = 0.0;	# IV dose (mg/kg)
	PDose = 0.0;	# Oral gavage dose (mg/kg)
	Drink = 0.0;	# Drinking water dose (mg/kg/day)
	IADose = 0.0;	# Intraarterial dose (mg/kg)
	PVDose = 0.0;	# Portal vein dose (mg/kg)
##-- TCA dosing
	IVDoseTCA = 0.0;# IV dose (mg/kg) of TCA 
	PODoseTCA = 0.0;# Oral dose (mg/kg) of TCA 
##-- TCOH dosing
	IVDoseTCOH = 0.0;# IV dose (mg/kg) of TCOH 
	PODoseTCOH = 0.0;# Oral dose (mg/kg) of TCOH 
##-- Potentially time-varying parameters
	QPmeas = 0.0;	# Measured value of Alveolar ventilation QP 
	TCAUrnSat = 0.0;# Flag for saturated TCA urine 
	TCOGUrnSat = 0.0;# Flag for saturated TCOG urine 
	UrnMissing = 0.0;# Flag for missing urine collection times 

Initialize {

#******************************************************************************
#***                  Parameter Initialization and Scaling                  ***
#******************************************************************************
	# use measured value of > 0, otherwise use 0.03 for mouse, 
	#	0.3 for rat, 60 for female human, 70 for male human
	BW = (BWmeas > 0.0 ? BWmeas : (Species == 3 ? 0.03 : (Species == 2 ? 0.3 : (Male == 0 ? 60.0 : 70.0) )));

	BW75 = pow(BW, 0.75);
	BW25 = pow(BW, 0.25);
	
# Cardiac Output and alveolar ventilation (L/hr) 
	QC = exp(lnQCC) * BW75 * 	# Mouse, Rat, Human (default)
		(Species == 3 ? 11.6 : (Species == 2 ? 13.3 : 16.0 ));
	VPR = exp(lnVPRC)*
		(Species == 3 ? 2.5 : (Species == 2 ? 1.9 : 0.96 ));
	QPsamp = QC*VPR;


#	Will be scaled by QP in dynamics
#	Use log-uniform distribution from 1e-5 to 10
	DResptmp = exp(lnDRespC);

# Fractional Flows scaled to the appropriate species
# Fat = Adipose only
# Gut = GI tract + pancreas + spleen (all drain to portal vein)
# Liv = Liver, hepatic artery
# Slw = Muscle + Skin

# Kid = Kidney
# Rap = Rapidly perfused (rest of organs, plus bone marrow, lymph, etc.),
#	derived by difference in dynamics
# 
# Mouse and rat data from Brown et al. (1997).  Human data from
# 	ICRP-89 (2002), and is sex-specific.
 
	QFatCtmp = QFatC*
	(Species == 3 ? 0.07 : (Species == 2 ? 0.07 : (Male == 0 ? 0.085 : 0.05) ));
	QGutCtmp = QGutC*
	(Species == 3 ? 0.141 : (Species == 2 ? 0.153 : (Male == 0 ? 0.21 : 0.19) ));
	QLivCtmp = QLivC*
	(Species == 3 ? 0.02 : (Species == 2 ? 0.021 : 0.065 ));
	QSlwCtmp = QSlwC*
	(Species == 3 ? 0.217 : (Species == 2 ? 0.336 : (Male == 0 ? 0.17 : 0.22) ));
	QKidCtmp = QKidC*
		(Species == 3 ? 0.091 : (Species == 2 ? 0.141 : (Male == 0 ? 0.17 : 0.19) ));
	QBraCtmp = QBraC* #(v2.1)
	(Species == 3 ? 0.141 : (Species == 2 ? 0.153 : (Male == 0 ? 0.21 : 0.19) ));
	QLngCtmp = QLngC* #(v2.1)
	(Species == 3 ? 0.141 : (Species == 2 ? 0.153 : (Male == 0 ? 0.21 : 0.19) ));


# Plasma Flows to Tissues (L/hr)
## Mice and rats from Hejtmancik et al. 2002, 
##	control F344 rats and B6C3F1 mice at 19 weeks of age
## However, there appear to be significant strain differences in rodents, so 
##	assume uncertainty CV=0.2 and variability CV=0.2.
## Human central estimate from ICRP.  Well measured in humans, from Price et al., 
##	human SD in hematocrit was 0.029 in females, 0.027 in males, 
##	corresponding to FracPlas CV of 0.047 in females and 
## 	0.048 in males.  Use rounded CV = 0.05 for both uncertainty and variability
## Use measured 1-hematocrit if available
## Truncate distributions at 3xCV to encompass clinical "normal range"
	FracPlas = (Hematocritmeas > 0.0 ? (1-Hematocritmeas) : (FracPlasC * 
	(Species == 3 ? 0.52 : (Species == 2 ? 0.53 : (Male == 0 ? 0.615 : 0.567)))));

# Tissue Volumes (L)
# Fat = Adipose only
# Gut = GI tract (not contents) + pancreas + spleen (all drain to portal vein)
# Liv = Liver
# Kid = Kidney
# Bld = Blood
# Slw = Muscle + Skin, derived by difference
# residual (assumed unperfused) = (Bone-Marrow)+GI contents+other
# 
# Mouse and rat data from Brown et al. (1997).  Human data from
# 	ICRP-89 (2002), and is sex-specific.

        VFat = BW * (VFatCmeas > 0.0 ? VFatCmeas : (VFatC * (Species == 3 ? 0.07 : (Species == 2 ? 0.07 : (Male == 0 ? 0.317 : 0.199)  ))));
        	VRespLum = VRespLumC * BW * 
	(Species == 3 ? (0.00014/0.03) : (Species == 2 ? (0.0014/0.3) : (0.167/70) )); 
	(Species == 3 ? 0.0007 : (Species == 2 ? 0.0005 : 0.00018 ));
	        VSlw = (Species == 3 ? 0.8897 : (Species == 2 ? 0.8995 : (Male == 0 ? 0.85778 : 0.856))) * BW 
		- VFat - VGut - VLiv - VRap - VRespEfftmp - VKid - VBld;
        VGut = VGutC * BW *
	(Species == 3 ? 0.049 : (Species == 2 ? 0.032 : (Male == 0 ? 0.022 : 0.020) ));
        VLiv = VLivC * BW *
	(Species == 3 ? 0.055 : (Species == 2 ? 0.034 : (Male == 0 ? 0.023 : 0.025) ));
        VRap = VRapC * BW * 
	(Species == 3 ? 0.100 : (Species == 2 ? 0.088 : (Male == 0 ? 0.093 : 0.088) ));
	       VKid = VKidC * BW *
	(Species == 3 ? 0.017 : (Species == 2 ? 0.007 : (Male == 0 ? 0.0046 : 0.0043) ));
        VBld = VBldC * BW *
	(Species == 3 ? 0.049 : (Species == 2 ? 0.074 : (Male == 0 ? 0.068 : 0.077) ));
        VBra = VBraC * BW * #(v2.1)
	(Species == 3 ? 0.055 : (Species == 2 ? 0.034 : (Male == 0 ? 0.023 : 0.025) )); 
        VLng = VLngC * BW * #(v2.1)
	(Species == 3 ? 0.055 : (Species == 2 ? 0.034 : (Male == 0 ? 0.023 : 0.025) ));

 Slowly perfused:
# Baseline mouse: 0.8897-0.049-0.017-0.0007-0.1-0.055-0.049-0.07= 0.549
# Baseline rat: 0.8995 -0.074-0.007-0.0005-0.088-0.034-0.032-0.07= 0.594
# Baseline human F: 0.85778-0.068-0.0046-0.00018-0.093-0.023-0.022-0.317= 0.33
# Baseline human M: 0.856-0.077-0.0043-0.00018-0.088-0.025-0.02-0.199= 0.4425

 VPlas = FracPlas * VBld;

	VBodOX = VFat + VGut + VRap + VRespEfftmp + VSlw;
	VBodGSH =  VFat + VGut + VRap + VSlw + VLng + VBil;
	
# Partition coefficients
       PB = (PBmeas > 0.0 ? PBmeas : (exp(lnPBC) * (Species == 3 ? 15. : (Species == 2 ? 22. : 9.5 )))); # Blood-air
	# Mice: pooling Abbas and Fisher 1997, Fisher et al. 1991
	#	each a single measurement, with overall CV = 0.07. 
	#	Given small number of measurements, and variability
	#	in rat, use CV of 0.25 for uncertainty and variability.
	# Rats: pooling Sato et al. 1977, Gargas et al. 1989, 
	#	Barton et al. 1995, Simmons et al. 2002, Koizumi 1989, 
	#	Fisher et al. 1989.  Fisher et al. measurement substantially
	#	smaller than others (15 vs. 21~26).  Recent article
	#	by Rodriguez et al. 2007 shows significant change with
	#	age (13.1 at PND10, 17.5 at adult, 21.8 at aged), also seems
	#	to favor lower values than previously reported.  Therefore
	#	use CV = 0.25 for uncertainty and variability.
	# Humans: pooling Sato and Nakajima 1979, Sato et al. 1977, 
	#	Gargas et al. 1989, Fiserova-Bergerova et al. 1984,
	#	Fisher et al. 1998, Koizumi 1989
	#	Overall variability CV = 0.185.  Consistent with 
	#	within study inter-individual variability CV = 0.07~0.22.  
	#	Study-to-study, sex-specific means range 8.1~11, so 
	#	uncertainty CV = 0.2.  
       PFat = exp(lnPFatC) *		# Fat/blood
		(Species == 3 ? 36. : (Species == 2 ? 27. : 67. ));
	# Mice: Abbas and Fisher 1997.  Single measurement.  Use
	#	rat uncertainty of CV = 0.3.
	# Rats: Pooling Barton et al. 1995, Sato et al. 1977, 
	#	Fisher et al. 1989.  Recent article by Rodriguez et al.
	#	(2007) shows higher value of 36., so assume uncertainty
	#	CV of 0.3.
	# Humans: Pooling Fiserova-Bergerova et al. 1984, Fisher et al. 1998, 
	#	Sato et al. 1977.  Variability in Fat:Air has CV = 0.07.
	#	For uncertainty, dominated by PB uncertainty CV = 0.2
	#	For variability, add CVs in quadrature for 
	#	sqrt(0.07^2+0.185^2)=0.20
       PGut = exp(lnPGutC) * 		# Gut/blood
		(Species == 3 ? 1.9 : (Species == 2 ? 1.4 : 2.6 ));
	# Mice: Geometric mean of liver, kidney
	# Rats: Geometric mean of liver, kidney
	# Humans: Geometric mean of liver, kidney
	#	Uncertainty of CV = 0.4 due to tissue extrapolation
       PLiv = exp(lnPLivC) * 		# Liver/blood
		(Species == 3 ? 1.7 : (Species == 2 ? 1.5 : 4.1 ));
	# Mice: Fisher et al. 1991, single datum, so assumed uncert CV = 0.4
	# Rats: Pooling Barton et al. 1995, Sato et al. 1977, 
	#	Fisher et al. 1989, with little variation (range 1.3~1.7).  
	#	Recent article by Rodriguez et al.reports 1.34.  Use 
	#	uncertainty CV = 0.15.
	# Humans: Pooling Fiserova-Bergerova et al. 1984, Fisher et al. 1998
	#	almost 2-fold difference in Liver:Air values, so uncertainty
	#	CV = 0.4
       PRap = exp(lnPRapC) * 		# Rapidly perfused/blood
		       ## PRaptmp = exp(lnPRapC) * #(v1a)#(v1b)#(v1c) -- temporary
		(Species == 3 ? 1.9 : (Species == 2 ? 1.3 : 2.6 ));
	# Mice: Similar to liver, kidney.  Uncertainty CV = 0.4 due to
	#	tissue extrapolation
	# Rats: Use brain values Sato et al. 1977.  Recent article by
	#	Rodriguez et al. (2007) reports 0.99 for brain.  Uncertainty
	#	CV of 0.4 due to tissue extrapolation.
	# Humans: Use brain from Fiserova-Bergerova et al. 1984
	#	Uncertainty of CV = 0.4 due to tissue extrapolation

       PResp = exp(lnPRespC) * 		# Resp/blood = 
		(Species == 3 ? 2.6 : (Species == 2 ? 1.0 : 1.3 ));
	# Mice: Abbas and Fisher 1997, single datum, so assumed uncert CV = 0.4
	# Rats: Sato et al. 1977, single datum, so assumed uncert CV = 0.4
	# Humans: Pooling Fiserova-Bergerova et al. 1984, Fisher et al. 1998
	#	> 2-fold difference in lung:air values, so uncertainty
	#	CV = 0.4
       VRespEff = VRespEfftmp * PResp * PB; # Effective air volume

       PKid = exp(lnPKidC) * 		# Kidney/blood
		(Species == 3 ? 2.1 : (Species == 2 ? 1.3 : 1.6 ));
	# Mice: Abbas and Fisher 1997, single datum, so assumed uncert CV = 0.4
	# Rats: Pooling Barton et al. 1995, Sato et al. 1977.  Recent article
	#	by Rodriguez et al. (2007) reports 1.01, so use uncertainty
	#	CV of 0.3.  Pooled variability CV = 0.39.
	# Humans: Pooling Fiserova-Bergerova et al. 1984, Fisher et al. 1998
	#	For uncertainty, dominated by PB uncertainty CV = 0.2
	#	Variability in kidney:air CV = 0.23, so add to PB variability
	#	in quadrature 	sqrt(0.23^2+0.185^2)=0.30
       PSlw = exp(lnPSlwC) * 		# Slowly perfused/blood
		(Species == 3 ? 2.4 : (Species == 2 ? 0.58 : 2.1 ));
	# Mice: Muscle - Abbas and Fisher 1997, single datum, so assumed 
	#	uncert CV = 0.4
	# Rats: Pooling Barton et al. 1995, Sato et al. 1977,
	#	Fisher et al. 1989.  Recent article by Rodriguez et al. (2007)
	#	reported 0.72, so use uncertainty CV of 0.25.  Variability
	#	in Muscle:air and muscle:blood ~ CV = 0.3
	# Humans: Pooling Fiserova-Bergerova et al. 1984, Fisher et al. 1998
	#	Range of values 1.4~2.4, so uncertainty CV = 0.3
	#	Variability in muscle:air CV = 0.3, so add to PB variability
	#	in quadrature sqrt(0.3^2+0.185^2)=0.35
       PBra = exp(lnPBraC) * 		# Brain/blood #(v2.1)
		(Species == 3 ? 2.1 : (Species == 2 ? 1.3 : 1.6 ));

# TCA partitioning
    TCAPlas = FracPlas + (1 - FracPlas) * 0.5 * exp(lnPRBCPlasTCAC);
	# 	Blood/Plasma concentration ratio.  Note dependence
	#	on fraction of blood that is plasma.  Here
	#	exp(lnPRBCPlasTCA) = partition coefficient
	#		C(blood minus plasma)/C(plasma)
	#	Default of 0.5, corresponding to Blood/Plasma 
	#		concentration ratio of 0.76 in 
	#		rats (Schultz et al 1999)
	#	For rats, Normal uncertainty with GSD = 1.4
	#	For mice and humans, diffuse prior uncertainty of 
	#	100-fold up/down
    PBodTCA = TCAPlas * exp(lnPBodTCAC) * 
		(Species == 3 ? 0.88 : (Species == 2 ? 0.88 : 0.52 ));
	# Note -- these were done at 10~20 microg/ml (Abbas and Fisher 1997),
	#	which is 1.635-3.27 mmol/ml (1.635-3.27 x 10^6 microM).  
	#	At this high concentration, plasma binding should be 
	#	saturated -- e.g., plasma albumin concentration was 
	#	measured to be P=190-239 microM in mouse, rat, and human
	# 	plasma by Lumpkin et al. 2003, or > 6800 molecules of
	#	TCA per molecule of albumin.  So the measured partition 
	#	coefficients should reflect free blood-tissue partitioning.
	# Used muscle values, multiplied by blood:plasma ratio to get 
	#	Body:Plasma partition coefficient
	# Rats = mice from Abbas and Fisher 1997
	# Humans from Fisher et al. 1998
	#	Uncertainty in mice, humans GSD = 1.4
	#	For rats, GSD = 2.0, based on difference between mice
	#	and humans.
    PLivTCA = TCAPlas * exp(lnPLivTCAC) *
		(Species == 3 ? 1.18 : (Species == 2 ? 1.18 : 0.66 ));
	# Multiplied by blood:plasma ratio to get Liver:Plasma 
	# Rats = mice from Abbas and Fisher 1997
	# Humans from Fisher et al. 1998
	#	Uncertainty in mice, humans GSD = 1.4
	#	For rats, GSD = 2.0, based on difference between mice
	#	and humans.

    PLivTCA = TCAPlas * exp(lnPLivTCAC) *
		(Species == 3 ? 1.18 : (Species == 2 ? 1.18 : 0.66 )); #(v2.1)
		  PKidTCA = TCAPlas * exp(lnPKidTCAC) *
		(Species == 3 ? 1.18 : (Species == 2 ? 1.18 : 0.66 )); #(v2.1)
		  PBraTCA = TCAPlas * exp(lnPBraTCAC) *
		(Species == 3 ? 1.18 : (Species == 2 ? 1.18 : 0.66 )); #(v2.1)


# Binding Parameters for TCA
	# GM of Lumpkin et al. 2003; Schultz et al. 1999;
	#	Templin et al. 1993, 1995; Yu et al. 2000
	# Protein/TCA dissociation constant (umole/L)
	# 	note - GSD = 3.29, 1.84, and 1.062 for mouse, rat, human
	kDissoc = exp(lnkDissocC) * 
		(Species == 3 ? 107. : (Species == 2 ? 275. : 182. ));
	# BMax = NSites * Protein concentration.  Sampled parameter is
	#	BMax/kD (determines binding at low concentrations)
	#	note - GSD = 1.64, 1.60, 1.20 for mouse, rat, human
	BMax = kDissoc * exp(lnBMaxkDC) *
		(Species == 3 ? 0.88 : (Species == 2 ? 1.22 : 4.62 ));

# TCOH partitioning
	# Data from Abbas and Fisher 1997 (mouse) and Fisher et al. 
	#	1998 (human).  For rat, used mouse values.
	#	Uncertainty in mice, humans GSD = 1.4
	#	For rats, GSD = 2.0, based on difference between mice
	#	and humans.

    PBodTCOH = exp(lnPBodTCOHC) *
		(Species == 3 ? 1.11 : (Species == 2 ? 1.11 : 0.91 ));
    PLivTCOH = exp(lnPLivTCOHC) *
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));

    PLngTCOH = exp(lnPLngTCOHC) * #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));
		  PKidTCOH = exp(lnPKidTCOHC) * #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));
		  PBraTCOH = exp(lnPBraTCOHC) * #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));

# TCOG partitioning
	# Use TCOH as a proxy, but uncertainty much greater
	# (e.g., use uniform prior, 100-fold up/down)
    PBodTCOG = exp(lnPBodTCOGC) *
		(Species == 3 ? 1.11 : (Species == 2 ? 1.11 : 0.91 ));
    PLivTCOG = exp(lnPLivTCOGC) *
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));
		
		  PLngTCOG = exp(lnPLngTCOGC) * #(v2.1)
		(Species == 3 ? 1.11 : (Species == 2 ? 1.11 : 0.91 ));
    PBraTCOG = exp(lnPBraTCOGC) * #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));
    PKidTCOG = exp(lnPKidTCOGC) * #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));
		
# DCVG distribution volume
	# exp(lnPeffDCVG) is the effective partition coefficient for
	# the "body" (non-blood) compartment
	# Diffuse prior distribution: loguniform 1e-3 to 1e3
	#VDCVG = VBld +  	# blood plus body (with "effective" PC)
	#exp(lnPeffDCVG) * (VBod + VLiv);
	   PBodDCVG = exp(lnPBodDCVGC) *  #(v2.1)
		(Species == 3 ? 1.1 : (Species == 2 ? 1.1 : 0.91 ));
    PLivDCVG = exp(lnPLivDCVGC) *  #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));
    PBraDCVG = exp(lnPBraDCVGC) * #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));
    PKidDCVG = exp(lnPKidDCVGC) * #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));
		

# DCVC distribution volume #(v2.0)
	# exp(lnPeffDCVC) is the effective partition coefficient for#(v2.0)
	# the "body" (non-blood) compartment#(v2.0)
	# Diffuse prior distribution: loguniform 1e-3 to 1e3#(v2.0)
	#VDCVC = VBld +  	# blood plus body (with "effective" PC)#(v2.0)
	#exp(lnPeffDCVC) * (VBod + VLiv);#(v2.0)
		  PBodDCVC = exp(lnPBodDCVCC) *  #(v2.1)
		(Species == 3 ? 1.1 : (Species == 2 ? 1.1 : 0.91 ));
    PLivDCVC = exp(lnPLivDCVCC) *  #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));
    PBraDCVC = exp(lnPBraDCVCC) * #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));
    PKidDCVC = exp(lnPKidDCVCC) * #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));
		
# NAcDCVC distribution volume #(v2.0)
		  PBodNADCVC = exp(lnPBodNADCVCC) *  #(v2.1)
		(Species == 3 ? 1.1 : (Species == 2 ? 1.1 : 0.91 ));
    PLivNADCVC = exp(lnPLivNADCVCC) *  #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));
    PBraNADCVC = exp(lnPBraNADCVCC) * #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));
    PKidNADCVC = exp(lnPKidNADCVCC) * #(v2.1)
		(Species == 3 ? 1.3 : (Species == 2 ? 1.3 : 0.59 ));

# DCA distribution volume#(v2.0)
	# exp(lnPeffDCA) is the effective partition coefficient for#(v2.0)
	# the "body" (non-blood) compartment#(v2.0)
	# Diffuse prior distribution: loguniform 1e-3 to 1e3#(v2.0)
	VDCA = VBld +  	# blood plus body (with "effective" PC)#(v2.0)
	exp(lnPeffDCA) * (VBod + VLiv);#(v2.0)

# Absorption Rate Constants (/hr)
	# All priors are diffuse (log)uniform distributions
	# transfer from stomach centered on 1.4/hr, range up or down 100-fold,
	# 	based on human stomach half-time of 0.5 hr.
 kTSD = exp(lnkTSD);
	# stomach absorption centered on 1.4/hr, range up or down 1000-fold
	kAS = exp(lnkAS);
	# assume no fecal excretion -- 100% absorption
	kTD = 0.0 * exp(lnkTD);
	# intestinal absorption centered on 0.75/hr, range up or down 
	#	1000-fold, based on human transit time of small intestine 
	#	of 4 hr	(95% throughput in 4 hr)
	kAD = exp(lnkAD);
	kASTCA = exp(lnkASTCA);
	kASTCOH = exp(lnkASTCOH);

# Background
	TCABgd = (lnTCABgd > -30 ? exp(lnTCABgd) : 0);
	DCABgd = (lnDCABgd > -30 ? exp(lnDCABgd) : 0);

# TCE Oxidative Metabolism Constants 
# For rodents, in vitro microsomal data define priors (pooled).
# For human, combined in vitro microsomoal+hepatocellular individual data 
#	define priors.
# All data from Elfarra et al. 1998; Lipscomb et al. 1997, 1998a,b
# For VMax, scaling from in vitro data were (Barter et al. 2007):
#	32 mg microsomal protein/g liver
#	99 x 1e6 hepatocytes/g liver
#	Here, human data assumed representative of mouse and rats.
# For KM, two different scaling methods were used for microsomes:
#	Assume microsomal concentration = liver concentration, and
#		use central estimate of liver:blood PC (see above)
#	Use measured microsome:air partition coefficient (1.78) and
#		central estimate of blood:air PC (see above)
# For human KM from hepatocytes, used measured human hepatocyte:air
# 	partition coefficient (21.62, Lipscomb et al. 1998), and 
#	central estimate of blood:air PC.
# 	Note that to that the hepatocyte:air PC is similar to that
#	found in liver homogenates (human: 29.4+/-5.1 from Fiserova-
# 	Bergerova et al. 1984, and 54 for Fisher et al. 1998; rat: 
# 	27.2+/-3.4 from Gargas et al. 1989, 62.7 from Koisumi 1989,
# 	43.6 from Sato et al. 1977; mouse: 23.2 from Fisher et al. 1991).
# For humans, sampled parameters are VMax and ClC (VMax/KM), due to 
#	improved convergence.  VMax is kept as a parameter because it
#	appears less uncertain (i.e., more consistent across microsomal
#	and hepatocyte data).  

	# Central estimate of VMax is 342, 76.2, and 32.3 (micromol/min/
	#	kg liver) for mouse, rat, human.  Converting to /hr by 
	#	* (60 min/hr * 0.1314 mg/micromol) gives 
	#	2700, 600, and 255 mg/hr/kg liver
	# Observed variability of about 2-fold GSD.  Assume 2-fold GSD for
	#	both uncertainty and variability
        VMax = exp(lnISOx) * VLiv*exp(lnVMaxC)* # apply interstrain scaling
		(Species == 3 ? 2700. : (Species == 2 ? 600. : 255.));

	# For mouse and rat central estimates for KM are 0.068~1.088 and
	# 	0.039~0.679 mmol/l in blood, depending on the scaling 
	#	method used.  Taking the geometric mean, and converting 
	#	to mg/l by 131.4 mg/mmol gives 36. and 21. mg/l in blood.  
	# For human, central estimate 
	#	for Cl are 0.306~3.95 l/min/kg liver.  Taking the geometric
	#	mean and converting to /hr gives a central estimate of 
	#	66. l/hr/kg.
	#	KM is then derived from KM = VMax/(Cl*Vliv) (central estimate
	#	of
	# Note uncertainty due to scaling is about 4-fold.
	#	Variability is about 3-fold in mice, 1.3-fold in rats, and
	#	2- to 4- fold in humans (depending on scaling).
        KM = (Species == 3 ? 36.*exp(lnKMC) : (Species == 2 ? 21.*exp(lnKMC) : VMax/(VLiv*66.*exp(lnClC))));


# TCE GSH Metabolism Constants
# Human in vitro data from Lash et al. 1999, define human priors.  
#			VMax (nmol/min/	KM (mM)		CLeff (ml/min/
#			      g tissue)			     g tissue)
#                       ----------------------------------------------
#			[high affinity pathway only]	[total]
# Human liver cytosol: 	~423		0.0055~0.023	21.2~87.0
# Human liver cytosol+	~211		--		--
#	microsomes
#			[total]		[total]		[total]
# Human hepatocytes*	12~30**		0.012~0.039***	0.2~0.5****
# Human kidney cytosol:	81		0.0164~0.0263	3.08~4.93
#	* estimated visually from Fig 1, Lash et al. 1999
#	** Fig 1A, data from 50~500 ppm headspace at 60 min
#		and Fig 1B, data at 100~5000 ppm in headspace for 120 min
#	*** Fig 1B, 30~100 ppm headspace, converted to blood concentration
#		using blood:air PC of 9.5
#	**** Fig 1A, data at 50 ppm headspace at 120 min and Fig 1B, data at 
#		25 and 50 ppm headspace at 120 min.
# Overall, human liver hepatocytes are probably most like the 
#	intact liver (e.g., accounting for the competition between
#	GSH conjugation and oxidation).  So central estimates based 
#	on those: CLeff ~ 0.32 ml/min/g tissue, KM ~ 0.022 mM in blood.
#	CLeff converted to 19 l/hr/kg; KM converted to 2.9 mg/l in blood
#	However, uncertainty in CLeff is large (values in cytosol
#	~100-fold larger).  Moreover, Green et al. 1997 reported 
#	DCVG formation in cytosol that was ~30,000-fold smaller 
#	than Lash et al. (1998) in cytosol, which would be a VMax 
#	~300-fold smaller than Lash et al. (1998) in hepatocytes.
#	Uncertainty in KM appears smaller (~4-fold)
# 	CLC: GM = 19., GSD = 100; KM: GM = 2.9., GSD = 4.
#	In addition, at a single concentration, the variability
#	in human liver cytosol samples had a GSD=1.3.
# For the human kidney, the kidney cytosol values are used, with the same
#	uncertainty as for the liver.  Note that the DCVG formation rates
#	in rat kidney cortical cells and rat cytosol are quite similar 
#	(see below).
#	CLC: GM = 230., GSD = 100; KM: GM = 2.7., GSD = 4.
# Rat and mouse in vitro data from Lash et al. 1995,1998 define rat and mouse
#	priors.  However, rats and mice are only assayed at 1 and 2 mM
#	providing only a bound on VMax and very little data on KM.
#			Rate at 2 mM	Equivalent	CLeff
#					blood conc.	at 2 mM
#			(nmol/min/	(mM)		(ml/min/
#			g tissue)			g tissue)
#                       ----------------------------------------------
# Rat 	hepatocytes:	4.4~16		2.0		0.0022~0.0079
#	liver cytosol:	8.0~12		1.7~2.0		0.0040~0.0072
#	kidney cells:	0.79~1.1	2.2		0.00036~0.00049
#	kidney cytosol:	0.53~0.75	1.1~2.0		0.00027~0.00068
# Mouse	liver cytosol:	36~40		1.1~2.0		0.018~0.036
#	kidney cytosol:	6.2~9.3		0.91~2.0	0.0031~0.0102
# 
# In most cases, rates were increased over the same sex/species at 1 mM,
# 	indicating VMax has not yet been reached.  The values between cells
# 	and cytosol are more much consistent that in the human data.
# 	These data therefore put a lower bound on VMax and a lower bound
# 	on CLC.  To account for in vitro-in vivo uncertainty, the lower
#	bound of the prior distribution is set 100-fold below the central
#	estimate of the measurements here.  In addition, Green et al.
#	(1997) found values 100-fold smaller than Lash et al. 1995, 1998.
#	Therefore diffuse prior distributions set to 1e-2~1e4.
# Rat liver: Bound on VMax of 4.4~16, with GM of 8.4.  Converting to 
#	mg/hr/kg tissue (* 131.4 ng/nmol * 60 min/hr * 1e3 g/kg / 1e6 mg/ng)
#	gives a central estimate of 66. mg/hr/kg tissue.  Bound on CL of
#	0.0022~0.0079, with GM of 0.0042.  Converting to l/hr/kg tissue
#	(* 60 min/hr) gives 0.25 l/hr/kg tissue.
# Rat kidney: Bound on VMax of 0.53~1.1, with GM of 0.76.  Converting
#	to mg/hr/kg tissue gives a central estimate of 6.0 mg/hr/kg.
#	Bound on CL of 0.00027~0.00068, with GM of 0.00043.  Converting 
#	to l/hr/kg tissue gives 0.026 l/hr/kg tissue.
# Mouse liver: Bound on VMax of 36~40, with GM of 38.  Converting
#	to mg/hr/kg tissue gives a central estimate of 300. mg/hr/kg.
#	Bound on CL of 0.018~0.036, with GM of 0.025.  Converting 
#	to l/hr/kg tissue gives 1.53 l/hr/kg tissue.
# Mouse kidney: Bound on VMax of 6.2~9.3, with GM of 7.6.  Converting
#	to mg/hr/kg tissue gives a central estimate of 60. mg/hr/kg.
#	Bound on CL of 0.0031~0.0102, with GM of 0.0056.  Converting 
#	to l/hr/kg tissue gives 0.34 l/hr/kg tissue.

# apply interstrain scaling to both liver and kidney
	VMaxDCVG = exp(lnISConj) * VLiv*(Species == 3 ? (300.*exp(lnVMaxDCVGC)) : (Species == 2 ? (66.*exp(lnVMaxDCVGC)) : (2.9*19.*exp(lnClDCVGC+lnKMDCVGC))));
        KMDCVG = (Species == 3 ? (VMaxDCVG/(VLiv*1.53*exp(lnClDCVGC))) : (Species == 2 ? (VMaxDCVG/(VLiv*0.25*exp(lnClDCVGC))) : 2.9*exp(lnKMDCVGC)));
	VMaxKidDCVG = exp(lnISConj) * VKid*(Species == 3 ? (60.*exp(lnVMaxKidDCVGC)) : (Species == 2 ? (6.0*exp(lnVMaxKidDCVGC)) : (2.7*230.*exp(lnClKidDCVGC+lnKMKidDCVGC))));
        KMKidDCVG = (Species == 3 ? (VMaxKidDCVG/(VKid*0.34*exp(lnClKidDCVGC))) : (Species == 2 ? (VMaxKidDCVG/(VKid*0.026*exp(lnClKidDCVGC))) : 2.7*exp(lnKMKidDCVGC)));
    
# TCE Metabolism Constants for Chloral Kinetics in lung (mg/hr)

#	in microsomal preparations (nmol/min/mg protein) at ~1 mM.
#	For humans, used detection limit of 0.03
#	Additional scaling by lung/liver weight ratio
#	from Brown et al. Table 21 (mouse and rat) or 
#	ICRP Pub 89 Table 2.8 (Human female and male)
#	Uncertainty ~ 3-fold truncated at 3 GSD
# VMaxClara = exp(lnVMaxlungLivC) * VMax * #(v2.0)
#	(Species == 3 ? (1.03/1.87*0.7/5.5):(Species == 2 ? (0.08/0.82*0.5/3.4):(0.03/0.33*(Male == 0 ? (0.42/1.4) : (0.5/1.8)))));
   #KMClara = exp(lnKMClara);
      VMaxClaraTCOH = exp(lnVMaxLngTCOHC) * VMax * #(v2.1)
	(Species == 3 ? (1.03/1.87*0.7/5.5):(Species == 2 ? (0.08/0.82*0.5/3.4):(0.03/0.33*(Male == 0 ? (0.42/1.4) : (0.5/1.8)))));
   KMClaraTCOH = exp(lnKMClaraTCOH); #(v2.1)
      VMaxClaraTCA = exp(lnVMaxLngTCAC) * VMax * #(v2.1)
	(Species == 3 ? (1.03/1.87*0.7/5.5):(Species == 2 ? (0.08/0.82*0.5/3.4):(0.03/0.33*(Male == 0 ? (0.42/1.4) : (0.5/1.8)))));
   KMClaraTCA = exp(lnKMClaraTCA); #(v2.1)
   
# TCOH Metabolism Constants (mg/hr)
	# No in vitro data.  So use diffuse priors of 
	# 	1e-4 to 1e4 mg/hr/kg^0.75 for VMax 
	#		(4e-5 to 4000 mg/hr for rat),
	# 	1e-4 to 1e4 mg/l for KM,
	# 	and 1e-5 to 1e3 l/hr/kg^0.75 for Cl
	#		(2e-4 to 2.4e4 l/hr for human)
	VMaxTCOH1 = BW75* #(v2.1)
		(Species == 3 ? (exp(lnVMaxTCOHC)) : (Species == 2 ? (exp(lnVMaxTCOHC)) : (exp(lnClTCOHC+lnKMTCOH))));
	#KMTCOH = exp(lnKMTCOH);
	VMaxTCOH2 = BW75* #(v2.1)
		(Species == 3 ? (exp(lnVMaxGlucC)) : (Species == 2 ? (exp(lnVMaxGlucC)) : (exp(lnClGlucC+lnKMGluc))));
	KMGluc = exp(lnKMGluc);
	# No in vitro data.  So use diffuse priors of 
	# 	1e-5 to 1e3 kg^0.25/hr (3.5e-6/hr to 3.5e2/hr for human) 
	kMetLivTCOH = exp(lnkMetLivTCOHC) / BW25;

# TCA kinetic parameters
	# Central estimate based on GFR clearance per unit body weight
	#	10.0, 8.7, 1.8 ml/min/kg for mouse, rat, human
	#	(= 0.6, 0.522, 0.108 l/hr/kg) from Lin 1995.
	#	= CL_GFR / BW (BW=0.02 for mouse, 0.265 for rat, 70 for human)
	#	kUrn = CL_GFR / VPlas
	#	Diffuse prior with uncertainty of up,down 100-fold 
	# add interstrain variability
	kUrnTCA = exp(lnISkTCA) * exp(lnkUrnTCAC) * BW / VPlas *
		(Species == 3 ? 0.6 : (Species == 2 ? 0.522 : 0.108));
	# No in vitro data.  So use diffuse priors of 
	# 	1e-4 to 1e2 /hr/kg^0.25 (0.3/hr to 35/hr for human) 
	kMetLivTCA = exp(lnISkTCA) * exp(lnkMetLivTCAC) / BW25;

# TCOG kinetic parameters
	# No in vitro data.  So use diffuse priors of 
	# 	1e-4 to 1e2 /hr/kg^0.25 (0.3/hr to 35/hr for human) 
	kBilTCOG = exp(lnkBilTCOGC) / BW25;
        kEHR = exp(lnkEHRC) / BW25;
	# Central estimate based on GFR clearance per unit body weight
	#	10.0, 8.7, 1.8 ml/min/kg for mouse, rat, human
	#	(= 0.6, 0.522, 0.108 l/hr/kg) from Lin 1995.
	#	= CL_GFR / BW (BW=0.02 for mouse, 0.265 for rat, 70 for human)
	#	kUrn = CL_GFR / VBld
	#	Diffuse prior with Uncertainty of up,down 1000-fold 
	kUrnTCOG = exp(lnkUrnTCOGC) * BW / (VBodTCOH * PBodTCOG) *
		(Species == 3 ? 0.6 : (Species == 2 ? 0.522 : 0.108));

# DCA Kinetics (/hr)#(v2.0)
        # add interstrain variability
	kClearDCA = exp(lnISkDCA) * exp(lnkClearDCAC) / BW25;#(v2.0)
	kDCAcen_per = exp(lnkDCAcen_perC) / BW25;#(v2.0)
	kDCAper_cen = exp(lnkDCAper_cenC) / BW25;#(v2.0)

# CC data initialization
	Rodents = (CC > 0 ? NRodents : 0.0); # Closed chamber simulation
	VCh = (CC > 0 ? VChC - (Rodents * BW) : 1.0); 
		# Calculate net chamber volume
	kLoss = (CC > 0 ? exp(lnkLossC) : 0.0);

#******************************************************************************
#***                  State Variable Initialization and Scaling             ***
#******************************************************************************
# NOTE: All State Variables are set to 0 initially, unless re-initialized here

	ACh = (CC * VCh * MWTCE) / 24450.0;    # Initial amount in chamber

#printf("ClC=%lf\n KM=%lf\n kDCVGC=%lf\n FracTCA=%lf\n ClClaraC=%lf\n KMClara=%lf\n kDissoc=%lf\n BMax=%lf\n ClTCOHC=%lf\n KMTCOH=%lf\n ClGlucC=%lf\n KMGluc=%lf\n kElimDCVCC=%lf\n kTSD=%lf\n kAD=%lf\n kBileC=%lf\n kEHRC=%lf\n kUrnTCAC=%lf\n kUrnTCOGC=%lf\n TCAPlas=%lf\n VPR=%lf\n lnQCC=%lf\n QFatC=%lf\n QGutC=%lf\n QLivC=%lf\n QSlwC=%lf\n QTBC=%lf\n VFatBldC=%lf\n VFatC=%lf\n VGutC=%lf\n VLivC=%lf\n VRapC=%lf\n VTBC=%lf\n VBldC=%lf\n FracPlas=%lf\n VBodC=%lf\n VDTCOHC=%lf\n PB=%lf\n PFat=%lf\n PGut=%lf\n PLiv=%lf\n PRap=%lf\n PSlw=%lf\n PTB=%lf\n PAFatC1=%lf\n PAFatC2=%lf\n PBodTCA=%lf\n PLivTCA=%lf\n", #(v2.0)
#ClC, KM, kDCVGC, FracTCA, ClClaraC, KMClara, kDissoc, BMax, ClTCOHC, KMTCOH, ClGlucC, KMGluc, kElimDCVCC, kTSD, kAD, kBileC, kEHRC, kUrnTCAC, kUrnTCOGC, TCAPlas, VPR, lnQCC, QFatC, QGutC, QLivC, QSlwC, QTBC, VFatBldC, VFatC, VGutC, VLivC, VRapC, VTBC, VBldC, FracPlas, VBodC, VDTCOHC, PB, PFat, PGut, PLiv, PRap, PSlw, PTB, PAFatC1, PAFatC2, PBodTCA, PLivTCA);#(v2.0)
};

###################### End of Initialization ########################

Dynamics{
  
  #******************************************************************************
  #***                       Dynamic physiological parameter scaling          ***
  #******************************************************************************
  #******************************************************************************
  
  # QP uses QPmeas if value is > 0, otherwise uses sampled value 
  QP = (QPmeas > 0 ? QPmeas : QPsamp);
  
  #(v1.2) Scale diffusion flow rate
  DResp = DResptmp * QP;
  
  # QCnow uses QPmeas/VPR if QPmeas > 0, otherwise uses sampled value 
  QCnow = (QPmeas > 0 ? QPmeas/VPR : QC);
  
  # Blood Flows to Tissues (L/hr)
  QFat = (QFatCtmp) * QCnow; 
  QGut = (QGutCtmp) * QCnow; 
  QLiv = (QLivCtmp) * QCnow; 
  QBra = (QBraCtmp) * QCnow; #(v2.1)
  QSlw = (QSlwCtmp) * QCnow; 
  QLng = (QLngCtmp) * QCnow; #(v2.1)
  QKid = (QKidCtmp) * QCnow; 
  QGutLiv = QGut + QLiv; 
  QRap = QCnow - QFat - QGut - QLiv - QSlw - QKid - QBra - QLng; #(v2.1) 
  QBod = QCnow - QGutLiv - QBra - QLng - QLng - Kid
  
  # Plasma Flows to Tissues (L/hr)
  QCPlas = FracPlas * QCnow;  
  QBodPlas = FracPlas * QBod; 
  QGutLivPlas = FracPlas * QGutLiv; 
  
  #******************************************************************************
  #***                  Exposure and Absorption calculations                  ***
  #******************************************************************************
  #******************************************************************************
  
  #### TCE DOSING
  ## IV route
  kIV = (IVDose * BW) / TChng;  # IV infusion rate (mg/hr)
  kIA = (IADose * BW) / TChng;	 # IA infusion rate (mg/hr) 
  kPV = (PVDose * BW) / TChng; 	# PV infusion rate (mg/hr) 
  kStom = (PDose * BW) / TChng; # PO dose rate (into stomach) (mg/hr) 
  
  ## Oral route
  # Amount of TCE in stomach -- for oral dosing only (mg)
  dt(AStom) = kStom - AStom * (kAS + kTSD);
  
  # Amount of TCE in duodenum -- for oral dosing only (mg)
  dt(ADuod) = (kTSD * AStom) - (kAD + kTD) * ADuod;
  
  # Rate of absorption from drinking water
  kDrink = (Drink * BW) / 24.0; #Ingestion rate via drinking water (mg/hr)
  
  # Total rate of absorption including gavage and drinking water
  RAO = kDrink + (kAS * AStom) + (kAD * ADuod);
  
  ## Inhalation route
  CInh = (CC > 0 ? ACh/VCh : Conc*MWTCE/24450.0); # in mg/l
  
  #### TCA Dosing
  kIVTCA = (IVDoseTCA * BW) / TChng;  # TCA IV infusion rate (mg/hr) 
  kStomTCA =  TCABgd * BW / 24 + #(v2.0) TCA background in mg/kg/d
    (PODoseTCA * BW) / TChng; # TCA PO dose rate into stomach
  dt(AStomTCA) = kStomTCA - AStomTCA * kASTCA;
  kPOTCA = AStomTCA * kASTCA;  # TCA oral absorption rate (mg/hr) 
  
  #### TCOH Dosing
  kIVTCOH = (IVDoseTCOH * BW) / TChng;#TCOH IV infusion rate (mg/hr) 
  kStomTCOH = (PODoseTCOH * BW) / TChng; # TCOH PO dose rate into stomach
  dt(AStomTCOH) = kStomTCOH - AStomTCOH * kASTCOH;
  kPOTCOH = AStomTCOH * kASTCOH;# TCOH oral absorption rate (mg/hr) 
  
  #******************************************************************************
  #***                       TCE Model                                        ***
  #******************************************************************************
  #****Blood (venous)************************************************************
  # TCE Tissue Concentrations (mg/L)
  CRap = ARap/VRap; 
  CSlw = ASlw/VSlw; 
  CFat = AFat/VFat; 
  CGut = AGut/VGut; 
  CLiv = ALiv/VLiv;
  CBra = ABra/VBra; #(v2.1)
  CKid = AKid/VKid; 
  CVen = ABld/VBld; 
  CResp = AResp/VRespEff;
 
  # Venous Concentrations (mg/L)
  CVRap = CRap / PRap;
  CVSlw = CSlw / PSlw;
  CVFat = CFat / PFat;  
  CVGut = CGut / PGut;
  CVLiv = CLiv / PLiv;
  CVBra = CBra / PBra;  #(v2.1)
  CVKid = CKid / PKid;
  CInhResp = AInhResp/VRespLum;
  CExhResp = AExhResp/VRespLum;
  # Dynamics for blood
  QM = QP/0.7;	# Minute-volume
  
  # Rate of TCE oxidation by P450 to TCA in lung (mg/hr) #v(2.1)
  RAMetLng1 = VMaxClara1 * CResp/(KMClara1 + CResp); #(v2.1)
  # Rate of TCE oxidation by P450 to TCOH in lung (mg/hr) #v(2.1)
  RAMetLng2 = VMaxClara2 * CResp/(KMClara2 + CResp); #(v2.1)
   # Rate of TCE oxidation by P450 to TCA in liver (mg/hr) #v(2.1)
  RAMetLiv1 = (VMaxLiv1 * CVLiv) / (KMLiv1 + CVLiv); 
  # Rate of TCE oxidation by P450 to TCOH in liver (mg/hr) #v(2.1)
  RAMetLiv2 = (VMaxLiv2 * CVLiv) / (KMLiv2 + CVLiv); 
  # Rate of TCE metabolized to DCVG in liver (mg)  #v(2.1)
  RAMetLiv3 = (VMaxLiv3 * CVLiv) / (KMLiv3 + CVLiv); #(v2.1)
  # Rate of TCE metabolized to DCVG in kidney (mg) #(v2.1) 
  RAMetKid = (VMaxKid * CVKid) / (KMKid + CVKid); 
 
  # Amount of TCE in the respiratory tract tissue 
  dt(AResp) = (DResp*(CInhResp + CExhResp - 2*CResp) - RAMetLng1 - RAMetLng2); #(v2.1)   
  CArt_tmp = (QCnow*CVen + QP*CInhResp)/(QCnow + (QP/PB));
  
  # Amount of TCE in the respiratory lumen during exhalation
  dt(AExhResp) = (QM*(CInhResp-CExhResp) + QP*(CArt_tmp/PB-CInhResp) + 
                    DResp*(CResp-CExhResp));
  CMixExh = (CExhResp > 0 ? CExhResp : 1e-15); # mixed exhaled breath
  ExhFactor_den = (QP * CArt_tmp / PB + (QM-QP)*CInhResp);
  ExhFactor = (ExhFactor_den > 0) ? (QM * CMixExh / ExhFactor_den) : 1;

  #	desorption/metabolism in respiratory tissue)
  CAlv = CArt_tmp / PB * ExhFactor;
  # Concentration in arterial blood entering circulation (mg/L) 
  CArt = CArt_tmp + kIA/QCnow;	# add inter-arterial dose

  dt(ACh) = (Rodents * (QM * CMixExh - QM * ACh/VCh)) - (kLoss * ACh);
  dt(ABld) = (QFat*CVFat + QGutLiv*CVLiv + QSlw*CVSlw + QRap*CVRap + QBra*CVBra + QKid*CVKid + kIV) - CVen * QCnow; #(v2.1)
  dt(AInhResp) = (QM*CInh + DResp*(CResp-CInhResp) - QM*CInhResp);
  dt(ARap) = QRap * (CArt - CVRap);
  dt(ASlw) = QSlw * (CArt - CVSlw);
  dt(AFat) = QFat*(CArt - CVFat);
  dt(ABra) = QBra*(CArt - CVBra); #v(2.1)
  dt(AGut) = (QGut * (CArt - CVGut)) + RAO;
  dt(ALiv) = (QLiv * (CArt - CVLiv)) + (QGut * (CVGut - CVLiv)) 
  - RAMetLiv1 - RAMetLiv2 - RAMetLiv3 + kPV; # add PV dose #(v2.1)
  dt(AKid) = (QKid * (CArt - CVKid)) - RAMetKid;
  
  #******************************************************************************
  #***                       TCOH Sub-model                                   ***
  #******************************************************************************
  #******************************************************************************
  #**** Blood (venous=arterial) *************************************************
  # Venous Concentrations (mg/L)
  CVBodTCOH = ABodTCOH / VBodTCOH / PBodTCOH;
  CVLivTCOH = ALivTCOH / VLiv / PLivTCOH;
  CVLngTCOH = ALngTCOH / VLng / PLngTCOH; #(v2.1)
  CVKidTCOH = AKidTCOH / VKid / PKidTCOH; #(v2.1)
  CVBraTCOH = ABraTCOH / VBra / PBraTCOH; #(v2.1)
  CTCOH = (QBod * CVBodTCOH + QLiv * CVLivTCOH + QKid * CVKidTCOH + QBra * CVBraTCOH + QGutLiv * CVLivTCOH + kIVTCOH)/QCnow; #(v2.1)
  
  # Rate of TCOH to TCA (mg/hr)
  RAMetLivTCOH1 = (VMaxLivTCOH1 * CVLivTCOH) / (KMLivTCOH1 + CVLivTCOH); #(v2.1)
  # Rate of TCOH to glucuronidation (mg/hr)
  RAMetLivTCOH2 = (VMaxLivTCOH2 * CVLivTCOH) / (KMLivTCOH2 + CVLivTCOH); #(v2.1)

  # Rate of TCOH-Gluc recirculated (mg)
  RARecircTCOG = kEHR * ABilTCOG;
  # Rate of oxidation of TCOH to TCA (mg/hr)
  RAMetLngTCOH1 = (VMaxLngTCOH1 * CVLngTCOH) / (KMLngTCOH1 + CVLngTCOH); #(v2.1)
  # Amount of TCOH to glucuronidation (mg/hr)
  RAMetLngTCOH2 = (VMaxLngTCOH2 * CVLngTCOH) / (KMLngTCOH2 + CVLngTCOH); #(v2.1)

  dt(ABodTCOH) = QBod * (CTCOH - CVBodTCOH);
  dt(ABraTCOH) = QBra * (CTCOH - CVBraTCOH); #(v2.1)
  dt(AKidTCOH) = QKid * (CTCOH - CVKidTCOH); #(v2.1)
  dt(ALngTCOH) = kPOTCOH + QLng * (CTCOH - CVLngTCOH)
  + StochTCOHTCE * RAMetLng2 + StochTCOHGluc * RARecircTCOG)
  - RAMetLngTCOH1 - RAMetLngTCOH2; #(v2.1)
  dt(ALivTCOH) = kPOTCOH + QGutLiv * (CTCOH - CVLivTCOH) 
  + StochTCOHTCE * RAMetLiv2 + StochTCOHGluc * RARecircTCOG
  - RAMetLivTCOH1 - RAMetLivTCOH2 - RAMetLivTCOH3; #(v2.1)  
  
  #******************************************************************************
  #***                       TCA Sub-model                                    ***
  #******************************************************************************
  #**** Plasma ******************************************************************
  # Concentration of TCA in plasma (umoles/L)
  CPlasTCA = (APlasTCA<1.0e-15 ? 1.0e-15 : APlasTCA/VPlas); # comment out for #(v1h)
  ## CPlasTCA = (kIVTCA + (QBodPlas*CVBodTCA) + (QGutLivPlas*CVLivTCA))/QCPlas; #(v1h)
  # Concentration of free TCA in plasma in (umoles/L)
  CPlasTCAMole = (CPlasTCA / MWTCA) * 1000.0;
  a = kDissoc+BMax-CPlasTCAMole;
  b = 4.0*kDissoc*CPlasTCAMole;
  c = (b < 0.01*a*a ? b/2.0/a : sqrt(a*a+b)-a);
  CPlasTCAFreeMole = 0.5*c;
  # Concentration of free TCA in plasma (mg/L)
  CPlasTCAFree = (CPlasTCAFreeMole * MWTCA) / 1000.0;
  APlasTCAFree = CPlasTCAFree * VPlas;
  # Concentration of bound TCA in plasma (mg/L)
  CPlasTCABnd = (CPlasTCA<CPlasTCAFree ? 0 : CPlasTCA-CPlasTCAFree);
  # Concentration in body and liver
  CBodTCA = (ABodTCA<0 ? 0 : ABodTCA/VBod);
  CLivTCA = (ALivTCA<1.0e-15 ? 1.0e-15 : ALivTCA/VLiv);
  # Total concentration in venous plasma (free+bound)
  CVKidTCAFree = (CKidTCA / PKidTCA); 
  CVKidTCA = CPlasTCABnd + CVKidTCAFree;	# free in equilibrium 
  CVBraTCAFree = (CBraTCA / PBraTCA); #(v2.1)
  CVBraTCA = CPlasTCABnd + CVBraTCAFree;#(v2.1)
  CVLngTCAFree = (CLngTCA / PLngTCA);#(v2.1)
  CVLngTCA = CPlasTCABnd + CVLngTCAFree;#(v2.1)
  CVBodTCAFree = (CBodTCA / PBodTCA);	#(v2.1)
  CVBodTCA = CPlasTCABnd + CVBodTCAFree; #(v2.1)
  CVLivTCAFree = (CLivTCA / PLivTCA); 
  CVLivTCA = CPlasTCABnd + CVLivTCAFree;	

  RUrnTCA = kUrnTCA * APlasTCAFree; 
  
  # Dynamics for amount of total (free+bound) TCA in plasma (mg)
  dt(APlasTCA) = kIVTCA + (QBodPlas*CVBodTCA) + (QKidPlas*CVKidTCA) 
  + (QBraPlas*CVBraTCA) + (QLngPlas*CVLngTCA) + (QGutLivPlas*CVLivTCA) 
  - (QCPlas * CPlasTCA) - RUrnTCA; #(v2.1) 
  
  #**** Nonmetabolizing tissues  #(v2.1) ***************************************
  dt(ABodTCA) = QBodPlas * (CPlasTCAFree - CVBodTCAFree);
  dt(ABraTCA) = QBraPlas * (CPlasTCAFree - CVBraTCAFree);
  dt(AKidTCA) = QKidPlas * (CPlasTCAFree - CVKidTCAFree);
  
  #**** Lung *******************************************************************
  RAMetLngTCA = kMetLngTCA * ALngTCA;
  dt(ALngTCA) = kPOTCA + QLngPlas * (CPlasTCAFree - CVLngTCAFree) 
  + StochTCATCE * RAMetLng1 + StochTCATCOH * RAMetLngTCOH1
  - RAMetLngTCA; #(v2.1)

  #**** Liver *******************************************************************
  RAMetLivTCA = kMetLivTCA * ALivTCA;
  dt(ALivTCA) = kPOTCA + QGutLivPlas*(CPlasTCAFree - CVLivTCAFree) 
  + StochTCATCE * RAMetLiv1 + StochTCATCOH * RAMetLivTCOH1
  - RAMetLivTCA; #(v2.1)

  #**** Urine *******************************************************************
  dt(AUrnTCA) = RUrnTCA;
  dt(AUrnTCA_sat) = TCAUrnSat*(1-UrnMissing)* RUrnTCA; 
  dt(AUrnTCA_col) = (1-TCAUrnSat)*(1-UrnMissing)*RUrnTCA;
  
  #******************************************************************************
  #***                       TCOG Sub-model                                   ***
  #******************************************************************************
  #**** Blood (venous=arterial) *************************************************
  # Venous Concentrations (mg/L)
  CVBodTCOG = ABodTCOG / VBodOX / PBodTCOG;
  CVLivTCOG = ALivTCOG / VLiv / PLivTCOG;
  CVLngTCOG = ALngTCOG / VLng / PLngTCOG; #(v2.1)
  CVBraTCOG = ABraTCOG / VBra / PBraTCOG; #(v2.1)
  CVKidTCOG = AKidTCOG / VKid / PKidTCOG; #(v2.1)
  CTCOG = (QBod * CVBodTCOG + QLng * CVLngTCOG + QBra * CVBraTCOG + QKid * CVKidTCOG + QGutLiv * CVLivTCOG)/QCnow; #(v2.1)
 
  RBilTCOG = kBilTCOG * ALivTCOG;
  RUrnTCOG = kUrnTCOG * AKidTCOG; 
  
  dt(ALivTCOG) = QGutLiv * (CTCOG - CVLivTCOG) + (StochGlucTCOH * RAMetTCOH2) - RBilTCOG; 
  dt(ABodTCOG) = QBod * (CTCOG - CVBodTCOG) - RUrnTCOG;
  dt(ABraTCOG) = QBra * (CTCOG - CVBraTCOG); #(v2.1)
  dt(ALngTCOG) = QLng * (CTCOG - CVLngTCOG) + (StochGlucTCOH * RAMetLngTCOH2); #(v2.1)
  dt(AKidTCOG) = QKid * (CTCOG - CVKidTCOG) - RUrnTCOG;
  dt(ABilTCOG) = RBilTCOG - RARecircTCOG;
  dt(AUrnTCOG) = RUrnTCOG;
  dt(AUrnTCOG_sat) = TCOGUrnSat*(1-UrnMissing)*RUrnTCOG; 
  dt(AUrnTCOG_col) = (1-TCOGUrnSat)*(1-UrnMissing)*RUrnTCOG;
  
  #******************************************************************************
  #***                       DCA Sub-model                                    ***
  #******************************************************************************
  #******************************************************************************
  # Concentration of DCA in blood (in mmoles/l)
    CDCAmol = ADCAcen / MWDCA / VDCAcen;
  # Amount of DCA in central compartment (mg)
  dt(ADCAcen) = DCABgd * BW / 24 + #(v2.0) DCA background in mg/kg/d
    StochDCATCE * (RAMetLivTCA+RAMetLngTCA) - (kClearDCAcen * ADCAcen) - #(v2.1)
    kDCAcen_per * ADCAcen + kDCAper_cen * ADCAper; 
  # Amount of DCA in peripheral compartment (mg)
  dt(ADCAper) = kDCAcen_per * ADCAcen - kDCAper_cen * ADCAper;

  #******************************************************************************
  #***                       DCVG Sub-model      #(v2.1)                      ***
  #******************************************************************************
  #**** Blood (venous=arterial) *************************************************
  # Venous Concentrations (mg/L)
  CVBodDCVG = ABodDCVG / VBodGSH / PBodDCVG;
  CVLivDCVG = ALivDCVG / VLiv / PLivDCVG;
  CVKidDCVG = AKidDCVG / VKid / PKidDCVG; 
  CVBraDCVG = ABraDCVG / VBra / PBraDCVG; #(v2.1) 
  CDCVG = (QBod * CVBodDCVG + QLiv * CVLivDCVG + QKid * CVKidDCVG + QBra * CVBraDCVG + QGutLiv * CVLivDCVG)/QCnow; #(v2.1)
  
  RAMetKidDCVG = (VMaxKidDCVG * CVKidDCVG) / (KMKidDCVG + CVKidDCVG); 
  RAMetLivDCVG = (VMaxLivDCVG * CVLivDCVG) / (KMLivDCVG + CVLivDCVG); 

  dt(ABodDCVG) = QBod * (CDCVG - CVBodTDCVG);
  dt(ABraDCVG) = QBra * (CDCVG - CVBraDCVG); 
  dt(ALivDCVG) = QGutLiv * (CDCVG - CVLivDCVG) + StochDCVGTCE * RAMet3 - RAMetLivDCVG; #(v2.1)
  dt(AKidDCVG) = QKid * (CDCVG - CVKidDCVG) + StochDCVGTCE * RAMetKid - RAMetKidDCVG; #(v2.1)
  
  #******************************************************************************
  #***                       DCVC Sub-model      (v2.1)                       ***
  #******************************************************************************
  #**** Blood (venous=arterial) *************************************************
  # Venous Concentrations (mg/L)
  CVBodDCVC = ABodDCVC / VBodGSH / PBodDCVC;
  CVLivDCVC = ALivDCVC / VLiv / PLivDCVC;
  CVKidDCVC = AKidDCVC / VKid / PKidDCVC; 
  CVBraDCVC = ABraDCVC / VBra / PBraDCVC; #(v2.1)
  CDCVC = (QBod * CVBodDCVC + QKid * CVKidDCVC + QBra * CVBraDCVC + QGutLiv * CVLivDCVG)/QCnow; #(v2.1)

  # Rate of metabolized of DCVC to NADCVC (mg/hr)
  RAMetLivDCVC = (VMaxLivDCVC * CVLivDCVC) / (KMLivDCVC + CVLivDCVC); 
  # Rate of Mercapturate of DCVC to NADCVC (mg/hour)	
  RAMetKidDCVC1 = (VMaxKidDCVC * CVKidDCVC)/(KMKidDCVC + CVKidDCVC);
  # Rate of Bio-activation of DCVC (mg/hour)
  RAMetKidDCVC2 = kMetKidDCVC * AKidDCVC;
  
  dt(ABodDCVC) = QBod * (CDCVC - CVBodDCVC);
  dt(ABraDCVC) = QBra * (CDCVC - CVBraDCVC); 
  dt(ALivDCVC) = QGutLiv * (CDCVC - CVLivDCVC) + StochDCVCDCVG * RAMetDCVC - RAMetDCVC; #(v2.1)
  dt(AKidDCVC) = QKid × (CDCVC - CVKidDCVC) + StochDCVCDCVG * RAMetKidDCVG - RAMetKidDCVC1 - RAMetKidDCVC2;

  #******************************************************************************
  #***                       NAcDCVC Sub-model   #(v2.1)                      ***
  #******************************************************************************
  #**** Blood (venous=arterial) *************************************************
  # Venous Concentrations (mg/L)
  CVBodNADCVC = ABodNADCVC / VBodGSH / PBodNADCVC;
  CVLivNADCVC = ALivNADCVC / VLiv / PLivNADCVC;
  CVKidNADCVC = AKidNADCVC / VKid / PKidNADCVC; 
  CVBraNADCVC = ABraNADCVC / VBra / PBraNADCVC; 
  CNADCVC = (QBod * CVBodNADCVC + QKid * CVKidNADCVC + QBra * CVBraNADCVCC + QGutLiv * CVLivNADCVC)/QCnow; 

  RUrnNADCVC = kUrnNADCVC * AKidNADCVC;
  
  dt(ABodNADCVC) = QBod * (CNADCVC - CVBodNADCVC);
  dt(ABraNADCVC) = QBra * (CNADCVC - CVBraNADCVC); 
  dt(ALivNADCVC) = QLiv * (CNADCVC - CVLivNADCVC) + StochN  * RAMetDCVC;
  dt(AKidNADCVC)= QKid × (CNADCVC – CVKidNADCVC) + StochN * RAMetKidDCVC1 - RUrnNADCVC;
  dt(AUrnNADCVC) = RUrnNADCVC
  dt(AUrnNADCVC_sat) = NADCVCUrnSat*(1-UrnMissing)*RUrnNADCVC; 
  dt(AUrnNADCVC_col) = (1-NADCVCUrnSat)*(1-UrnMissing)*RUrnNADCVC;

  #******************************************************************************
  #***                       Total Mass Balance                               ***
  #******************************************************************************
  #**** Mass Balance for TCE ****************************************************

  RInhDose = QM * CInh;
  dt(InhDose) = RInhDose;

  RAExh = QM * CMixExh;
  dt(AExh) = RAExh;
 
  #******************************************************************************
  #***                       Dynamic Outputs                                  ***
  #******************************************************************************

  #******************************************************************************
  # Amount exhaled during exposure (mg)
  dt(AExhExp) = (CInh > 0 ? RAExh : 0); 
  
};
################ End of Dynamics ####################################

CalcOutputs{
 # TCE Tissue Concentrations (mg/L)
  CRap = ARap/VRap; 
  CSlw = ASlw/VSlw; 
  CFat = AFat/VFat; 
  CGut = AGut/VGut; 
  CLiv = ALiv/VLiv;
  CBra = ABra/VBra; #(v2.1)
  CKid = AKid/VKid; 
  CVen = ABld/VBld; 
  CResp = AResp/VRespEff;
# TCOH
	CTCOH = (CTCOH < 1.0e-15 ? 1.0e-15 : CTCOH);
	CBodTCOH = ABodTCOH/VBodOX;
	CKidTCOH = (AKidTCOH < 1.0e-15 ? 1.0e-15 : AKidTCOH/VKidTCOH);#(v2.1)
	CLivTCOH = (ALivTCOH < 1.0e-15 ? 1.0e-15 : ALivTCOH/VLivTCOH);#(v2.1)
	CLngTCOH = (ALngTCOH < 1.0e-15 ? 1.0e-15 : ALngTCOH/VLngTCOH);#(v2.1)
	CBraTCOH = (ABraTCOH < 1.0e-15 ? 1.0e-15 : ABraTCOH/VBraTCOH);#(v2.1)
	
# TCA
	CPlasTCA = (CPlasTCA < 1.0e-15 ? 1.0e-15 : CPlasTCA);
	CBldTCA = CPlasTCA*TCAPlas;
	CBodTCA = (CBodTCA < 1.0e-15 ? 1.0e-15 : CBodTCA);
	CLivTCA = (CLivTCA < 1.0e-15 ? 1.0e-15 : CLivTCA); #(v2.1)
	CKidTCA = (CKidTCA < 1.0e-15 ? 1.0e-15 : CKidTCA); #(v2.1)
	CBraTCA = (CBraTCA < 1.0e-15 ? 1.0e-15 : CBraTCA); #(v2.1)
	CLngTCA = (CLngTCA < 1.0e-15 ? 1.0e-15 : CLngTCA); #(v2.1)
	zAUrnTCA = (AUrnTCA < 1.0e-15 ? 1.0e-15 : AUrnTCA);
	zAUrnTCA_sat = (AUrnTCA_sat < 1.0e-15 ? 1.0e-15 : AUrnTCA_sat);
	zAUrnTCA_col = (AUrnTCA_col < 1.0e-15 ? 1.0e-15 : AUrnTCA_col);
	
# TCOG
	zABilTCOG = (ABilTCOG < 1.0e-15 ? 1.0e-15 : ABilTCOG);
	zABilTCOG = (ABilTCOG < 1.0e-15 ? 1.0e-15 : ABilTCOG);
	CTCOG = (CTCOG < 1.0e-15 ? 1.0e-15 : CTCOG); 
	CLivTCOG = (CLivTCOG < 1.0e-15 ? 1.0e-15 : StochTCOHGluc*ALivTCOG/VLiv); #(v2.1)
	CKidTCOG = (CKidTCOG < 1.0e-15 ? 1.0e-15 : StochTCOHGluc*AKidTCOG/VKid); #(v2.1)
	CBraTCOG = (CBraTCOG < 1.0e-15 ? 1.0e-15 : StochTCOHGluc*ABraTCOG/VBra); #(v2.1)
	CBodTCOG = (ABodTCOG < 1.0e-15 ? 1.0e-15 : StochTCOHGluc*ABodTCOG/VBodTCOG); 
	CKidTCOG = CBodTCOG;
	CLivTCOG = (ALivTCOG < 1.0e-15 ? 1.0e-15 : StochTCOHGluc*ALivTCOG/VLiv); 
	CLngTCOG = (ALngTCOG < 1.0e-15 ? 1.0e-15 : StochTCOHGluc*ALngTCOG/VLng); #(v2.1)
	AUrnTCOG = (AUrnTCOG < 1.0e-15 ? 1.0e-15 : StochTCOHGluc*AUrnTCOG);
	AUrnTCOG_sat = (AUrnTCOG_sat < 1.0e-15 ? 1.0e-15 : StochTCOHGluc*AUrnTCOG_sat);
	AUrnTCOG_collect = (AUrnTCOG_collect < 1.0e-15 ? 1.0e-15 : StochTCOHGluc*AUrnTCOG_collect);
	
# DCA #(v2.0)
	CDCAmol = (CDCAmol < 1.0e-15 ? 1.0e-15 : CDCAmol);#(v2.0)
	CDCAmol0 = CDCAmol;#(v2.0)
	CDCA_NDtmp = CDFNormal(3*(1-CDCAmol/CDCAmolLD)); #(v2.0)
	CDCA_ND = ( CDCA_NDtmp < 1.0 ? ( CDCA_NDtmp >= 1e-100 ? -log(CDCA_NDtmp) : -log(1e-100)) : 1e-100 );#(v2.0)
	
# DCVG #(v2.1)
 CDCVG = (CDCVG < 1.0e-15 ? 1.0e-15 : CDCVG);
	CBodDCVG = (CBodDCVG < 1.0e-15 ? 1.0e-15 : CBodDCVG);
 CLivDCVG =(CLivDCVG < 1.0e-15 ? 1.0e-15 : CLivDCVG);
 CKidDCVG = (CKidDCVG < 1.0e-15 ? 1.0e-15 : CKidDCVG);
 CBraDCVG =(CBraDCVG < 1.0e-15 ? 1.0e-15 : CBraDCVG);
	CDCVGmol = (CDCVGmol < 1.0e-15 ? 1.0e-15 : CDCVGmol);
	CDCVGmol0 = CDCVGmol;
	CDCVG_NDtmp = CDFNormal(3*(1-CDCVGmol/CDCVGmolLD)); 
	CDCVG_ND = ( CDCVG_NDtmp < 1.0 ? ( CDCVG_NDtmp >= 1e-100 ? -log(CDCVG_NDtmp) : -log(1e-100)) : 1e-100 );

# DCVC #(v2.1)
 CDCVC = (CDCVC < 1.0e-15 ? 1.0e-15 : CDCVC);
	CBodDCVC = (CBodDCVC < 1.0e-15 ? 1.0e-15 : CBodDCVC);
 CLivDCVC =(CLivDCVC < 1.0e-15 ? 1.0e-15 : CLivDCVC);
 CKidDCVC = (CKidDCVC < 1.0e-15 ? 1.0e-15 : CKidDCVC);
 CBraDCVC =(CBraDCVC < 1.0e-15 ? 1.0e-15 : CBraDCVC);
	CDCVCmol = (CDCVCmol < 1.0e-15 ? 1.0e-15 : CDCVCmol);#(v2.0)
	CDCVCmol0 = CDCVCmol;#(v2.0)
	CDCVC_NDtmp = CDFNormal(3*(1-CDCVCmol/CDCVCmolLD)); #(v2.0)
	CDCVC_ND = ( CDCVC_NDtmp < 1.0 ? ( CDCVC_NDtmp >= 1e-100 ? -log(CDCVC_NDtmp) : -log(1e-100)) : 1e-100 );#(v2.0)
	   # 
	AUrnTCTotMole = zAUrnTCA / MWTCA + AUrnTCOGTCOH / MWTCOH;
	
	#NAcDCVC #(v2.1)
	CNADCVC = (CNADCVC < 1.0e-15 ? 1.0e-15 : CNADCVC);
	CBodNADCVC = (CBodNADCVC < 1.0e-15 ? 1.0e-15 : CBodNADCVC);
 CLivNADCVC =(CLivNADCVC < 1.0e-15 ? 1.0e-15 : CLivNADCVC);
 CKidNADCVC = (CKidNADCVC < 1.0e-15 ? 1.0e-15 : CKidNADCVC);
 CBraNADCVC =(CBraNADCVC < 1.0e-15 ? 1.0e-15 : CBraNADCVC);
	CNADCVCmol = (CNADCVCmol < 1.0e-15 ? 1.0e-15 : CNADCVCmol);
	CNADCVCmol0 = CNADCVCmol;
	CNADCVC_NDtmp = CDFNormal(3*(1-CDCVGmol/CDCVGmolLD)); 
	CNADCVC_ND = ( CDCVG_NDtmp < 1.0 ? ( CDCVG_NDtmp >= 1e-100 ? -log(CDCVG_NDtmp) : -log(1e-100)) : 1e-100 );
	AUrnNADCVC = (AUrnTCOG < 1.0e-15 ? 1.0e-15 : StochTCOHGluc*AUrnTCOG);
	AUrnNADCVC_sat = (AUrnTCOG_sat < 1.0e-15 ? 1.0e-15 : StochTCOHGluc*AUrnTCOG_sat);
	AUrnNADCVC_col = (AUrnTCOG_collect < 1.0e-15 ? 1.0e-15 : StochTCOHGluc*AUrnTCOG_collect);
	CVenMole = CVen / MWTCE; 
	CPlasTCAMole = (CPlasTCAMole < 1.0e-15 ? 1.0e-15 : CPlasTCAMole);
	CPlasTCAFreeMole = (CPlasTCAFreeMole < 1.0e-15 ? 1.0e-15 : CPlasTCAFreeMole);

}; END.
