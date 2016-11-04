/**
 * Copyright 2010-2014 Hippo B.V. (http://www.onehippo.com)
 */

package com.onehippo.gogreen.exceptions;

/**
 * This exception can be thrown when, for example, a hippo bean is of the wrong type. 
 * The PageErrorHandler can react upon this exception.
 */
public class BeanTypeException extends ContentRelatedException {

    private static final long serialVersionUID = 1L;

    /**
     * Constructs a new BeanTypeException exception with the given message. 
     *
     * @param   message
     *          the exception message
     */
    public BeanTypeException(String message) {
        super(message);
    }

}
