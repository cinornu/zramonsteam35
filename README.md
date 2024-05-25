# zram enabler on SteamOS 3.5
---------
#### This document is written using a translator, so please excuse any awkwardness.
---------
<br/><br/>
##### This script is written for users who are unable to use version 3.6 due to a bug, but still want to use zram.<br/>
이 스크립트는 버그로 인해 3.6 버전을 이용할 수는 없지만, zram을 사용하고 싶어하는 유저들을 위해 작성되었습니다.<br/>
<br/>
##### Works fine on SteamOS 3.5.7, 3.5.19 <br/>
스팀OS 3.5.7, 3.5.19 에서 정상 작동하는 것을 확인했습니다.<br/>
<br/>
##### This script installs the rc.local-service and copies rc.local, which contains the zram setup script, to /etc.<br/>
이 스크립트는 rc.local-service를 설치하고, zram 설정 스크립트가 내장된 rc.local을 /etc에 복사합니다.<br/>
<br/>
#### zram settings / zram 설정값 <br/>
Algorithm : zstd <br/>
Size : 8GB <br/>
Swapiness : 100 <br/>
<br/>
### How to Use / 사용법

![zram1](https://github.com/cinornu/zramonsteam35/assets/55832850/1c72d5ae-8e04-426f-ae76-27541a9c99d2)

1. Code > Download ZIP to download the repo.<br/>
   Code > Download ZIP 을 눌러 파일을 다운로드 받습니다.<br/>

2. After unzipping it to a suitable location, run the following in the Konsole ``` sudo sh zram_enabler.sh ``` <br/>
   적당한 곳에 압축을 해제한 후, Konsole에서 ``` sudo sh zram_enabler.sh ``` 을 입력합니다.<br/>
<br/>

<br/> 

3. type ```1```, and then press Enter. <br/> 
   ```1```을 입력한 다음 엔터를 누르세요. <br/> 

<br/>

![zraminstall](https://github.com/cinornu/zramonsteam35/assets/55832850/beca6714-10fd-416a-b6d4-4f37fba3381a)

<br/>
4. If it was applied successfully, you should see a message like the screenshot above.<br/>
   성공적으로 적용되었다면 위 스크린샷과 같은 메세지가 출력됩니다.<br/>
<br/>

### Uninstall // 제거 방법

![zramuninstall](https://github.com/cinornu/zramonsteam35/assets/55832850/5b0c412f-d63d-460c-99af-39332b79434e)

type ```2```, and then press Enter. <br/>
MUST REBOOT!<br/>
<br/>
```2```를 입력한 후 엔터를 누르세요.<br/>
반드시 기기를 재부팅해야합니다.<br/>
<br/>

### How to check // 확인 방법

![zram](https://github.com/cinornu/zramonsteam35/assets/55832850/f81f1ce3-50d3-4784-ad9e-7038cda8c49a)

In the Konsole, type ```free -h``` or ```swapon -s```. <br/>
If dev/zram0 is mounted, has a capacity of 8388604 and a priority of 100, then it was successfully applied. <br/>
<br/>
Konsole에서 ```free -h``` 혹은 ```swapon -s```를 입력하세요. <br/>
dev/zram0이 마운트 되어있고, 용량이 8388604에 우선 순위가 100이라면 정상적으로 적용된 겁니다. <br/>
<br/>

### Caution! / 주의사항!

##### Never modify these files directly on Windows. The script will malfunction due to the different CR/LF format! <br/>
절대로 윈도우 상에서 해당 파일을 직접 수정하지 마세요. CR/LF 형식이 다르기때문에 스크립트가 오작동합니다! <br/>

<br/>

##### DO NOT USE CryoUtilities!!! <br/>
절대로 크라이오 유틸리티와 혼용하지 마세요!!!
