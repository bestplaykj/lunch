package lunch.common.dto;

import lombok.Data;

/**
 * 페이징 처리를 위한 모델
 * @author bestplaykj
 */
@Data
public class PagingDto {
    
    /** 전체 페이지 수 */
    private Integer totalPages;
    
    /** 요청 시 현재 페이지 번호 */
    private Integer currPage;
    
    /** select 단위 */
    private Integer limit;
    
    /** 전체 row 수 */
    private Integer totalCount;
    
}
