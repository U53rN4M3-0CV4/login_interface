[toc]
## 檔案路徑規劃
* lib <font color=#9757FF>//所有dart檔案位置</font>
    1. common <font color=heart>//除了頁面以外的所有dart文件</font>
        * api <font color=heart>//連接伺服器method</font>
        * routers <font color=heart>//路徑設置</font>
        * values <font color=heart>//常數設定</font>
        * widgets <font color=heart>//通用組件</font>
    2. pages <font color=#9757FF>//設定畫面的dart文件</font>
        * Login <font color=heart>//登入頁</font>
        * Signup <font color=heart>//註冊頁</font>
        * Welcome <font color=heart>//歡迎頁（選擇註冊/登入）</font>
    3. main.dart <font color=#FF5757>//一切從這裡開始</font>
***
### Get.&#8204;to & Get.Named pros n' cons
get.&#8204;to 是一個接受一個 Widget 作為參數的方法，它會將該 Widget 推入到路由堆棧中，並返回一個 Future 對象。get.&#8204;to 的優點是可以直接傳遞 Widget，不需要定義路由名稱或 GetPage 對象。get.&#8204;to 的缺點是不支援 URL 策略，也不支援子頁面的層次結構。
get.named 是一個接受一個路由名稱作為參數的方法，它會根據你在 GetMaterialApp 中定義的 getPages 列表來尋找對應的 GetPage 對象，並將其推入到路由堆棧中，也返回一個 Future 對象。get.named 的優點是可以支援 URL 策略，也可以支援子頁面的層次結構。get.named 的缺點是需要事先定義好路由名稱和 GetPage 對象，並注意它們之間的對應關係。
因此，你可以根據你的需求和偏好來選擇使用 get.&#8204;to 或 get.named 來進行路由跳轉。如果你想要更多的靈活性和簡潔性，你可以使用 get.&#8204;to；如果你想要更多的功能和結構性，你可以使用 get.named。
***
### routes.dart （GetPage）
In GetX, the GetPage class represents a configuration for a single page in the app's navigation. It allows you to define the properties and behavior of a specific page, such as its route, bindings, and transition animation.
在 GetX 中，GetPage 類表示應用導航中單個頁面的配置。它允許您定義特定頁面的屬性和行為，例如其路由、依賴關係和過渡動畫。

使用 GetX 套件的 Flutter 程式碼中，GetPage 的目的是定義一個路由頁面，並提供一個 binding 參數來注入該頁面所需的依賴關係。binding 參數是一個 Bindings 類別的實例，它可以在路由跳轉頁面加載時統一管理頁面的依賴關係。

如果你想要在一個 GetPage 中設置另一個 GetPage 作為子頁面，你可以使用 children 參數來指定子頁面的列表。這樣可以讓你創建一個有層次的路由結構，並在 URL 中顯示根路由。

例如，如果你想要從 page1 跳轉到 page2，然後再跳轉到 page3，你可以這樣定義 GetPage：
```Flutter=
GetPage (
  name: '/page1',
  page: () => PageOne (),
  binding: PageOneBinding (),
  children: [
    GetPage (
      name: '/page2',
      page: () => PageTwo (),
      binding: PageTwoBinding (),
      children: [
        GetPage (
          name: '/page3',
          page: () => PageThree (),
          binding: PageThreeBinding (),
        ),
      ],
    ),
  ],
),
```
然後你可以使用 Get.toNamed () 方法來跳轉到指定的路由名稱，例如：
```Flutter=
ElevatedButton (
  onPressed: () => Get.toNamed ('/page1/page2'),
  child: Text ('Go to page 2'),
),
```
這樣就會在 URL 中顯示 /page1/page2，並加載 PageTwo 的內容和依賴關係。
***
What if I don't set page2 under page1 as child, what will happen if I code Get.toNamed page2? What is the difference?
如果我沒有將page2 設定在 page1 底下做為子頁面，編寫 Get.toNamed page2 會發生什麼？這樣與原本分層有什麼區別？

如果你不把 page2 設置為 page1 的子頁面，而是把它定義為一個獨立的 GetPage，那麼使用 Get.toNamed page2 會跳轉到 page2，但是 URL 中不會顯示 page1。這樣就沒有層次的路由結構，而是平行的路由結構。如果你想要保持層次的路由結構，你可以使用 Get.offNamed () 方法來跳轉到子頁面，並把當前頁面從堆棧中移除。例如：
```Flutter=
ElevatedButton (
  onPressed: () => Get.offNamed ('/page1/page2'),
  child: Text ('Go to page 2'),
),
```
這樣就會在 URL 中顯示 /page1/page2，並加載 PageTwo 的內容和依賴關係，但是不會保留 PageOne 的內容和依賴關係。如果你想要返回 PageOne，你需要再次跳轉到它。

URL 策略不僅對 Web 版本有影響，也對 app 有影響，因為 Flutter Web 應用也可以被打包成 app 並安裝在手機上。如果你想要讓你的 Flutter Web 應用有更好的使用者體驗，你需要根據你的需求選擇合適的 URL 策略，並注意它可能帶來的問題。
## 佈局
## view.dart
## controller.dart
## index.dart
用於之後方便一次import多個dart文件
```flutter=
library [library 名稱];

export '[dart 文件路徑]';
export '[dart 文件路徑]';
export '[dart 文件路徑]';
```
用法：
```flutter=
import '[index.dart路徑]';
```
這樣就可以一次import index.dart 內設定export的所有dart文件
## Other
### import/export vs. part/part of
using part/part of makes many files be treated as if they were one file

import/export doesn't, so this may be useful when private fields need to be accessed from another files (classes created on other files)
[source](https://stackoverflow.com/questions/27763378/when-to-use-part-part-of-versus-import-export-in-dart)
