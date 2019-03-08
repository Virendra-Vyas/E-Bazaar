using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for product_images_model
/// </summary>
public class product_images_model
{
	public product_images_model()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int product_image_id { get; set; }
    public int product_id { get; set; }
    public string product_secondary_image { get; set; }
    public Boolean product_image_status { get; set; }

}