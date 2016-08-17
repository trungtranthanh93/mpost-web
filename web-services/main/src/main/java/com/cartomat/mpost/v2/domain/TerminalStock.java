package com.cartomat.mpost.v2.domain;

/**
 * @author tuananh.nguyen@cartomat.com
 */
public class TerminalStock {
    private String macAddress;
    private String serialNumber;
    private String simSerialNum;
    private long telcoSupplierId;
    private String simPhoneNumber;

    public String getMacAddress() {
        return macAddress;
    }

    public void setMacAddress(String macAddress) {
        this.macAddress = macAddress;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public String getSimSerialNum() {
        return simSerialNum;
    }

    public void setSimSerialNum(String simSerialNum) {
        this.simSerialNum = simSerialNum;
    }

    public long getTelcoSupplierId() {
        return telcoSupplierId;
    }

    public void setTelcoSupplierId(long telcoSupplierId) {
        this.telcoSupplierId = telcoSupplierId;
    }

    public String getSimPhoneNumber() {
        return simPhoneNumber;
    }

    public void setSimPhoneNumber(String simPhoneNumber) {
        this.simPhoneNumber = simPhoneNumber;
    }
}
