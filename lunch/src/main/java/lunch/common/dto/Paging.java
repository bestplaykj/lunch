package lunch.common.dto;

import lombok.Data;

@Data
public class Paging {
    
    private Integer totalPages;
    
    private Integer currPage;
    
    private Integer limit;
    
    private Integer totalCount;
    
    
    
}
