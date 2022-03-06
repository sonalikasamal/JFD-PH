<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org"
      xmlns:sec="https://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
    <head>
        <title>Login</title>
        <style>
	input[type=text], input[type=password] {
		width: 100%;
		padding: 12px 20px;
		margin: 8px 0;
		display: inline-block;
		border: 1px solid #ccc;
		border-radius: 5px;
		box-sizing: border-box;
	}
	input[type=submit] {
		width: 100%;
		background-color: coral;
		color: white;
		padding: 12px 20px;
		border: none;
		border-radius: 5px;
		cursor: pointer;
		text-decoration: none;
		margin: 8px 0;
	}
	div {
		border-radius: 5px;
		background-color: #f2f2f2;
		padding: 20px;
		max-width: 300px;
		margin: auto;
	}
</style>
    </head>
    <body>
    <div>
        <section th:if="${param.error}">
            Invalid username or password.
        </section>
        <section th:if="${param.logout}">
            You have been logged out.
        </section>
        <form th:action="@{/login}" method="post">
            <label>User Name : </label><input type="text" name="username"/>
            <label>Password: </label><input type="password" name="password"/>
            <input type="submit" value="Sign In"/>
        </form>
        
        <a href="/">Return to Main Page</a>
       </div>
    </body>
</html>