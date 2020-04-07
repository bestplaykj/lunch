package lunch.sitemesh;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

/**
 * custom sitemesh filter
 * @author bestplaykj
 */
public class SitemeshFilter extends ConfigurableSiteMeshFilter {
    
    /**
     * customer / admin / 공통 페이지 별 각각의 decorator 적용
     */
    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        builder.addDecoratorPath("/*", "/WEB-INF/decorator/frontdeco.jsp").addDecoratorPath("/admin/*", "/WEB-INF/decorator/admindeco.jsp").addExcludedPath("/member/signInOut/**");
    }
    
}
