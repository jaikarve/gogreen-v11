/**
 * Copyright 2010-2013 Hippo B.V. (http://www.onehippo.com)
 */

package com.onehippo.gogreen.beans.compound;

import org.hippoecm.hst.content.beans.Node;
import org.hippoecm.hst.content.beans.standard.HippoItem;

/**
 * Bean mapping class for the 'hippogogreen:address' document type
 */
@Node(jcrType = "hippogogreen:address")
public class Address extends HippoItem {
    public String getStreet() {
        return getProperty("hippogogreen:street");
    }

    public String getNumber() {
        return getProperty("hippogogreen:number");
    }

    public String getCity() {
        return getProperty("hippogogreen:city");
    }

    public String getPostalCode() {
        return getProperty("hippogogreen:postalcode");
    }

    public String getProvince() {
        return getProperty("hippogogreen:province");
    }

    public String getCountry() {
        return getProperty("hippogogreen:country");
    }

    public String getTelephone() {
        return getProperty("hippogogreen:telephone");
    }

    public String getFax() {
        return getProperty("hippogogreen:fax");
    }

    public String getEmail() {
        return getProperty("hippogogreen:email");
    }

    public String getWebsite() {
        return getProperty("hippogogreen:website");
    }

    public String getOptionalText() {
        return getProperty("hippogogreen:optionalText");
    }

    public Double getLatitude() {
        return getProperty("hippogogreen:latitude");
    }

    public Double getLongitude() {
        return getProperty("hippogogreen:longitude");
    }
}
