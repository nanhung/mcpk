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
  ALunTCA,  # Amount of TCA in Lung #(V2.1)
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
  ALunTCOH, 	# Amount of TCOH in lung #(V2.1)
  AKidTCOH, 	# Amount of TCOH in kidney #(V2.1)
  ABraTCOH, 	# Amount of TCOH in brain #(V2.1)
  
  ##-- TCOG in body
  ABodTCOG, 	# Amount of TCOG in lumped body compartment
  ALivTCOG, 	# Amount of TCOG in liver
  ABileTCOG,	# Amount of TCOG in bile (incl. gut)
  ALunTCOG, 	# Amount of TCOG in lung #(V2.1)
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
  ABldDCVG, # Amount of DCVG in blood #(V2.1)
  ALivDCVG, # Amount of DCVG in liver #(V2.1)
  ABraDCVG, # Amount of DCVG in brain #(V2.1)
  AKidDCVG, # Amount of DCVG in kidney #(V2.1)
  
  ##-- DCVC in body
  ABodDCVC,	# Amount of DCVC in body
  ABldDCVC, # Amount of DCVC in blood #(V2.1)
  ALivDCVC, # Amount of DCVC in liver #(V2.1)
  ABraDCVC, # Amount of DCVC in brain #(V2.1)
  AKidDCVC, # Amount of DCVC in kidney #(V2.1)
  
  ##-- NAcDCVC in body (V2.1)
  ABodNAcDCVC, # Amount of NAcDCVC in body #(V2.1)
  ABldNAcDCVC, # Amount of NAcDCVC in blood #(V2.1)
  ALivNAcDCVC, # Amount of NAcDCVC in liver #(V2.1)
  ABraNAcDCVC, # Amount of NAcDCVC in brain #(V2.1)
  AKidNAcDCVC, # Amount of NAcDCVC in kidney #(V2.1)
  
  ##-- NAcDCVC excreted (V2.1)
  AUrnNAcDCVC,	   # Amount of NAcDCVC excreted in urine
  AUrnNAcDCVC_sat, # Amount of NAcDCVC excreted that during times that had saturated measurements 
  #(for lower bounds) 
  AUrnNAcDCVC_col, # Cumulative Amount of NAcDCVC excreted in urine during collection times 
  #(for intermittent collection) 	
  
  ##-- Other states for TCE
  ACh, 		# Amount in closed chamber -- mice and rats only
  AExh, 	# Amount exhaled
  AExhExp, 	# Amount exhaled during expos  [to calc. retention]
  
  ##-- Metabolism
  AMetLiv1,	    # Amount metabolized by P450 in liver
  AMetLiv2,	    # Amount metabolized by GSH conjugation in liver
  AMetLng,	    # Amount metabolized in the lung
  AMetKid,      # Amount metabolized in the kidney
  AMetTCOHTCA,	# Amount of TCOH metabolized to TCA
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
	NAcDCVCSat, # Flag for saturated NAcDCVC urine (V2.1)
	UrnMissing,	# Flag for missing urine collection times 
};

#******************************************************************************
#***                  Output Variable Specifications                        ***
#******************************************************************************
Outputs = {
#** Outputs for mass balance check
MassBalTCE,
MassBalDCA,
MassBalTCA,
MassBalTCOH,
MassBalTCOG,
MassBalDCVG,
MassBalDCVC,
MassBalNAcDCVC #(V2.1)

#** Outputs for comparison to in vivo data
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
CLun,	 # mouse, rat - Concentration in lung [use CRap]
CMus,	 # rat - Concentration in muscle [use CSlw]
CSpl, 	 # rat - Concentration in spleen [use CRap]
CBrn, 	 # rat - Concentration in brain [use CRap]
zAExh,		# mouse
zAExhpost,	# rat - Amount exhaled post-exposure (mg)

# DCA
CDCAmol,  # concentration of DCA (mmol/l) 
CDCAmol0,	# Dummy variable without likelihood (for plotting)
CDCA_ND,	# Non-detect of DCA (<0.01 nmol/ml= 1e-5 mmol/l )

# TCA
CPlasTCA,	# mouse, rat, human - TCA concentration in plasma
CBldTCA,	# mouse, rat, human - TCA concentration in blood
CBodTCA,	# needed for CKidTCA, CBraTCA and CLunTCA #(V2.1)
CLivTCA,	# mouse, rat - TCA concentration in liver
CKidTCA,	# mouse - TCA concentration in kidney
CLunTCA,	# mouse - TCA concentration in lung
CBraTCA,	# mouse - TCA concentration in brain #(V2.1)
zAUrnTCA,		# mouse, rat, human - Cumulative Urinary TCA
zAUrnTCA_col,	# human - TCA measurements for intermittent collection
zAUrnTCA_sat,	# human - Saturated TCA measurements

# TCOH
CBldTCOH,	# mouse, rat, human - TCOH concentration in blood
CKidTCOH,	# mouse - TCOH concentration in kidney
CLivTCOH,	# mouse - TCOH concentration in liver
CLunTCOH,	# mouse - TCOH concentration in lung
CBraTCOH,	# mouse - TCOH concentration in brain #(V2.1)

# TCOG
zABileTCOG,	  # rat - Amount of TCOG in bile (mg)
CBldTCOG,	    # needed for CTCOGTCOH
CBldTCOGTCOH,	# mouse - TCOG concentration in blood (in TCOH-equiv)
CKidTCOGTCOH,	# mouse - TCOG concentration in kidney (in TCOH-equiv)
CLivTCOGTCOH,	# mouse - TCOG concentration in liver (in TCOH-equiv)
CLunTCOGTCOH,	# mouse - TCOG concentration in lung (in TCOH-equiv)
CBraTCOGTCOH,	# mouse - TCOG concentration in brain (in TCOH-equiv) #(V2.1)
AUrnTCOGTCOH,	  # mouse, rat, human - Cumulative Urinary TCOG (in TCOH-equiv)
AUrnTCOGTCOH_col, # human - TCOG (in TCOH-equiv) measurements for intermittent collection 
AUrnTCOGTCOH_sat, # human - Saturated TCOG (in TCOH-equiv) measurements 

# DCVG #(V2.1)
CBldNAcDCVG,	# mouse - DCVG concentration in blood #(V2.1)
ClivNAcDCVG,	# mouse - DCVG concentration in liver #(V2.1)
CBraNAcDCVG,	# mouse - DCVG concentration in brain #(V2.1)
CKidNAcDCVG,	# mouse - DCVG concentration in kidney #(V2.1)

# DCVC #(V2.1)
CBldDCVC,	# mouse - DCVC concentration in blood #(V2.1)
ClivDCVC,	# mouse - DCVC concentration in liver #(V2.1)
CBraDCVC,	# mouse - DCVC concentration in brain #(V2.1)
CKidDCVC,	# mouse - DCVC concentration in kidney #(V2.1)

# NAcDCVC #(V2.1)
CBldNAcDCVC,	# mouse - NAcDCVC concentration in blood #(V2.1)
ClivNAcDCVC,	# mouse - NAcDCVC concentration in liver #(V2.1)
CBraNAcDCVC,	# mouse - NAcDCVC concentration in brain #(V2.1)
CKidNAcDCVC,	# mouse - NAcDCVC concentration in kidney #(V2.1)
AUrnNAcDCVC,	  # mouse - Cumulative Urinary NAcDCVC #(V2.1)
AUrnNAcDCVC_col,  # mouse - NAcDCVC measurements for intermittent collection #(V2.1)
AUrnNAcDCVC_sat,  # mouse - Saturated NAcDCVC measurements #(V2.1)

# Other
AUrnTCTotMole,	# rat, human - Cumulative urinary TCOH+TCA in mmoles
TotCTCOH,	    # mouse, human - TCOH+TCOG Concentration (in TCOH-equiv)
TotCTCOHcomp,	# ONLY FOR COMPARISON WITH HACK
ATCOG,		    # ONLY FOR COMPARISON WITH HACK
QPsamp,	        # human - sampled value of alveolar ventilation rate

AMetOX,		# Amount of TCE oxidized
AMetGSH,	# Amount of TCE conjugated
TotTCAProd,	# Amount TCA produced in mg TCA
TotDCAProd,	# Amount DCA produced in mg DCA

## PARAMETERS
QCnow,      #Cardiac output (L/hr)
QP,         #Alveolar ventilation (L/hr)
QFatSC,     #Scaled fat blood flow
QBraSC,     #Scaled brain blood flow #(V2.1)  
QGutSC,     #Scaled gut blood flow
QLivSC,     #Scaled liver blood flow
QSlwSC,     #Scaled slowly perfused blood flow
QRapSC,     #Scaled rapidly perfused blood flow
QKidSC,     #Scaled kidney blood flow
DResp,      #Respiratory lumen:tissue diffusive clearance rate

VFatSC,     #Fat fractional compartment volume
VBraSC,     #Brain fractional compartment volume #(V2.1)  
VGutSC,     #Gut fractional compartment volume
VLivSC,     #Liver fractional compartment volume
VRapSC,     #Rapidly perfused fractional compartment volume
VRespLumSC, #Fractional volume of respiratory lumen
VRespEffSC, #Effective fractional volume of respiratory tissue
VKidSC,     #Kidney fractional compartment volume
VBldSC,     #Blood fractional compartment volume 
VSlwSC,     #Slowly perfused fractional compartment volume 
VPlasSC,    #Plasma fractional compartment volume 
VBodSC,     #TCA Body fractional compartment volume
VBodTCOHSC, #TCOH/G Body fractional compartment volume
VBodDCVG,   #DCVG/DCVC/NAcDCVC Body fractional compartment volume #(V2.1)

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
PLunTCA, #Free TCA lung/blood plasma partition coefficient #(V2.1)

PBodTCOH, #TCOH body/blood partition coefficient
PLivTCOH, #TCOH liver/body partition coefficient
PBraTCOH, #TCOH brain/body partition coefficient #(V2.1)  
PKidTCOH, #TCOH kidney/body partition coefficient #(V2.1)  
PLunTCOH, #TCOH lung/body partition coefficient #(V2.1)  
    
PBodTCOG, #TCOG body/blood partition coefficient
PLivTCOG, #TCOG liver/body partition coefficient
PKidTCOG, #TCOG kidney/blood partition coefficient #(V2.1)  
PLunTCOG, #TCOG lung/blood partition coefficient #(V2.1)
PBraTCOG, #TCOG brain/blood partition coefficient #(V2.1) 

PBodDCVC, #DCVC body/blood partition coefficient #(V2.1)  
PLivDCVC, #DCVC liver/body partition coefficient #(V2.1)  
PKidDCVC, #DCVC kidney/blood partition coefficient #(V2.1)
PBraDCVC, #DCVC brain/blood partition coefficient #(V2.1) 

PBodDCVG, #DCVG body/blood partition coefficient #(V2.1)
PLivDCVG, #DCVG liver/body partition coefficient #(V2.1)  
PBraDCVG, #DCVG brain/blood partition coefficient #(V2.1)  
PKidDCVG, #DCVG kidney/blood partition coefficient #(V2.1)

PBodNAcDCVC,  #NAcDCVC body/blood partition coefficient #(V2.1)
PlivNAcDCVC,  #NAcDCVC liver/body partition coefficient #(V2.1) 
PBraNAcDCVC,  #NAcDCVC brain/body partition coefficient #(V2.1)  
PKidNAcDCVC,  #NAcDCVC kidney/body partition coefficient #(V2.1)     
    
BMax,     #Maximum binding concentration (umole/L)  
  
kDissoc,  #Protein/TCA dissociation constant (umole/L)
VDCA,     #DCA effective volume of distribution
kAS,      #TCE Stomach absorption coefficient (/hr)
kTSD,     #TCE Stomach-duodenum transfer coefficient (/hr)
kAD,      #TCE Duodenum absorption coefficient (/hr)
kTD,      #TCE Duodenum-feces transfer coefficient (/hr)
kASTCA,   #TCA Stomach absorption coefficient (/hr)
kASTCOH,  #TCOH Stomach absorption coefficient (/hr)
VMax,     #VMax for hepatic TCE oxidation (mg/hr)
KM,       #KM for hepatic TCE oxidation (mg/L)

FracOther, #Fraction of hepatic TCE oxidation not to TCA+TCOH
FracTCA,   #Fraction of hepatic TCE oxidation to TCA

VMaxDCVG,    #VMax for hepatic TCE GSH conjugation (mg/hr)
KMDCVG,      #KM for hepatic TCE GSH conjugation (mg/L)
ClDCVG,      #CL for hepatic TCE GSH conjugation (L/hr)
VMaxKidDCVG, #VMax for renal TCE GSH conjugation (mg/hr)
KMKidDCVG,   #KM for renal TCE GSH conjugation (mg/L)
DCVC,        #Fraction of renal TCE GSH conj. "directly" to DCVC 

VMaxClara,    #VMax for Tracheo-bronchial TCE oxidation (mg/hr)
KMClara,      #KM for Tracheo-bronchial TCE oxidation (mg/L)
FracLungSys,  #Fraction of respiratory metabolism to systemic circ.
kClearDCA,	  #Rate constant for DCA elimination (/hr)
kDCAcen_per,	#Rate constant for DCA central->peripheral (/hr)
kDCAper_cen,	#Rate constant for DCA peripheral->central (/hr)
VMaxTCOH,     #VMax for hepatic TCOH->TCA (mg/hr)
KMTCOH,       #KM for hepatic TCOH->TCA (mg/L)
VMaxGluc,     #VMax for hepatic TCOH->TCOG (mg/hr)
KMGluc,       #KM for hepatic TCOH->TCOG (mg/L)
kMetTCOH,     #Rate constant for hepatic TCOH->other (/hr)
kUrnTCA,      #Rate constant for TCA plasma->urine (/hr)
kMetTCA,      #Rate constant for hepatic TCA->other (/hr)
kBile,        #Rate constant for TCOG liver->bile (/hr)
kEHR,         #Lumped rate constant for TCOG bile->TCOH liver (/hr)
kUrnTCOG,     #Rate constant for TCOG->urine (/hr)
kDCVG,        #Rate constant for hepatic DCVG->DCVC (/hr)
kMetDCVC,	  #Rate constant for DCVC->other (/hr) #(V2.1)
kMDCVC,     #Rate constant for hepatic DCVC->NAcDCVC (/hr) #(v2.1)
kUrnNAcDCVC,	#Rate constant for NAcDCVC->urine (/hr) #(V2.1) 
    
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
     MWNADCVC = 258.8;        # N Acetyl DCVC
        MWTCA = 163.5;        # TCA
      MWChlor = 147.5;        # Chloral
       MWTCOH = 149.5;        # TCOH
   MWTCOHGluc = 325.53;       # TCOH-Gluc


# Stoichiometry
 StochChlorTCE = MWChlor / MWTCE;
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
VBra	= 1;	# Brain compartment volume (L)
VGut	= 1;	# Gut compartment volume (L)
VLiv	= 1;	# Liver compartment volume (L)
VRap	= 1;	# Rapidly perfused compartment volume (L)
VTB	= 1;	# Tracheo-bronchial compartment volume (L)
VRespLum	= 1;	# volume of respiratory lumen (L air)
VRespEff	= 1;	# Effective volume for respiratory tissue (L air) = V(tissue) * Resp:Air partition coefficient
VKid	= 1;	# Kidney compartment volume (L)
VBld	= 1;	# Blood compartment volume (L)
VSlw	= 1;	# Slowly perfused compartment volume (L)
VPlas	= 1;	# Plasma compartment volume [fraction of blood] (L)
VBod	= 1;	# TCA Body compartment volume (L)
VBodTCOH	= 1;	# TCOH/G Body compartment volume (L)
VBodDCVC	= 1;	# DCVG Body compartment volume (L) #(V2.1)
#******************************************************************************
# Distribution/partitioning
PB	= 1;	# TCE Blood/air partition coefficient
PFat	= 1;	# TCE Fat/Blood partition coefficient
PGut	= 1;	# TCE Gut/Blood partition coefficient
PLiv	= 1;	# TCE Liver/Blood partition coefficient
PRap	= 1;	# TCE Rapidly perfused/Blood partition coefficient
#(v1.2) PTB	= 1;	# TCE Tracheo-bronchial/Blood partition coefficient
PResp	= 1;	#(v1.2) TCE Respiratory tissue:air partition coefficient
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
FracOther	= 1;	  # Fraction of hepatic TCE oxidation not to TCA+TCOH
FracTCA	= 1;	    # Fraction of hepatic TCE oxidation to TCA
VMaxDCVG	= 1;	  # VMax for hepatic TCE GSH conjugation (mg/hr)
KMDCVG	= 1;	    # KM for hepatic TCE GSH conjugation (mg/L)
VMaxKidDCVG	= 1;	# VMax for renal TCE GSH conjugation (mg/hr)
KMKidDCVG	= 1;	  # KM for renal TCE GSH conjugation (mg/L)
VMaxClara	= 1;	  # VMax for Tracheo-bronchial TCE oxidation (mg/hr)
KMClara	= 1;	    # KM for Tracheo-bronchial TCE oxidation (mg/L)
FracLungSys	= 1;	# Fraction of respiratory oxidative metabolism that enters systemic circulation
#******************************************************************************
# DCA metabolism/clearance
kClearDCA	= 1;	# Rate constant for DCA elimination (/hr)
kDCAcen_per	= 1;	# Rate constant for DCA central->peripheral (/hr)
kDCAper_cen	= 1;	# Rate constant for DCA peripheral->central (/hr)
#******************************************************************************
# TCOH metabolism
VMaxTCOH	= 1;	# VMax for hepatic TCOH->TCA (mg/hr)
KMTCOH	= 1;	  # KM for hepatic TCOH->TCA (mg/L)
VMaxGluc	= 1;	# VMax for hepatic TCOH->TCOG (mg/hr)
KMGluc	= 1;	  # KM for hepatic TCOH->TCOG (mg/L)
kMetTCOH	= 1;	# Rate constant for hepatic TCOH->other (/hr)
#******************************************************************************
# TCA metabolism/clearance
kUrnTCA	= 1;	# Rate constant for TCA plasma->urine (/hr)
kMetTCA	= 1;	# Rate constant for hepatic TCA->other (/hr)
#******************************************************************************
# TCOG metabolism/clearance
kBile	= 1;	    # Rate constant for TCOG liver->bile (/hr)
kEHR	= 1;	    # Lumped rate constant for TCOG bile->TCOH liver (/hr)
kUrnTCOG	= 1;	# Rate constant for TCOG->urine (/hr)
#******************************************************************************
# DCVG metabolism
kDCVG	= 1;	# Rate constant for hepatic DCVG->DCVC (/hr) 
FracKidDCVC	= 1;	# Fraction of renal TCE GSH conj. "directly" to DCVC (i.e., via first pass)
#******************************************************************************
# DCVC metabolism/clearance
kMetDCVC	= 1;	# Rate constant for DCVC -> other (/hr) #(v2.1)
kMDCVC	= 1;  # Rate constant for hepatic DCVC-> NAcDCVC (/hr) #(v2.1)
#******************************************************************************
# NAcDCVC clearance
kUrnNAcDCVC	= 1;	# Rate constant for NAcDCVC -> urine (/hr) #(v2.1)
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
LunWmeas = # Lung weight #(v2.1)

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
lnPLunTCAC = 0.0; #(V2.1)

# Plasma Binding for TCA
lnkDissocC	= 0.0;	# Scaled to species-specific central estimates
lnBMaxkDC	= 0.0;	# Scaled to species-specific central estimates

# Partition Coefficients for TCOH 
lnPBodTCOHC	= 0.0;	# Scaled to species-specific central estimates
lnPLivTCOHC	= 0.0;	# Scaled to species-specific central estimates
lnPBraTCOHC = 0.0; #(V2.1)  
lnPKidTCOHC = 0.0; #(V2.1)  
lnPLunTCOHC = 0.0; #(V2.1)  

# Partition Coefficients for TCOG
lnPBodTCOGC	= 0.0;	# Scaled to species-specific central estimates
lnPLivTCOGC	= 0.0;	# Scaled to species-specific central estimates
lnPKidTCOGC	= 0.0;  #(V2.1)  
lnPLunTCOGC	= 0.0;  #(V2.1)
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

# Partition Coefficients for NAcDCVC
lnPBodNAcDCVCC = 0.0;  #NAcDCVC body/blood partition coefficient #(V2.1)
lnPlivNAcDCVCC = 0.0;  #NAcDCVC liver/body partition coefficient #(V2.1) 
lnPBraNAcDCVCC = 0.0;  #NAcDCVC brain/body partition coefficient #(V2.1)  
lnPKidNAcDCVCC = 0.0;  #NAcDCVC kidney/body partition coefficient #(V2.1)    

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
lnFracOtherC	= 0.0;	# Ratio of DCA to non-DCA
lnFracTCAC	= 0.0;	# Ratio of TCA to TCOH
lnVMaxDCVGC	= 0.0;	# Scaled by liver weight and species-specific central estimates
lnClDCVGC	= 0.0;	# Scaled to species-specific central estimates
lnKMDCVGC	= 0.0;	# Scaled to species-specific central estimates
lnVMaxKidDCVGC	= 0.0;	# Scaled by kidney weight and species-specific central estimates
lnClKidDCVGC	= 0.0;	# Scaled to species-specific central estimates
lnKMKidDCVGC	= 0.0;	# Scaled to species-specific central estimates
lnClClaraC	= 0.0;	# Scaled by BW^0.75
lnVMaxLungLivC	= 0.0; Ratio of lung Vmax to liver Vmax,
lnKMClara	= 0.0;	# now in units of air concentration 

# Inter-strain scaling - relative to B6C3F1
lnISOx = 0.0; # P450 oxidative metabolism
lnISTCA = 0.0; # fraction to TCA
lnISDCA = 0.0; # fraction to DCA
lnISConj = 0.0; # GSH conjugation metabolism
lnISkTCA = 0.0; # TCA metabolism/clearance
lnISkDCA = 0.0; # DCA metabolism/clearance
lnISkDCVG = 0.0; # DCVG -> DCVC
lnISkDCVC = 0.0; # DCVC metabolism #(V2.1)
lnISkNAcDCVC = 0.0; # NAcDCVC clearance #(V2.1)

# Clearance in lung
lnFracLungSysC	= 0.0;	#ratio of systemic to local clearance of lung oxidation

# TCOH Metabolism
lnVMaxTCOHC	= 0.0;	# Scaled by BW^0.75
lnClTCOHC	= 0.0;	# Scaled by BW^0.75
lnKMTCOH	= 0.0;	# 
lnVMaxGlucC	= 0.0;	# Scaled by BW^0.75
lnClGlucC	= 0.0;	# Scaled by BW^0.75
lnKMGluc	= 0.0;	# 
lnkMetTCOHC	= 0.0;	# Scaled by BW^-0.25

# DCA metabolism/clearance#(v2.0)
lnkClearDCAC	= 0;	# Scaled by BW^-0.25
lnkDCAcen_perC	= 0;	# Scaled by BW^-0.25
lnkDCAper_cenC	= 0;	# Scaled by BW^-0.25

# TCA Metabolism/clearance
lnkUrnTCAC	= 0.0;	# Scaled by (plasma volume)^-1 and species-specific central estimates
lnkMetTCAC	= 0.0;	# Scaled by BW^-0.25

# TCOG clearance/reabsorption
lnkBileC	= 0.0;	# Scaled by BW^-0.25
lnkEHRC	= 0.0;	# Scaled by BW^-0.25
lnkUrnTCOGC	= 0.0;	# Scaled by (blood volume)^-1 and species-specific central estimates

# DCVG metabolism
lnFracKidDCVCC	= 0.0;	# Ratio of "directly" to DCVC to systemic DCVG
lnkDCVGC	= 0.0;	# Scaled by BW^-0.25

# DCVC metabolism
lnkMetDCVCC	= 0.0;	# Scaled by BW^-0.25 #(v2.1)
lnkMDCVCC	= 0.0;	# Scaled by BW^-0.25 #(v2.1)

# NAcDCVC clearance
lnkUrnNAcDCVCC	= 0.0;	# Scaled by (blood volume)^-1 and species-specific central estimates

# Closed chamber parameters
NRodents	= 1;	# 
VChC	= 1;	# 
lnkLossC	= 0;	# 

#******************************************************************************
# Population means
#
# These are given truncated normal or uniform distributions, depending on 
#	what prior information is available.  Note that these distributions
#	reflect uncertainty in the population mean, not inter-individual
#	variability.  Normal distributions are truncated at 2, 3, or 4 SD.
#		For fractional volumes and flows, 2xSD
#		For plasma fraction, 3xSD
#		For cardiac output and ventilation-perfusion ratio, 4xSD
#		For all others, 3xSD
#	For uniform distributions, range of 1e2 to 1e8 fold, centered on
#		central estimate.
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
M_lnPLunTCAC = 1.0; #(V2.1)

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
M_lnPBodNAcDCVCC = 1.0;  #(V2.1)
M_lnPlivNAcDCVCC = 1.0;  #(V2.1) 
M_lnPBraNAcDCVCC = 1.0;  #(V2.1)  
M_lnPKidNAcDCVCC = 1.0;  #(V2.1)    

M_lnPBodTCOHC	= 1.0;
M_lnPLivTCOHC	= 1.0;
M_lnPBraTCOHC = 1.0; #(V2.1)  
M_lnPKidTCOHC = 1.0; #(V2.1)  
M_lnPLunTCOHC = 1.0; #(V2.1)  

M_lnPBodTCOGC	= 1.0;
M_lnPLivTCOGC	= 1.0;
M_lnPKidTCOGC	= 1.0;  #(V2.1)  
M_lnPLunTCOGC	= 1.0;  #(V2.1)
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
M_lnFracOtherC	= 1.0;
M_lnFracTCAC	= 1.0;
M_lnVMaxDCVGC	= 1.0;
M_lnClDCVGC	= 1.0;
M_lnKMDCVGC	= 1.0;
M_lnVMaxKidDCVGC	= 1.0;
M_lnClKidDCVGC	= 1.0;
M_lnKMKidDCVGC	= 1.0;
M_lnVMaxLungLivC	= 1.0;
M_lnKMClara	= 1.0;

# inter-strain scaling
M_lnISOx = 0.0; # P450 oxidative metabolism
M_lnISTCA = 0.0; # fraction to TCA
M_lnISDCA = 0.0; # fraction to DCA
M_lnISConj = 0.0; # GSH conjugation metabolism
M_lnISkTCA = 0.0; # TCA metabolism/clearance
M_lnISkDCA = 0.0; # DCA metabolism/clearance
M_lnISkDCVG = 0.0; # DCVG -> DCVC
M_lnISkDCVC = 1.0; #(V2.1)
M_lnISkNAcDCVC = 1.0; #(V2.1)

M_lnFracLungSysC	= 1.0;
M_lnVMaxTCOHC	= 1.0;
M_lnClTCOHC	= 1.0;
M_lnKMTCOH	= 1.0;
M_lnVMaxGlucC	= 1.0;
M_lnClGlucC	= 1.0;
M_lnKMGluc	= 1.0;
M_lnkMetTCOHC	= 1.0;
M_lnkUrnTCAC	= 1.0;
M_lnkMetTCAC	= 1.0;
M_lnkBileC	= 1.0;
M_lnkEHRC	= 1.0;
M_lnkUrnTCOGC	= 1.0;
M_lnFracKidDCVCC	= 1.0;
M_lnkDCVGC	= 1.0;

M_lnkMetDCVCC	= 1.0; #(v2.1)
M_lnkMDCVCC	= 1.0;	#(v2.1)

M_lnkClearDCAC	= 1.0;
M_lnkDCAcen_perC	= 1.0;
M_lnkDCAper_cenC	= 1.0;

#******************************************************************************
# Population Variances
#
# These are given InvGamma(alpha,beta) distributions.  The parameterization
#	for alpha and beta is given by:
#		alpha = (n-1)/2
#		beta = s^2*(n-1)/2
#	where n = number of data points, and s^2 is the sample variance
#	Sum(x_i^2)/n - <x>^2.
# Generally, for parameters for which there is no direct data, assume a
#	value of n = 5 (alpha = 2).  For a sample variance s^2, this gives 
#	an expected value for the standard deviation <sigma> = 0.9*s,
#	a median [2.5%,97.5%] of 1.1*s [0.6*s,2.9*s].  
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
V_lnFracOtherC	= 1.0;
V_lnFracTCAC	= 1.0;
V_lnVMaxDCVGC	= 1.0;
V_lnClDCVGC	= 1.0;
V_lnKMDCVGC	= 1.0;
V_lnVMaxKidDCVGC	= 1.0;
V_lnClKidDCVGC	= 1.0;
V_lnKMKidDCVGC	= 1.0;
V_lnVMaxLungLivC	= 1.0; 
V_lnKMClara	= 1.0;

# inter-strain scaling
V_lnISOx = 1.0; # P450 oxidative metabolism
V_lnISTCA = 1.0; # fraction to TCA
V_lnISDCA = 1.0; # fraction to DCA
V_lnISConj = 1.0; # GSH conjugation metabolism
V_lnISkTCA = 1.0; # TCA metabolism/clearance
V_lnISkDCA = 1.0; # DCA metabolism/clearance
V_lnISkDCVG = 1.0; # DCVG -> DCVC
V_lnFracLungSysC	= 1.0;
V_lnVMaxTCOHC	= 1.0;
V_lnClTCOHC	= 1.0;
V_lnKMTCOH	= 1.0;
V_lnVMaxGlucC	= 1.0;
V_lnClGlucC	= 1.0;
V_lnKMGluc	= 1.0;
V_lnkMetTCOHC	= 1.0;
V_lnkUrnTCAC	= 1.0;
V_lnkMetTCAC	= 1.0;
V_lnkBileC	= 1.0;
V_lnkEHRC	= 1.0;
V_lnkUrnTCOGC	= 1.0;
V_lnFracKidDCVCC	= 1.0;
V_lnkDCVGC	= 1.0;
V_lnkElimDCVCC	= 1.0;
V_lnkClearDCAC	= 1.0;
V_lnkDCAcen_perC	= 1.0;
V_lnkDCAper_cenC	= 1.0;

##(v2.1) Added parameters
V_QBraC = 1.0; #(v2.1)
V_VBraC = 1.0;  #(v2.1)
V_lnPBraC = 1.0; #(v2.1)
V_lnPBraTCAC = 1.0; #(V2.1)  
V_lnPKidTCAC = 1.0; #(V2.1)  
V_lnPLunTCAC = 1.0; #(V2.1)
V_lnPBodDCVCC = 1.0; #(V2.1)  
V_lnPLivDCVCC = 1.0; #(V2.1)  
V_lnPKidDCVCC = 1.0; #(V2.1)
V_lnPBraDCVCC = 1.0; #(V2.1) 
V_lnPBodDCVGC = 1.0; #(V2.1)
V_lnPLivDCVGC = 1.0; #(V2.1)  
V_lnPBraDCVGC = 1.0; #(V2.1)  
V_lnPKidDCVGC = 1.0; #(V2.1)
V_lnPBodNAcDCVCC = 1.0;  #(V2.1)
V_lnPlivNAcDCVCC = 1.0;  #(V2.1) 
V_lnPBraNAcDCVCC = 1.0;  #(V2.1)  
V_lnPKidNAcDCVCC = 1.0;  #(V2.1)
V_lnPBraTCOHC = 1.0; #(V2.1)  
V_lnPKidTCOHC = 1.0; #(V2.1)  
V_lnPLunTCOHC = 1.0; #(V2.1)  
V_lnPKidTCOGC	= 1.0;  #(V2.1)  
V_lnPLunTCOGC	= 1.0;  #(V2.1)
V_lnPBraTCOGC	= 1.0;  #(V2.1)
V_lnISkDCVC = 1.0; #(V2.1)
V_lnISkNAcDCVC = 1.0; #(V2.1)
V_lnkMetDCVCC	= 1.0; #(v2.1)
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
Ve_CLung	= 1;
Ve_CMus	= 1;
Ve_CSpl	= 1;
Ve_CBrn	= 1;
Ve_zAExh	= 1;
Ve_zAExhpost	= 1;

Ve_CTCOH	= 1;
Ve_CKidTCOH	= 1;
Ve_CLivTCOH	= 1;
Ve_CLungTCOH	= 1;
Ve_CBraTCOH = 1; #(V2.1)
	
Ve_CPlasTCA	= 1;
Ve_CBldTCA	= 1;
Ve_CBodTCA	= 1;
Ve_CKidTCA	= 1;
Ve_CLivTCA	= 1;
Ve_CBraTCA  = 1;	#(V2.1)
Ve_CLungTCA	= 1;
Ve_zAUrnTCA	= 1;
Ve_zAUrnTCA_collect	= 1;
Ve_zAUrnTCA_sat	= 1;
	
Ve_zABileTCOG	= 1;
Ve_CTCOG	= 1;
Ve_CBraTCOG	= 1;
Ve_CTCOGTCOH	= 1;
Ve_CKidTCOGTCOH	= 1;
Ve_CLivTCOGTCOH	= 1;
Ve_CLungTCOGTCOH	= 1;
Ve_AUrnTCOGTCOH	= 1;
Ve_AUrnTCOGTCOH_collect	= 1;
Ve_AUrnTCOGTCOH_sat	= 1;

Ve_CBldNAcDCVG = 1;	#(V2.1)
Ve_ClivNAcDCVG = 1;	#(V2.1)
Ve_CBraNAcDCVG = 1;	#(V2.1)
Ve_CKidNAcDCVG = 1;	#(V2.1)
Ve_CBldDCVC = 1; #(V2.1)
Ve_ClivDCVC = 1;	#(V2.1)
Ve_CBraDCVC = 1; #(V2.1)
Ve_CKidDCVC = 1;#(V2.1)
Ve_CBldNAcDCVC = 1;	#(V2.1)
Ve_ClivNAcDCVC = 1;	#(V2.1)
Ve_CBraNAcDCVC = 1;	#(V2.1)
Ve_CKidNAcDCVC = 1;	#(V2.1)
Ve_AUrnNAcDCVC = 1;	  #(V2.1)
Ve_AUrnNAcDCVC_col = 1; #(V2.1)
Ve_AUrnNAcDCVC_sat = 1; #(V2.1)

Ve_CDCVGmol	= 1;
Ve_CDCVCmol	= 1;
Ve_CDCAmol	= 1;
Ve_AUrnTCTotMole	= 1;
Ve_TotCTCOH	= 1;
Ve_QPsamp	= 1;
