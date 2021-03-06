package com.wind.mybatis.pojo;

import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.*;

public class User {
    @Id
    private Long id;

    private String username;

    private String password;

    @Column(name = "auth_type")
    private String authType;

    private String email;

    private String phone;

    @Column(name = "register_date")
    private Date registerDate;

    private Boolean enabled;

    private String role;

    @Column(name = "open_id")
    private String openId;

    @Column(name = "union_id")
    private String unionId;

    @Column(name = "session_key")
    private String sessionKey;

    @Column(name = "nickName")
    private String nickname;

    private Short gender;

    private String language;

    private String city;

    private String province;

    private String country;

    @Column(name = "avatar_url")
    private String avatarUrl;

    @Column(name = "sms_code")
    private String smsCode;

    @Column(name = "sms_time")
    private Date smsTime;

    private BigDecimal money;

    private Short points;

    @Column(name = "vip_level")
    private Short vipLevel;

    /**
     * @return id
     */
    public Long getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return auth_type
     */
    public String getAuthType() {
        return authType;
    }

    /**
     * @param authType
     */
    public void setAuthType(String authType) {
        this.authType = authType;
    }

    /**
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * @return register_date
     */
    public Date getRegisterDate() {
        return registerDate;
    }

    /**
     * @param registerDate
     */
    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    /**
     * @return enabled
     */
    public Boolean getEnabled() {
        return enabled;
    }

    /**
     * @param enabled
     */
    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    /**
     * @return role
     */
    public String getRole() {
        return role;
    }

    /**
     * @param role
     */
    public void setRole(String role) {
        this.role = role;
    }

    /**
     * @return open_id
     */
    public String getOpenId() {
        return openId;
    }

    /**
     * @param openId
     */
    public void setOpenId(String openId) {
        this.openId = openId;
    }

    /**
     * @return union_id
     */
    public String getUnionId() {
        return unionId;
    }

    /**
     * @param unionId
     */
    public void setUnionId(String unionId) {
        this.unionId = unionId;
    }

    /**
     * @return session_key
     */
    public String getSessionKey() {
        return sessionKey;
    }

    /**
     * @param sessionKey
     */
    public void setSessionKey(String sessionKey) {
        this.sessionKey = sessionKey;
    }

    /**
     * @return nickName
     */
    public String getNickname() {
        return nickname;
    }

    /**
     * @param nickname
     */
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    /**
     * @return gender
     */
    public Short getGender() {
        return gender;
    }

    /**
     * @param gender
     */
    public void setGender(Short gender) {
        this.gender = gender;
    }

    /**
     * @return language
     */
    public String getLanguage() {
        return language;
    }

    /**
     * @param language
     */
    public void setLanguage(String language) {
        this.language = language;
    }

    /**
     * @return city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return province
     */
    public String getProvince() {
        return province;
    }

    /**
     * @param province
     */
    public void setProvince(String province) {
        this.province = province;
    }

    /**
     * @return country
     */
    public String getCountry() {
        return country;
    }

    /**
     * @param country
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * @return avatar_url
     */
    public String getAvatarUrl() {
        return avatarUrl;
    }

    /**
     * @param avatarUrl
     */
    public void setAvatarUrl(String avatarUrl) {
        this.avatarUrl = avatarUrl;
    }

    /**
     * @return sms_code
     */
    public String getSmsCode() {
        return smsCode;
    }

    /**
     * @param smsCode
     */
    public void setSmsCode(String smsCode) {
        this.smsCode = smsCode;
    }

    /**
     * @return sms_time
     */
    public Date getSmsTime() {
        return smsTime;
    }

    /**
     * @param smsTime
     */
    public void setSmsTime(Date smsTime) {
        this.smsTime = smsTime;
    }

    /**
     * @return money
     */
    public BigDecimal getMoney() {
        return money;
    }

    /**
     * @param money
     */
    public void setMoney(BigDecimal money) {
        this.money = money;
    }

    /**
     * @return points
     */
    public Short getPoints() {
        return points;
    }

    /**
     * @param points
     */
    public void setPoints(Short points) {
        this.points = points;
    }

    /**
     * @return vip_level
     */
    public Short getVipLevel() {
        return vipLevel;
    }

    /**
     * @param vipLevel
     */
    public void setVipLevel(Short vipLevel) {
        this.vipLevel = vipLevel;
    }
}