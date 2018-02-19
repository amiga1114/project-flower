## Project flower

### 2018.02.16 수정사항

1. 꽃다발, 꽃바구니, 화분, 기타 index 페이지 추가

   - 꽃다발 -> bouguet, path: posts/buguet
   - 꽃바구니 -> flowerbasket, path: posts/flowerbasket
   - 화분 -> flowerpot, path: posts/flowerpot
   - 기타 -> floweretc, path: posts/floweretc

2. posts DB에 flowertype 컬럼 추가

   - rails g migration add_flowertype_to_posts flowertype:string 
   - flowertype으로 꽃다발, 꽃바구니, 화분, 기타를 선택하여 값을 전달해주기 위해 새로 추가함
   - 이후 선택된 값을 조건문으로 검사하여 꽃다발, 꽃바구니, 화분, 기타 등 각 페이지에 원하는 게시글만 보여주기.

3. 꽃다발, 꽃바구니, 화분 ,기타 페이지에서 원하는 게시글 보여주기

   - posts에서 모든 게시물을 가져온 후 flowertype에 해당하는 값들만 조건문으로 검사 후 view에 출력한다.


   - 꽃다발 페이지 

   ```html
   <!-- posts의 모든 게시물을 가져온 후 -->
   <% @posts.each do |post| %>
     <!-- flowertype가 bouquet 값을 가지고 있는 게시물만 검사하여 보여주기.-->
     <% if post.flowertype == 'bouquet' %>
   		...출력...
      <% end %>
   <% end %>
   ```

   - 꽃바구니 페이지 

   ```html
   <!-- posts의 모든 게시물을 가져온 후 -->
   <% @posts.each do |post| %>
     <!-- flowertype가 flowerbasket 값을 가지고 있는 게시물만 검사하여 보여주기.-->
     <% if post.flowertype == 'flowerbasket' %>
   		...출력...
      <% end %>
   <% end %>
   ```

   - 화분 페이지

   ```html
   <!-- posts의 모든 게시물을 가져온 후 -->
   <% @posts.each do |post| %>
     <!-- flowertype가 flowerpot 값을 가지고 있는 게시물만 검사하여 보여주기.-->
     <% if post.flowertype == 'flowerpot' %>
   		...출력...
      <% end %>
   <% end %>
   ```

   - 기타 페이지

   ```html
   <!-- posts의 모든 게시물을 가져온 후 -->
   <% @posts.each do |post| %>
     <!-- flowertype가 floweretc 값을 가지고 있는 게시물만 검사하여 보여주기.-->
     <% if post.flowertype == 'floweretc' %>
   		...출력...
      <% end %>
   <% end %>
   ```

4.  nav 버튼 리스트 url 설정

   - url 설정

   ```html
   <li>
     <a href="#">May Flower</a>
     <ul>
       <li><a href="#">May Flower 소개</a></li>
       <li><a href="/posts/bouquet">꽃다발</a></li>
       <li><a href="/posts/flowerbasket">꽃바구니</a></li>
       <li><a href="/posts/flowerpot">화분</a></li>
       <li><a href="/posts/floweretc">기타</a></li>
     </ul>
   </li>
   ```

   ​