package lunch.common.util;

import lunch.common.dto.PagingDto;

/**
 * 페이징 처리를 위한 클래스
 * @author bestplaykj
 */
public class Paging {
    
    /**
     * 페이징 계산
     * @param totalCount
     * @param limit
     * @return
     */
    public PagingDto calculatePaging(int totalCount, int limit) {
        PagingDto paging = new PagingDto();
        int totalPages = totalCount / limit;
        if (totalCount % limit != 0) {
            totalPages += 1;
        }
        
        paging.setLimit(limit);
        paging.setTotalCount(totalCount);
        paging.setTotalPages(totalPages);
        
        if (paging.getCurrPage() == null) { 
            paging.setCurrPage(1);
        } else {
            paging.setCurrPage(paging.getCurrPage());
        }
        
        return paging;
    }
    
}
