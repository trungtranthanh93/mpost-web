package com.cartomat.mpost.v2.domain;

/**
 * @author trung.tran on 9/15/2015.
 */
public class Documents {
    private long terminalId;
    private long docTypeId;
    private String StatementNumber;
    private String name;

    public String getStatementNumber() {
        return StatementNumber;
    }

    public void setStatementNumber(String statementNumber) {
        StatementNumber = statementNumber;
    }

    public long getTerminalId() {
        return terminalId;
    }

    public void setTerminalId(long terminalId) {
        this.terminalId = terminalId;
    }

    public long getDocTypeId() {
        return docTypeId;
    }

    public void setDocTypeId(long docTypeId) {
        this.docTypeId = docTypeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
