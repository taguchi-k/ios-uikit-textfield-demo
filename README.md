# UITextField

## 概要
UITextFieldは、ユーザから文字や数値などの入力を受け付けるときに利用します。

## 関連クラス
UIView、UIControl

## 実装手順

## 主要プロパティ

|プロパティ名|説明|サンプル|
|---|---|---|
|text | 入力された内容を参照する | textField.text |
|delegate | UITextFieldDelegateを利用するためにdelegateを指定する | textField.delegate = self |
|placeholder | プレースホルダを設定する | textField.placeholder = "do something" |
|keyboardType | キーボードタイプを設定する | textField.keyboardType = .default |
|clearButtonMode | クリアボタンの表示を設定する | textField.clearButtonMode = .always|
|textAlignment | テキストのアライン（揃える）を設定する  | textField.textAlignment = .left|

## 主要メソッド
