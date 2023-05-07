# musical-twitterbot
This is repository for several twitter bot projects. 
I made two twitter bots. 

[1] [오늘의 뮤지컬 스케쥴](https://twitter.com/today_perform)  
[2] [지금 공연중인 뮤지컬 알림봇](https://twitter.com/now_performKr)    


## Update 2023-0507

트위터의 API 유료화 정책으로 인해 두 봇의 운영을 종료했다.
오늘의 뮤지컬 스케쥴은 2021년 10월 부터, 지금 공연중인 뮤지컬 알림봇은 2021년 5월 부터 운영을 했다. 
2년 동안 유지보수를 한 봇들의 운영을 종료하게 되어 아쉽고, 추후에 다시 운영할 방안을 고민할 예정이다. 

<br>

![스크린샷 2023-05-07 오후 9 32 11](https://user-images.githubusercontent.com/35620531/236677754-0ce5ded8-066f-432c-8460-a18f5584cf0f.png)


![스크린샷 2023-05-07 오후 9 32 31](https://user-images.githubusercontent.com/35620531/236677771-2c04baa7-ef49-41ff-9824-55c507614706.png)



<br>

Basic system architecutre for the pojects is looking like this.  
![updated_twitter drawio (1)](https://user-images.githubusercontent.com/35620531/137567303-9155675c-932e-4331-8207-701b45f0f76f.png)

<br>
<br>

## [1] 오늘의 뮤지컬 스케쥴
<br>

| Start Date      | 2021-12-25                                          |
|-----------------|-----------------------------------------------------|
| End Date        | 2021-12-25                                          |
| Twitter Account | [@today_perform](https://twitter.com/today_perform) |  

<br> 

### Purpose of Project 
9 months ago, I built 'Now playing performance in Korea Bot' program. But it was only about which musicals are now playing in Korea.  
I wanted to make a musical bot with more information just like casting. Because most of musical fans think casting of the day is the most important part of the performance. They decide getting a ticket or not with casting info. So I built new one. 

<br> 


### development stack
| stack      | info |
|-----------------|------------|
| Backend language       |   python         |
| Backend api | twitter api |  
| Server | Ubuntu 20 |  
| Scheduler | Linux cron job |  

<br>

### Demo Image  
[<img src="https://user-images.githubusercontent.com/35620531/147377250-c05a47f8-c1f7-4630-99ad-1249c005c857.png" width="400"/>](https://user-images.githubusercontent.com/35620531/147377250-c05a47f8-c1f7-4630-99ad-1249c005c857.png)



<br>
<br>


## [2] 지금 공연중인 뮤지컬 알림봇  
<br>

| Start Date      | 2021-03-30 |
|-----------------|------------|
| End Date        | 2021-05-11  |
| Twitter Account | [@now_performKr](https://twitter.com/kr_now_perform) |  

<br>

### Purpose of Project 
I watch musical once per month. Everytime when I reserve tickets, I have to go check which musical is now playing and it's bothering me a little. 
So I thought maybe it will be way easier for me to have a twitter bot about on-going musical in Korea. I also figured that musical and acting are like package because of this, I added acting info too. 

<br> 

### development stack
| stack      | info |
|-----------------|------------|
| Backend language       |   python         |
| Backend api | twitter api |  
| Server | Ubuntu 20 |  
| Scheduler | Linux cron job |  

<br>

### Demo Image 

Sample 1             |  Sample2
:-------------------------:|:-------------------------:
[<img src="https://user-images.githubusercontent.com/35620531/117728880-03125800-b225-11eb-804a-9be3572da1e2.png" width="400"/>](https://user-images.githubusercontent.com/35620531/117728880-03125800-b225-11eb-804a-9be3572da1e2.png) |  [<img src="https://user-images.githubusercontent.com/35620531/177594817-adab7f83-ebb5-482f-83f9-0d8759c26fa3.png" width="400"/>](https://user-images.githubusercontent.com/35620531/177594817-adab7f83-ebb5-482f-83f9-0d8759c26fa3.png)




