package util;

public class PagingUtil {

   public static String pagingImg(int totalRecordCount,
         int pageSize, int blockPage, int nowPage, String pageName) {
      
      
      String pagingStr ="";
      
      int totalPage =            //121 / 10  = 13
            (int)(Math.ceil(((double)totalRecordCount/pageSize))); //totalPage (where절 레코드수/ 
               //   1
            int intTemp = (((nowPage-1)/blockPage)* blockPage) + 1;
               
            
            //무조건 1페이지로 가도록 하는곳 
            if(intTemp != 1) {
               
               /*<li class="page-item">
               <a href="#" class="page-link">
                  <i class="fas fa-angle-double-left"></i>
               </a>
               </li>*/
               /*
  pagingStr:<a href= /K07JSPSevlet/DataRoom/DataList?searchColumn=content&searchWord=제목3 nowPage = 1> 
                */
               pagingStr += ""
                     + "<a href='"+pageName+"nowPage=1'>"
                     + " <img src='../images/paging1.gif'></a>";
               pagingStr += "&nbsp;";
               pagingStr += ""
                     + "<a href='"+pageName+"nowPage="+
                              (intTemp-blockPage)+"'>"
                                    + "<img src='../images/paging2.gif'></a>";
               
                        
            } 
            
            int blockCount =1;
            //ex)2 페이지
            //1 <= 5(5개씩 나오게하고) and 2 <= 13(13페이지까지 나옴)
            while(blockCount<=blockPage && intTemp<=totalPage)
            {
               
               // 2 == 누른페이지
               if(intTemp==nowPage) { //1일떄만 입장? &nbsp 1 &nbsp
                  pagingStr += "&nbsp;"+ intTemp + "&nbsp";
                  
               }else {
                  pagingStr += "&nbsp;<a href='"+pageName
                        +"nowPage="+intTemp+"'>"+
                        intTemp+"</a>&nbsp;";
                  
                        
               }
               intTemp++;
               blockCount++;
               
               
            }
            if(intTemp<= totalPage) {
               pagingStr +="<a href='"+pageName + "nowPage="+
            intTemp+"'>"
            +"<img src='../images/paging3.gif'></a>";
               pagingStr += "&nbsp;";
               pagingStr += "<a href='"+pageName+"nowPage="+
               totalPage+"'>"
                     + "<img src='../images/paging4.gif'></a>";
            }
      return pagingStr;
   }
                        //where절 레코드 수 /         10 /           5 /      버튼 1~5 /   ..ListCtrl + 내용/제목  
   public static String pagingBS4(int totalRecordCount,
            int pageSize, int blockPage, int nowPage, String pageName) {
         
         String pagingStr = "";

         int totalPage =   (int)(Math.ceil(((double)totalRecordCount/pageSize)));
         //System.out.println(totalPage);
         
         int intTemp = (((nowPage-1) / blockPage) * blockPage) + 1;
         //System.out.println(intTemp);
         
         if(intTemp != 1) {
            //첫페이지로
            pagingStr += "<li class='page-item'><a href='"+pageName+"nowPage=1' class='page-link'><i class='fas fa-angle-double-left'></i></a></li>";
            //이전블록으로
            pagingStr += "<li class='page-item'><a href='"+pageName+"nowPage="+(intTemp-1)+"' class='page-link'><i class='fas fa-angle-left'></i></a></li>";
         }

         int blockCount = 1;
         while(blockCount<=blockPage && intTemp<=totalPage)
         {
            //페이지 바로가기
            if(intTemp==nowPage) {
               //현재페이지인경우
               pagingStr += "<li class='page-item active'><a href='#' class='page-link'>"+intTemp+"</a></li>";
            }
            else {
               //현재페이지가 아닌경우
               pagingStr += "<li class='page-item'><a href='"+pageName+"nowPage="+intTemp+"' class='page-link'>"+intTemp+"</a></li>";
            }
            intTemp++;
            blockCount++;
         }

         if(intTemp <= totalPage) {
            //다음 페이지 블록으로
            pagingStr += "<li class='page-item'><a href='"+pageName+"nowPage="+intTemp+"' class='page-link'><i class='fas fa-angle-right'></i></a></li>";
            
            //마지막 페이지로..
            pagingStr += "<li class='page-item'><a href='"+pageName+"nowPage="+totalPage+"' class='page-link'><i class='fas fa-angle-double-right'></i></a></li>";
         }

         return pagingStr;
      }
}
