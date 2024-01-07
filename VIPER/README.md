
# VIPER

DashboardMain 피쳐 

Router : DashboardMain에 관련된 모든 화면 전환을 담당한다 
화면 전환이란 UIAlertController, 다른 탭으로 이동, 네비게이션 Push, DashboardMain에 Present 모든 화면을 의미한다.

View : DashboardMainViewController에 view 를 얘기해야 맞지만, UIKit 으로는 UIViewController를 말하는게 맞을꺼 같다. SwiftUI 로는 View 가 된다.

Present : DashboardMainView 에 있는 Control 액션들을 받아서 Interactor 에 요청하고 응답온 데이터를 View에 전달한다.

Interactor : DashboardMainPresent 에서 요청 온 것을 처리 하고 Present에 결과를 콜백해 준다.

Enrity :  일반적인 객체이다. 
