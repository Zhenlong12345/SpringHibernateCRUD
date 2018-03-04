<div class="container">

			<div class="row" style="margin-top: 25px;">
				<div class="col-lg-12">
					<!-- FORM ELEMENTS -->
					<c:if test="${userClicknew==true}">
						<div class="row">
							<div class="col-md-12">
								<form class="form-horizontal"
									action="${contextRoot}/save" method="POST">
									
									<div class="form-group">
										<label class="control-label col-md-4" for="name">
											Name: </label>
										<div class="col-md-8">
											<input type="text" name="name" id="name"
												placeholder="name" class="form-control" />
										</div>
									</div>
									
									<div class="form-group">
										<label class="control-label col-md-4" for="country">country</label>
										<div class="col-md-8">
											<input type="text" name="country"
												placeholder="country" class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-8">
											<input type="submit" name="submit" id="submit" value="Create"
												class="btn btn-primary" />
										</div>
									</div>
								</form>
							</div>
						</div>
					</c:if>
					<c:if test="${userClickupdate==true}">
						<div class="row">
							<div class="col-md-12">
								<form class="form-horizontal"
									action="${contextRoot}/employee/save" method="POST"
									enctype="multipart/form-data">
									<div class="form-group">
										<label class="control-label col-md-4" for="first_name">First
											Name: </label>
										<div class="col-md-8">
											<input type="text" name="first_name" id="first_name"
												placeholder="first_name" class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-4" for="last_name">Last
											Name: </label>
										<div class="col-md-8">
											<input type="text" name="last_name" id="last_name"
												placeholder="last_name" class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-4">Email Address</label>
										<div class="col-md-8">
											<input type="email" name="email" placeholder="john@email.com"
												class="form-control" />
										</div>
									</div>

									<div class="form-group">
										<label class="control-label col-md-4">Password</label>
										<div class="col-md-8">
											<input type="password" name="password" placeholder="password"
												class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-4">Contact Number</label>
										<div class="col-md-8">
											<input type="text" name="contact_number"
												placeholder="XXXXXXXX" class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-4" for="position_title">Position
											Title</label>
										<div class="col-md-8">
											<input type="text" name="position_title"
												placeholder="java developer" class="form-control" />
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-4" for="supervisor_id">Select
											Supervisor: </label>
										<div class="col-md-8">
											<select class="form-control" id="supervisor_id"
												name="supervisor_id">
												<c:forEach items="${supervisorList}" var="sl">
													<option value="${sl.id }">${sl.name}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-4">Is Supervisor:</label>
										<div class="col-md-8">
											<label class="radio-inline"> <input type="radio"
												name="role" value="1" />YES
											</label> <label class="radio-inline"> <input type="radio"
												name="role" value="0" />NO
											</label>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-8">
											<input type="submit" name="submit" id="submit" value="Create"
												class="btn btn-primary" />
										</div>

									</div>
									<div>
										<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token}" />
									</div>

								</form>
							</div>
						</div>
					</c:if>
				</div>
			</div>
</div>