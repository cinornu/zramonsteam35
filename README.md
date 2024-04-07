# zram enabler on SteamOS 3.5
---------
#### This document is written using a translator, so please excuse any awkwardness.
---------
<br/><br/>
##### This script is written for users who are unable to use version 3.6 due to a bug, but still want to use zram.<br/>
이 스크립트는 버그로 인해 3.6 버전을 이용할 수는 없지만, zram을 사용하고 싶어하는 유저들을 위해 작성되었습니다.<br/>
<br/>
##### Works fine on SteamOS 3.5.7<br/>
스팀OS 3.5.7에서 정상 작동하는 것을 확인했습니다.<br/>
<br/>
##### This script installs the rc.local-service and copies rc.local, which contains the zram setup script, to /etc.<br/>
이 스크립트는 rc.local-service를 설치하고, zram 설정 스크립트가 내장된 rc.local을 /etc에 복사합니다.<br/>
<br/>
### How to Use / 사용법 : 

![zram1](https://github.com/cinornu/zramonsteam35/assets/55832850/1c72d5ae-8e04-426f-ae76-27541a9c99d2)

1. Code > Download ZIP to download the repo.<br/>
   Code > Download ZIP 을 눌러 파일을 다운로드 받습니다.<br/>

2. After unzipping it to a suitable location, run the following in the Konsole
``` sudo sh zram_enabler.sh ```
in the Konsole.<br/>
   적당한 곳에 압축을 해제한 후, Konsole에서
``` sudo sh zram_enabler.sh ```
을 입력합니다.<br/>
<br/>

![zram](https://github.com/cinornu/zramonsteam35/assets/55832850/45b4267f-b873-4be7-96e5-371acdb1e862)

<br/>
3. If it was applied successfully, you should see a message like the screenshot above.<br/>
   성공적으로 적용되었다면 위 스크린샷과 같은 메세지가 출력됩니다.<br/>
<br/>

### Caution! / 주의사항!

##### Never modify these files directly on Windows. The script will malfunction due to the different CR/LF format! <br/>
절대로 윈도우 상에서 해당 파일을 직접 수정하지 마세요. CR/LF 형식이 다르기때문에 스크립트가 오작동합니다! <br/>
