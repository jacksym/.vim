" Vim syntax file
" Language: GMAT Script
" Maintainer: Jack Symonds
" Version: 1

if exists("b:current_syntax")
  finish
endif

syntax case match

syntax match gmatComment "%.*$"

syntax region gmatString start=+'+ skip=+''+ end=+'+

syntax match gmatPreProc "^\s*#Include\>"

syntax keyword gmatPreProc CommandEcho Write BatchEstimator
syntax keyword gmatPreProc AcceptFilter RejectFilter TrackingDataSet

syntax keyword gmatKeyword If For While BeginScript Target Optimize
syntax keyword gmatKeyword Else
syntax keyword gmatKeyword EndIf EndFor EndWhile EndScript EndTarget EndOptimize

syntax keyword gmatType Array Barycenter CoordinateSystem DifferentialCorrector
syntax keyword gmatType EphemerisFile FileInterface FiniteBurn FminconOptimizer
syntax keyword gmatType ForceModel Formation FuelTank GroundStation GroundTrackPlot
syntax keyword gmatType ImpulsiveBurn LibrationPoint MatlabFunction OrbitView
syntax keyword gmatType Propagator ReportFile SolarSystem Spacecraft String
syntax keyword gmatType Thruster Variable VF13ad XYPlot Asteroid Comet Planet
syntax keyword gmatType Moon EMTGSpacecraft DynamicsConfiguration OptimalControlGuess
syntax keyword gmatType Phase OptimalControlFunction CustomLinkageConstraint
syntax keyword gmatType Trajectory ChemicalTank ChemicalThruster ElectricTank
syntax keyword gmatType ElectricThruster Yukon OpenFramesInterface OpenFramesView
syntax keyword gmatType ProcessNoiseModel Antenna Receiver ErrorModel
syntax keyword gmatType TrackingFileSet Simulator ExtendedKalmanFilter Smoother

syntax keyword gmatCommand Achieve BeginMissionSequence CallMatlabFunction ClearPlot
syntax keyword gmatCommand Create GMAT Maneuver MarkPoint NonlinearConstraint
syntax keyword gmatCommand PenDown PenUp Propagate Report Set Stop Target Toggle Vary
syntax keyword gmatCommand Collocate RunSimulator RunEstimator RunSmoother

syntax keyword gmatConstant On True on true Off off False false

syntax keyword gmatFunction sin cos tan asin acos atan atan2 log log10 exp
syntax keyword gmatFunction DegToRad RadToDeg abs sqrt norm det inv

syntax match gmatNumber "\<[+-]\=\d\+\%(\.\d*\)\=\%([eE][+-]\=\d\+\)\=\>"
syntax match gmatNumber "\<[+-]\=\.\d\+\%([eE][+-]\=\d\+\)\=\>"

hi def link gmatComment  Comment
hi def link gmatString   String
hi def link gmatPreProc  PreProc
hi def link gmatKeyword  Keyword
hi def link gmatType     Type
hi def link gmatCommand  Function
hi def link gmatConstant Constant
hi def link gmatFunction Function
hi def link gmatNumber   Number

let b:current_syntax = "gmat"

