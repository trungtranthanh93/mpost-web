package com.cartomat.mpost.v2.service;

import com.cartomat.mpost.v2.domain.ClosedConvention;
import com.cartomat.mpost.v2.domain.Terminal;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public interface TerminalService {
    boolean createTerminal(Terminal terminal);

    boolean closeConvention(ClosedConvention convention);
}
