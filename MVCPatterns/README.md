# MVC(Model-View-Controller) 패턴 정의

> PR은 언제나 환영입니다.



## M(Model)

- 데이터 정의 및 처리를 담당한다.
  - validation

## V(View)

- UI 구성을 한다.
  - UILabel()
    - font, textColor, text 

## C(Controller)

- UI 이벤트 처리를 한다.
  - IBAction, Delegate ...

- 필요한 데이터가 있을시 요청하는 역활을 한다.
  - API
  - DataBase

- UI에 보여질 데이터를 Model에 요청해서 받아온다.
  - Model(validation) -> UILabel.isHidden