
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%><%-- 
<link rel="stylesheet" href="${css}/animate.css"> --%>


	<!--  Panel for Sign Up form ---->

	<div class="col-sm-6 ">
		<div class="panel panel-success" id="panelSignUp">
			<div class="panel-heading" id="panel-headingSignUp">Sign Up</div>
			<div class="panel-body">
				<form:form class="form-horizontal" role="form" method="post"
					modelAttribute="customer" action="${contextPath}/login?registered">
					<div class="form-group">
						<label class="control-label col-sm-2" for="reemail">Email</label>
						<div class="col-sm-10">
							<form:input path="username" type="email" class="form-control"
								id="reemail" placeholder="Enter email" required="true"
								name="reEmail" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="rephone">Phone
							No</label>
						<div class="col-sm-10">
							<form:input path="phoneNo" type="text" class="form-control"
								pattern="^\d{10}$" title="Enter 10 digit mobile number"
								id="rephone" name="rePhone" placeholder="Enter Contact Number" 
								required="true" />
						</div>
					</div>
					<div class="form-group ">
						<label for="gender" class="control-label col-sm-2">Gender</label>
						<div class="col-sm-offset-1 col-sm-9">
							<label for="maleGender" class="radio-inline  label-control"><form:radiobutton
									path="gender" name="gender" id="maleGender" value="male" required="true" />Male</label>
							<label for="femaleGender" class="radio-inline label-control">
								<form:radiobutton path="gender" name="gender" value="female" id="femaleGender"
									required="true" />Female
							</label>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" for="repwd">Password</label>
						<div class="col-sm-10">
							<form:input path="password" type="password" class="form-control"
								id="repwd" placeholder="Enter password" required="true" 
								name="rePass" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="reconpwd">Confirm
							Password</label>
						<div class="col-sm-10">
							<input type="password" id="reconpwd" class="form-control"
								placeholder="Confirm Password" required>
						</div>
					</div>
					<input type="submit" value="Sign Up"
						class="col-sm-offset-2 btn btn-success btn-md">
				</form:form>
			</div>
			<!-- <div class="panel-footer">this is  a footer</div> -->
		</div>
	</div>
	<!--signup col -->


</div>
