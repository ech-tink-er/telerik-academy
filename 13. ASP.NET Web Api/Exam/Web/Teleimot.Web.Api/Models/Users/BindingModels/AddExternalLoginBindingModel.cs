﻿namespace Teleimot.Web.Api.Models.Users
{
	using System.ComponentModel.DataAnnotations;

	public class AddExternalLoginBindingModel
	{
		[Required]
		[Display(Name = "External access token")]
		public string ExternalAccessToken { get; set; }
	}
}