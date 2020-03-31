package lunch.sitemesh;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;

public class SitemeshFilter extends ConfigurableSiteMeshFilter {
    
    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        builder.addDecoratorPath("/*", "/WEB-INF/decorator/frontdeco.jsp").addDecoratorPath("/admin/*", "/WEB-INF/decorator/admindeco.jsp").addExcludedPath("/member/signInOut/**");
    }
    
}
