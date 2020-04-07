<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body>
    <div class="page-404">
        <p class="text-404">x_x</p>
        <p>
            Something went wrong or that page doesn’t exist yet.<br>
            Page will be redirected in a few seconds.
        </p>
    </div>
<script type="text/javascript">
$(document).ready(function() {
    setInterval(function() {
        history.back();
    }, 5000);
});
</script>
</body>