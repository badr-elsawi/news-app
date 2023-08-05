abstract class NewsStates {}
class NewsInitialState extends NewsStates {}
//***************************************************
class ChangeNavBarState extends NewsStates {}
//***************************************************
class GetSportLoadingState extends NewsStates {}
class GetSportSuccessState extends NewsStates {}
class GetSportErrorState extends NewsStates {}
//****************************************************
class GetHomeLoadingState extends NewsStates {}
class GetHomeSuccessState extends NewsStates {}
class GetHomeErrorState extends NewsStates {}
//*****************************************************
class GetHealthLoadingState extends NewsStates {}
class GetHealthSuccessState extends NewsStates {}
class GetHealthErrorState extends NewsStates {}
//*****************************************************
class GetTechLoadingState extends NewsStates {}
class GetTechSuccessState extends NewsStates {}
class GetTechErrorState extends NewsStates {}
//*****************************************************
//*****************************************************
class UrlLoadingState extends NewsStates {}
class UrlErrorState extends NewsStates {}
class UrlSuccessState extends NewsStates {}
